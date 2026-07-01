import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke13

open Cuboctahedron

private def generated13ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated13ContributionLabels_length :
    generated13ContributionLabels.length = 14 := by
  rfl

private theorem generated13ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated13ContributionLabels := by
  unfold generated13ContributionLabels
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

private theorem generated13ScheduleLabels :
    TopPairingStepScheduleLabels generated13ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated13ContributionLabels_length generated13ScheduleTrace

private theorem generated13SquareGapTrace :
    TopPairingSquareGapFrom 0 generated13ContributionLabels := by
  unfold generated13ContributionLabels
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
  exact topPairingSquareGapFrom_nil

private theorem generated13SquareGapLabels :
    TopPairingSquareGapLabels generated13ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated13SquareGapTrace

private theorem generated13LocalAxisTraceOfGeneratedStates
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
      dot (matVec m03 (normalQ Face.zp))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.zp)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.yp))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.yp)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.tmmm))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.tmmm)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tpmm))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tpmm)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.tppm))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tppm)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.tpmp))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tpmp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated13ContributionLabels := by
  unfold generated13ContributionLabels
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

def generated13ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.zm
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.yp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated13ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated13ForcedSeq = generated13ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated13ForcedSeq generated13ContributionLabels
  rfl

def generated13Rank : Fin numPairWords :=
  ⟨136597, by decide⟩

private theorem generated13ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated13ForcedSeq) = some generated13Rank := by
  decide

private theorem generated13ForcedSeq_unrank_pairword :
    unrankPairWord generated13Rank = pairWordOfSeq generated13ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated13ForcedSeq)
      generated13Rank).1 generated13ForcedSeq_rank).symm

private theorem generated13ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated13Rank) generated13ForcedSeq := by
  rw [generated13ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated13ForcedSeq

private theorem generated13TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated13Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated13ForcedSeq_unrank_pairword]
  rfl

private theorem generated13CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated13M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated13M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated13M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated13M04 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated13M05 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated13M06 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated13M07 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated13M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated13M09 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated13M10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated13M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated13M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated13M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated13M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated13V00 : Rat :=
  1

private def generated13V01 : Rat :=
  1

private def generated13V02 : Rat :=
  3

private def generated13V03 : Rat :=
  3

private def generated13V04 : Rat :=
  1

private def generated13V05 : Rat :=
  3

private def generated13V06 : Rat :=
  3

private def generated13V07 : Rat :=
  3

private def generated13V08 : Rat :=
  1

private def generated13V09 : Rat :=
  1

private def generated13V10 : Rat :=
  3

private def generated13V11 : Rat :=
  3

private def generated13V12 : Rat :=
  3

private def generated13V13 : Rat :=
  1

