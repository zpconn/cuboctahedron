import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke25

open Cuboctahedron

private def generated25ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]

private theorem generated25ContributionLabels_length :
    generated25ContributionLabels.length = 14 := by
  rfl

private theorem generated25ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated25ContributionLabels := by
  unfold generated25ContributionLabels
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

private theorem generated25ScheduleLabels :
    TopPairingStepScheduleLabels generated25ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated25ContributionLabels_length generated25ScheduleTrace

private theorem generated25SquareGapTrace :
    TopPairingSquareGapFrom 0 generated25ContributionLabels := by
  unfold generated25ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated25SquareGapLabels :
    TopPairingSquareGapLabels generated25ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated25SquareGapTrace

private theorem generated25LocalAxisTraceOfGeneratedStates
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
      dot (matVec m06 (normalQ Face.zp))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.zp)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.zm))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.zm)))
    (hdot08 :
      dot (matVec m08 (normalQ Face.tmmm))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.tmmm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated25ContributionLabels := by
  unfold generated25ContributionLabels
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

def generated25ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.zm
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.yp

private theorem generated25ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated25ForcedSeq = generated25ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated25ForcedSeq generated25ContributionLabels
  rfl

def generated25Rank : Fin numPairWords :=
  ⟨946779, by decide⟩

private theorem generated25ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated25ForcedSeq) = some generated25Rank := by
  decide

private theorem generated25ForcedSeq_unrank_pairword :
    unrankPairWord generated25Rank = pairWordOfSeq generated25ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated25ForcedSeq)
      generated25Rank).1 generated25ForcedSeq_rank).symm

private theorem generated25ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated25Rank) generated25ForcedSeq := by
  rw [generated25ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated25ForcedSeq

private theorem generated25TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated25Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated25ForcedSeq_unrank_pairword]
  rfl

private theorem generated25CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated25M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated25M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated25M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated25M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated25M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated25M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated25M07 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (64/81), m10 := (-8/81), m11 := (79/81), m12 := (-16/81), m20 := (64/81), m21 := (16/81), m22 := (47/81) }

private def generated25M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated25M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated25M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated25M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated25M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated25M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated25M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated25V00 : Rat :=
  1

private def generated25V01 : Rat :=
  1

private def generated25V02 : Rat :=
  3

private def generated25V03 : Rat :=
  3

private def generated25V04 : Rat :=
  3

private def generated25V05 : Rat :=
  1

private def generated25V06 : Rat :=
  (7/3)

private def generated25V07 : Rat :=
  (7/3)

private def generated25V08 : Rat :=
  1

private def generated25V09 : Rat :=
  3

private def generated25V10 : Rat :=
  3

private def generated25V11 : Rat :=
  3

private def generated25V12 : Rat :=
  1

private def generated25V13 : Rat :=
  1

