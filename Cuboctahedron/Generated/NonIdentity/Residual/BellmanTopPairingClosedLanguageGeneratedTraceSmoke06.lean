import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke06

open Cuboctahedron

private def generated06ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.zp, Face.zm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated06ContributionLabels_length :
    generated06ContributionLabels.length = 14 := by
  rfl

private theorem generated06ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated06ContributionLabels := by
  unfold generated06ContributionLabels
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

private theorem generated06ScheduleLabels :
    TopPairingStepScheduleLabels generated06ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated06ContributionLabels_length generated06ScheduleTrace

private theorem generated06SquareGapTrace :
    TopPairingSquareGapFrom 0 generated06ContributionLabels := by
  unfold generated06ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated06SquareGapLabels :
    TopPairingSquareGapLabels generated06ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated06SquareGapTrace

private theorem generated06LocalAxisTraceOfGeneratedStates
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
      dot (matVec m09 (normalQ Face.tmpm))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tmpm)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.tppp))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.tppp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated06ContributionLabels := by
  unfold generated06ContributionLabels
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

def generated06ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.zp
  | ⟨9, _⟩ => Face.zm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated06ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated06ForcedSeq = generated06ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated06ForcedSeq generated06ContributionLabels
  rfl

def generated06Rank : Fin numPairWords :=
  ⟨42943, by decide⟩

private theorem generated06ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated06ForcedSeq) = some generated06Rank := by
  decide

private theorem generated06ForcedSeq_unrank_pairword :
    unrankPairWord generated06Rank = pairWordOfSeq generated06ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated06ForcedSeq)
      generated06Rank).1 generated06ForcedSeq_rank).symm

private theorem generated06ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated06Rank) generated06ForcedSeq := by
  rw [generated06ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated06ForcedSeq

private theorem generated06TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated06Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated06ForcedSeq_unrank_pairword]
  rfl

private theorem generated06CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated06M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated06M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated06M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated06M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated06M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated06M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated06M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated06M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (64/81), m10 := (-8/81), m11 := (-79/81), m12 := (-16/81), m20 := (64/81), m21 := (-16/81), m22 := (47/81) }

private def generated06M09 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated06M10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated06M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated06M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated06M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated06M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated06V00 : Rat :=
  1

private def generated06V01 : Rat :=
  1

private def generated06V02 : Rat :=
  1

private def generated06V03 : Rat :=
  3

private def generated06V04 : Rat :=
  3

private def generated06V05 : Rat :=
  3

private def generated06V06 : Rat :=
  1

private def generated06V07 : Rat :=
  (7/3)

private def generated06V08 : Rat :=
  (7/3)

private def generated06V09 : Rat :=
  1

private def generated06V10 : Rat :=
  3

private def generated06V11 : Rat :=
  3

private def generated06V12 : Rat :=
  3

private def generated06V13 : Rat :=
  1