private theorem generated13Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated13V00 := by
  norm_num [generated13V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos00 :
    0 < generated13V00 := by
  norm_num [generated13V00]

private theorem generated13Hnext00 :
    generated13M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated13M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot01 :
    dot (matVec generated13M01 (normalQ Face.ym))
      topPairingLocalAxis = generated13V01 := by
  norm_num [generated13V01, generated13M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos01 :
    0 < generated13V01 := by
  norm_num [generated13V01]

private theorem generated13Hnext01 :
    generated13M02 = matMul generated13M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated13M02, generated13M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot02 :
    dot (matVec generated13M02 (normalQ Face.zm))
      topPairingLocalAxis = generated13V02 := by
  norm_num [generated13V02, generated13M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos02 :
    0 < generated13V02 := by
  norm_num [generated13V02]

private theorem generated13Hnext02 :
    generated13M03 = matMul generated13M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated13M03, generated13M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot03 :
    dot (matVec generated13M03 (normalQ Face.zp))
      topPairingLocalAxis = generated13V03 := by
  norm_num [generated13V03, generated13M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos03 :
    0 < generated13V03 := by
  norm_num [generated13V03]

private theorem generated13Hnext03 :
    generated13M04 = matMul generated13M03 (reflM (normalQ Face.zp)) := by
  norm_num [generated13M04, generated13M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot04 :
    dot (matVec generated13M04 (normalQ Face.yp))
      topPairingLocalAxis = generated13V04 := by
  norm_num [generated13V04, generated13M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos04 :
    0 < generated13V04 := by
  norm_num [generated13V04]

private theorem generated13Hnext04 :
    generated13M05 = matMul generated13M04 (reflM (normalQ Face.yp)) := by
  norm_num [generated13M05, generated13M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot05 :
    dot (matVec generated13M05 (normalQ Face.tmmm))
      topPairingLocalAxis = generated13V05 := by
  norm_num [generated13V05, generated13M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos05 :
    0 < generated13V05 := by
  norm_num [generated13V05]

private theorem generated13Hnext05 :
    generated13M06 = matMul generated13M05 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated13M06, generated13M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot06 :
    dot (matVec generated13M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated13V06 := by
  norm_num [generated13V06, generated13M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos06 :
    0 < generated13V06 := by
  norm_num [generated13V06]

private theorem generated13Hnext06 :
    generated13M07 = matMul generated13M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated13M07, generated13M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot07 :
    dot (matVec generated13M07 (normalQ Face.tppm))
      topPairingLocalAxis = generated13V07 := by
  norm_num [generated13V07, generated13M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos07 :
    0 < generated13V07 := by
  norm_num [generated13V07]

private theorem generated13Hnext07 :
    generated13M08 = matMul generated13M07 (reflM (normalQ Face.tppm)) := by
  norm_num [generated13M08, generated13M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot08 :
    dot (matVec generated13M08 (normalQ Face.tpmp))
      topPairingLocalAxis = generated13V08 := by
  norm_num [generated13V08, generated13M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos08 :
    0 < generated13V08 := by
  norm_num [generated13V08]

private theorem generated13Hnext08 :
    generated13M09 = matMul generated13M08 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated13M09, generated13M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot09 :
    dot (matVec generated13M09 (normalQ Face.tmpm))
      topPairingLocalAxis = generated13V09 := by
  norm_num [generated13V09, generated13M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos09 :
    0 < generated13V09 := by
  norm_num [generated13V09]

private theorem generated13Hnext09 :
    generated13M10 = matMul generated13M09 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated13M10, generated13M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot10 :
    dot (matVec generated13M10 (normalQ Face.tppp))
      topPairingLocalAxis = generated13V10 := by
  norm_num [generated13V10, generated13M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos10 :
    0 < generated13V10 := by
  norm_num [generated13V10]

private theorem generated13Hnext10 :
    generated13M11 = matMul generated13M10 (reflM (normalQ Face.tppp)) := by
  norm_num [generated13M11, generated13M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot11 :
    dot (matVec generated13M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated13V11 := by
  norm_num [generated13V11, generated13M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos11 :
    0 < generated13V11 := by
  norm_num [generated13V11]

private theorem generated13Hnext11 :
    generated13M12 = matMul generated13M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated13M12, generated13M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot12 :
    dot (matVec generated13M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated13V12 := by
  norm_num [generated13V12, generated13M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos12 :
    0 < generated13V12 := by
  norm_num [generated13V12]

private theorem generated13Hnext12 :
    generated13M13 = matMul generated13M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated13M13, generated13M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13Hdot13 :
    dot (matVec generated13M13 (normalQ Face.xp))
      topPairingLocalAxis = generated13V13 := by
  norm_num [generated13V13, generated13M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated13Hpos13 :
    0 < generated13V13 := by
  norm_num [generated13V13]

private theorem generated13Hnext13 :
    generated13M14 = matMul generated13M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated13M14, generated13M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated13LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated13ContributionLabels :=
  generated13LocalAxisTraceOfGeneratedStates
    generated13Hdot00
    generated13Hpos00
    generated13Hnext00
    generated13Hdot01
    generated13Hpos01
    generated13Hnext01
    generated13Hdot02
    generated13Hpos02
    generated13Hnext02
    generated13Hdot03
    generated13Hpos03
    generated13Hnext03
    generated13Hdot04
    generated13Hpos04
    generated13Hnext04
    generated13Hdot05
    generated13Hpos05
    generated13Hnext05
    generated13Hdot06
    generated13Hpos06
    generated13Hnext06
    generated13Hdot07
    generated13Hpos07
    generated13Hnext07
    generated13Hdot08
    generated13Hpos08
    generated13Hnext08
    generated13Hdot09
    generated13Hpos09
    generated13Hnext09
    generated13Hdot10
    generated13Hpos10
    generated13Hnext10
    generated13Hdot11
    generated13Hpos11
    generated13Hnext11
    generated13Hdot12
    generated13Hpos12
    generated13Hnext12
    generated13Hdot13
    generated13Hpos13
    generated13Hnext13


theorem generated13ClosedLanguageOfPositiveTemplateTrace
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
        generated13ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated13ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated13ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated13SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated13ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated13ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated13ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated13ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated13SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated13ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated13ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated13ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated13SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated13ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated13ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated13ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated13ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated13ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated13ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated13ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated13ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated13ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated13ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated13LocalAxisTraceConcrete
    canonicalBadFace

theorem generated13ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated13ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated13ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated13LocalAxisTraceConcrete
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated13ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated13ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated13LocalAxisTraceConcrete
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated13ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated13ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated13LocalAxisTraceConcrete
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated13ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated13ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated13LocalAxisTraceConcrete
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated13ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated13ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated13ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated13ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated13Rank generated13ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated13Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated13Rank seq badFace :=
  generated13ClosedLanguageForSeqOfGeneratedForcedSeq
    generated13ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated13ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated13Rank generated13ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated13Rank) :
    TopPairingClosedLanguageForSeq generated13Rank seq Face.ym :=
  generated13ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated13CanonicalBadFaceCompatible

theorem generated13ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated13Rank generated13ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated13Rank seq Face.ym :=
  generated13ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated13TopPairingLanguageAtRank

theorem generated13GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke13