private theorem generated25Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated25V00 := by
  norm_num [generated25V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos00 :
    0 < generated25V00 := by
  norm_num [generated25V00]

private theorem generated25Hnext00 :
    generated25M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated25M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot01 :
    dot (matVec generated25M01 (normalQ Face.ym))
      topPairingLocalAxis = generated25V01 := by
  norm_num [generated25V01, generated25M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos01 :
    0 < generated25V01 := by
  norm_num [generated25V01]

private theorem generated25Hnext01 :
    generated25M02 = matMul generated25M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated25M02, generated25M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot02 :
    dot (matVec generated25M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated25V02 := by
  norm_num [generated25V02, generated25M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos02 :
    0 < generated25V02 := by
  norm_num [generated25V02]

private theorem generated25Hnext02 :
    generated25M03 = matMul generated25M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated25M03, generated25M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot03 :
    dot (matVec generated25M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated25V03 := by
  norm_num [generated25V03, generated25M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos03 :
    0 < generated25V03 := by
  norm_num [generated25V03]

private theorem generated25Hnext03 :
    generated25M04 = matMul generated25M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated25M04, generated25M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot04 :
    dot (matVec generated25M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated25V04 := by
  norm_num [generated25V04, generated25M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos04 :
    0 < generated25V04 := by
  norm_num [generated25V04]

private theorem generated25Hnext04 :
    generated25M05 = matMul generated25M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated25M05, generated25M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot05 :
    dot (matVec generated25M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated25V05 := by
  norm_num [generated25V05, generated25M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos05 :
    0 < generated25V05 := by
  norm_num [generated25V05]

private theorem generated25Hnext05 :
    generated25M06 = matMul generated25M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated25M06, generated25M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot06 :
    dot (matVec generated25M06 (normalQ Face.zp))
      topPairingLocalAxis = generated25V06 := by
  norm_num [generated25V06, generated25M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos06 :
    0 < generated25V06 := by
  norm_num [generated25V06]

private theorem generated25Hnext06 :
    generated25M07 = matMul generated25M06 (reflM (normalQ Face.zp)) := by
  norm_num [generated25M07, generated25M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot07 :
    dot (matVec generated25M07 (normalQ Face.zm))
      topPairingLocalAxis = generated25V07 := by
  norm_num [generated25V07, generated25M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos07 :
    0 < generated25V07 := by
  norm_num [generated25V07]

private theorem generated25Hnext07 :
    generated25M08 = matMul generated25M07 (reflM (normalQ Face.zm)) := by
  norm_num [generated25M08, generated25M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot08 :
    dot (matVec generated25M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated25V08 := by
  norm_num [generated25V08, generated25M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos08 :
    0 < generated25V08 := by
  norm_num [generated25V08]

private theorem generated25Hnext08 :
    generated25M09 = matMul generated25M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated25M09, generated25M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot09 :
    dot (matVec generated25M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated25V09 := by
  norm_num [generated25V09, generated25M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos09 :
    0 < generated25V09 := by
  norm_num [generated25V09]

private theorem generated25Hnext09 :
    generated25M10 = matMul generated25M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated25M10, generated25M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot10 :
    dot (matVec generated25M10 (normalQ Face.tmmp))
      topPairingLocalAxis = generated25V10 := by
  norm_num [generated25V10, generated25M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos10 :
    0 < generated25V10 := by
  norm_num [generated25V10]

private theorem generated25Hnext10 :
    generated25M11 = matMul generated25M10 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated25M11, generated25M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot11 :
    dot (matVec generated25M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated25V11 := by
  norm_num [generated25V11, generated25M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos11 :
    0 < generated25V11 := by
  norm_num [generated25V11]

private theorem generated25Hnext11 :
    generated25M12 = matMul generated25M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated25M12, generated25M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot12 :
    dot (matVec generated25M12 (normalQ Face.yp))
      topPairingLocalAxis = generated25V12 := by
  norm_num [generated25V12, generated25M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos12 :
    0 < generated25V12 := by
  norm_num [generated25V12]

private theorem generated25Hnext12 :
    generated25M13 = matMul generated25M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated25M13, generated25M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25Hdot13 :
    dot (matVec generated25M13 (normalQ Face.xp))
      topPairingLocalAxis = generated25V13 := by
  norm_num [generated25V13, generated25M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated25Hpos13 :
    0 < generated25V13 := by
  norm_num [generated25V13]

private theorem generated25Hnext13 :
    generated25M14 = matMul generated25M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated25M14, generated25M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated25LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated25ContributionLabels :=
  generated25LocalAxisTraceOfGeneratedStates
    generated25Hdot00
    generated25Hpos00
    generated25Hnext00
    generated25Hdot01
    generated25Hpos01
    generated25Hnext01
    generated25Hdot02
    generated25Hpos02
    generated25Hnext02
    generated25Hdot03
    generated25Hpos03
    generated25Hnext03
    generated25Hdot04
    generated25Hpos04
    generated25Hnext04
    generated25Hdot05
    generated25Hpos05
    generated25Hnext05
    generated25Hdot06
    generated25Hpos06
    generated25Hnext06
    generated25Hdot07
    generated25Hpos07
    generated25Hnext07
    generated25Hdot08
    generated25Hpos08
    generated25Hnext08
    generated25Hdot09
    generated25Hpos09
    generated25Hnext09
    generated25Hdot10
    generated25Hpos10
    generated25Hnext10
    generated25Hdot11
    generated25Hpos11
    generated25Hnext11
    generated25Hdot12
    generated25Hpos12
    generated25Hnext12
    generated25Hdot13
    generated25Hpos13
    generated25Hnext13


theorem generated25ClosedLanguageOfPositiveTemplateTrace
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
        generated25ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated25ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated25ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated25SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated25ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated25ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated25ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated25ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated25SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated25ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated25ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated25ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated25SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated25ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated25ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated25ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated25ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated25ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated25ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated25ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated25ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated25ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated25ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated25LocalAxisTraceConcrete
    canonicalBadFace

theorem generated25ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated25ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated25ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated25LocalAxisTraceConcrete
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated25ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated25ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated25LocalAxisTraceConcrete
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated25ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated25ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated25LocalAxisTraceConcrete
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated25ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated25ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated25LocalAxisTraceConcrete
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated25ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated25ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated25ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated25ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated25Rank generated25ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated25Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated25Rank seq badFace :=
  generated25ClosedLanguageForSeqOfGeneratedForcedSeq
    generated25ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated25ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated25Rank generated25ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated25Rank) :
    TopPairingClosedLanguageForSeq generated25Rank seq Face.ym :=
  generated25ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated25CanonicalBadFaceCompatible

theorem generated25ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated25Rank generated25ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated25Rank seq Face.ym :=
  generated25ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated25TopPairingLanguageAtRank

theorem generated25GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke25