private theorem generated06Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated06V00 := by
  norm_num [generated06V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos00 :
    0 < generated06V00 := by
  norm_num [generated06V00]

private theorem generated06Hnext00 :
    generated06M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated06M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot01 :
    dot (matVec generated06M01 (normalQ Face.ym))
      topPairingLocalAxis = generated06V01 := by
  norm_num [generated06V01, generated06M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos01 :
    0 < generated06V01 := by
  norm_num [generated06V01]

private theorem generated06Hnext01 :
    generated06M02 = matMul generated06M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated06M02, generated06M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot02 :
    dot (matVec generated06M02 (normalQ Face.yp))
      topPairingLocalAxis = generated06V02 := by
  norm_num [generated06V02, generated06M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos02 :
    0 < generated06V02 := by
  norm_num [generated06V02]

private theorem generated06Hnext02 :
    generated06M03 = matMul generated06M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated06M03, generated06M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot03 :
    dot (matVec generated06M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated06V03 := by
  norm_num [generated06V03, generated06M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos03 :
    0 < generated06V03 := by
  norm_num [generated06V03]

private theorem generated06Hnext03 :
    generated06M04 = matMul generated06M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated06M04, generated06M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot04 :
    dot (matVec generated06M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated06V04 := by
  norm_num [generated06V04, generated06M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos04 :
    0 < generated06V04 := by
  norm_num [generated06V04]

private theorem generated06Hnext04 :
    generated06M05 = matMul generated06M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated06M05, generated06M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot05 :
    dot (matVec generated06M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated06V05 := by
  norm_num [generated06V05, generated06M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos05 :
    0 < generated06V05 := by
  norm_num [generated06V05]

private theorem generated06Hnext05 :
    generated06M06 = matMul generated06M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated06M06, generated06M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot06 :
    dot (matVec generated06M06 (normalQ Face.tpmp))
      topPairingLocalAxis = generated06V06 := by
  norm_num [generated06V06, generated06M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos06 :
    0 < generated06V06 := by
  norm_num [generated06V06]

private theorem generated06Hnext06 :
    generated06M07 = matMul generated06M06 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated06M07, generated06M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot07 :
    dot (matVec generated06M07 (normalQ Face.zp))
      topPairingLocalAxis = generated06V07 := by
  norm_num [generated06V07, generated06M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos07 :
    0 < generated06V07 := by
  norm_num [generated06V07]

private theorem generated06Hnext07 :
    generated06M08 = matMul generated06M07 (reflM (normalQ Face.zp)) := by
  norm_num [generated06M08, generated06M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot08 :
    dot (matVec generated06M08 (normalQ Face.zm))
      topPairingLocalAxis = generated06V08 := by
  norm_num [generated06V08, generated06M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos08 :
    0 < generated06V08 := by
  norm_num [generated06V08]

private theorem generated06Hnext08 :
    generated06M09 = matMul generated06M08 (reflM (normalQ Face.zm)) := by
  norm_num [generated06M09, generated06M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot09 :
    dot (matVec generated06M09 (normalQ Face.tmpm))
      topPairingLocalAxis = generated06V09 := by
  norm_num [generated06V09, generated06M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos09 :
    0 < generated06V09 := by
  norm_num [generated06V09]

private theorem generated06Hnext09 :
    generated06M10 = matMul generated06M09 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated06M10, generated06M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot10 :
    dot (matVec generated06M10 (normalQ Face.tppp))
      topPairingLocalAxis = generated06V10 := by
  norm_num [generated06V10, generated06M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos10 :
    0 < generated06V10 := by
  norm_num [generated06V10]

private theorem generated06Hnext10 :
    generated06M11 = matMul generated06M10 (reflM (normalQ Face.tppp)) := by
  norm_num [generated06M11, generated06M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot11 :
    dot (matVec generated06M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated06V11 := by
  norm_num [generated06V11, generated06M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos11 :
    0 < generated06V11 := by
  norm_num [generated06V11]

private theorem generated06Hnext11 :
    generated06M12 = matMul generated06M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated06M12, generated06M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot12 :
    dot (matVec generated06M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated06V12 := by
  norm_num [generated06V12, generated06M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos12 :
    0 < generated06V12 := by
  norm_num [generated06V12]

private theorem generated06Hnext12 :
    generated06M13 = matMul generated06M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated06M13, generated06M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06Hdot13 :
    dot (matVec generated06M13 (normalQ Face.xp))
      topPairingLocalAxis = generated06V13 := by
  norm_num [generated06V13, generated06M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated06Hpos13 :
    0 < generated06V13 := by
  norm_num [generated06V13]

private theorem generated06Hnext13 :
    generated06M14 = matMul generated06M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated06M14, generated06M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated06LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated06ContributionLabels :=
  generated06LocalAxisTraceOfGeneratedStates
    generated06Hdot00
    generated06Hpos00
    generated06Hnext00
    generated06Hdot01
    generated06Hpos01
    generated06Hnext01
    generated06Hdot02
    generated06Hpos02
    generated06Hnext02
    generated06Hdot03
    generated06Hpos03
    generated06Hnext03
    generated06Hdot04
    generated06Hpos04
    generated06Hnext04
    generated06Hdot05
    generated06Hpos05
    generated06Hnext05
    generated06Hdot06
    generated06Hpos06
    generated06Hnext06
    generated06Hdot07
    generated06Hpos07
    generated06Hnext07
    generated06Hdot08
    generated06Hpos08
    generated06Hnext08
    generated06Hdot09
    generated06Hpos09
    generated06Hnext09
    generated06Hdot10
    generated06Hpos10
    generated06Hnext10
    generated06Hdot11
    generated06Hpos11
    generated06Hnext11
    generated06Hdot12
    generated06Hpos12
    generated06Hnext12
    generated06Hdot13
    generated06Hpos13
    generated06Hnext13


theorem generated06ClosedLanguageOfPositiveTemplateTrace
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
        generated06ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated06ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated06ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated06SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated06ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated06ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated06ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated06ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated06SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated06ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated06ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated06ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated06SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated06ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated06ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated06ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated06ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated06ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated06ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated06ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated06ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated06ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated06ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated06LocalAxisTraceConcrete
    canonicalBadFace

theorem generated06ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated06ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated06ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated06LocalAxisTraceConcrete
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated06ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated06ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated06LocalAxisTraceConcrete
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated06ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated06ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated06LocalAxisTraceConcrete
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated06ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated06ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated06LocalAxisTraceConcrete
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated06ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated06ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated06ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated06ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated06Rank generated06ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated06Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated06Rank seq badFace :=
  generated06ClosedLanguageForSeqOfGeneratedForcedSeq
    generated06ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated06ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated06Rank generated06ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated06Rank) :
    TopPairingClosedLanguageForSeq generated06Rank seq Face.ym :=
  generated06ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated06CanonicalBadFaceCompatible

theorem generated06ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated06Rank generated06ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated06Rank seq Face.ym :=
  generated06ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated06TopPairingLanguageAtRank

theorem generated06GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke06
