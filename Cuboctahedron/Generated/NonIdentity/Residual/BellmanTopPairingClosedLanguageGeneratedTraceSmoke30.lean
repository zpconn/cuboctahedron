import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke30

open Cuboctahedron

private def generated30ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]

private theorem generated30ContributionLabels_length :
    generated30ContributionLabels.length = 14 := by
  rfl

private theorem generated30ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated30ContributionLabels := by
  unfold generated30ContributionLabels
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

private theorem generated30ScheduleLabels :
    TopPairingStepScheduleLabels generated30ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated30ContributionLabels_length generated30ScheduleTrace

private theorem generated30SquareGapTrace :
    TopPairingSquareGapFrom 0 generated30ContributionLabels := by
  unfold generated30ContributionLabels
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

private theorem generated30SquareGapLabels :
    TopPairingSquareGapLabels generated30ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated30SquareGapTrace

private theorem generated30LocalAxisTraceOfGeneratedStates
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
      dot (matVec m08 (normalQ Face.yp))
        topPairingLocalAxis = v08)
    (hpos08 : 0 < v08)
    (hnext08 :
      m09 = matMul m08 (reflM (normalQ Face.yp)))
    (hdot09 :
      dot (matVec m09 (normalQ Face.tmpp))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.tmpp)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.tmmp))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.tmmp)))
    (hdot11 :
      dot (matVec m11 (normalQ Face.zm))
        topPairingLocalAxis = v11)
    (hpos11 : 0 < v11)
    (hnext11 :
      m12 = matMul m11 (reflM (normalQ Face.zm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated30ContributionLabels := by
  unfold generated30ContributionLabels
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

def generated30ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tpmp
  | ⟨9, _⟩ => Face.yp
  | ⟨10, _⟩ => Face.tmpp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.zm
  | _ => Face.zp

private theorem generated30ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated30ForcedSeq = generated30ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated30ForcedSeq generated30ContributionLabels
  rfl

def generated30Rank : Fin numPairWords :=
  ⟨947591, by decide⟩

private theorem generated30ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated30ForcedSeq) = some generated30Rank := by
  decide

private theorem generated30ForcedSeq_unrank_pairword :
    unrankPairWord generated30Rank = pairWordOfSeq generated30ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated30ForcedSeq)
      generated30Rank).1 generated30ForcedSeq_rank).symm

private theorem generated30ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated30Rank) generated30ForcedSeq := by
  rw [generated30ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated30ForcedSeq

private theorem generated30TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated30Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated30ForcedSeq_unrank_pairword]
  rfl

private theorem generated30CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated30M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated30M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated30M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated30M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated30M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated30M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated30M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated30M08 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated30M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated30M10 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated30M11 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated30M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }

private def generated30M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated30M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated30V00 : Rat :=
  1

private def generated30V01 : Rat :=
  1

private def generated30V02 : Rat :=
  3

private def generated30V03 : Rat :=
  3

private def generated30V04 : Rat :=
  3

private def generated30V05 : Rat :=
  1

private def generated30V06 : Rat :=
  1

private def generated30V07 : Rat :=
  3

private def generated30V08 : Rat :=
  1

private def generated30V09 : Rat :=
  3

private def generated30V10 : Rat :=
  3

private def generated30V11 : Rat :=
  3

private def generated30V12 : Rat :=
  3

private def generated30V13 : Rat :=
  1

private theorem generated30Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated30V00 := by
  norm_num [generated30V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos00 :
    0 < generated30V00 := by
  norm_num [generated30V00]

private theorem generated30Hnext00 :
    generated30M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated30M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot01 :
    dot (matVec generated30M01 (normalQ Face.ym))
      topPairingLocalAxis = generated30V01 := by
  norm_num [generated30V01, generated30M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos01 :
    0 < generated30V01 := by
  norm_num [generated30V01]

private theorem generated30Hnext01 :
    generated30M02 = matMul generated30M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated30M02, generated30M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot02 :
    dot (matVec generated30M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated30V02 := by
  norm_num [generated30V02, generated30M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos02 :
    0 < generated30V02 := by
  norm_num [generated30V02]

private theorem generated30Hnext02 :
    generated30M03 = matMul generated30M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated30M03, generated30M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot03 :
    dot (matVec generated30M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated30V03 := by
  norm_num [generated30V03, generated30M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos03 :
    0 < generated30V03 := by
  norm_num [generated30V03]

private theorem generated30Hnext03 :
    generated30M04 = matMul generated30M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated30M04, generated30M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot04 :
    dot (matVec generated30M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated30V04 := by
  norm_num [generated30V04, generated30M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos04 :
    0 < generated30V04 := by
  norm_num [generated30V04]

private theorem generated30Hnext04 :
    generated30M05 = matMul generated30M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated30M05, generated30M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot05 :
    dot (matVec generated30M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated30V05 := by
  norm_num [generated30V05, generated30M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos05 :
    0 < generated30V05 := by
  norm_num [generated30V05]

private theorem generated30Hnext05 :
    generated30M06 = matMul generated30M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated30M06, generated30M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot06 :
    dot (matVec generated30M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated30V06 := by
  norm_num [generated30V06, generated30M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos06 :
    0 < generated30V06 := by
  norm_num [generated30V06]

private theorem generated30Hnext06 :
    generated30M07 = matMul generated30M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated30M07, generated30M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot07 :
    dot (matVec generated30M07 (normalQ Face.tpmp))
      topPairingLocalAxis = generated30V07 := by
  norm_num [generated30V07, generated30M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos07 :
    0 < generated30V07 := by
  norm_num [generated30V07]

private theorem generated30Hnext07 :
    generated30M08 = matMul generated30M07 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated30M08, generated30M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot08 :
    dot (matVec generated30M08 (normalQ Face.yp))
      topPairingLocalAxis = generated30V08 := by
  norm_num [generated30V08, generated30M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos08 :
    0 < generated30V08 := by
  norm_num [generated30V08]

private theorem generated30Hnext08 :
    generated30M09 = matMul generated30M08 (reflM (normalQ Face.yp)) := by
  norm_num [generated30M09, generated30M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot09 :
    dot (matVec generated30M09 (normalQ Face.tmpp))
      topPairingLocalAxis = generated30V09 := by
  norm_num [generated30V09, generated30M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos09 :
    0 < generated30V09 := by
  norm_num [generated30V09]

private theorem generated30Hnext09 :
    generated30M10 = matMul generated30M09 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated30M10, generated30M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot10 :
    dot (matVec generated30M10 (normalQ Face.tmmp))
      topPairingLocalAxis = generated30V10 := by
  norm_num [generated30V10, generated30M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos10 :
    0 < generated30V10 := by
  norm_num [generated30V10]

private theorem generated30Hnext10 :
    generated30M11 = matMul generated30M10 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated30M11, generated30M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot11 :
    dot (matVec generated30M11 (normalQ Face.zm))
      topPairingLocalAxis = generated30V11 := by
  norm_num [generated30V11, generated30M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos11 :
    0 < generated30V11 := by
  norm_num [generated30V11]

private theorem generated30Hnext11 :
    generated30M12 = matMul generated30M11 (reflM (normalQ Face.zm)) := by
  norm_num [generated30M12, generated30M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot12 :
    dot (matVec generated30M12 (normalQ Face.zp))
      topPairingLocalAxis = generated30V12 := by
  norm_num [generated30V12, generated30M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos12 :
    0 < generated30V12 := by
  norm_num [generated30V12]

private theorem generated30Hnext12 :
    generated30M13 = matMul generated30M12 (reflM (normalQ Face.zp)) := by
  norm_num [generated30M13, generated30M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30Hdot13 :
    dot (matVec generated30M13 (normalQ Face.xp))
      topPairingLocalAxis = generated30V13 := by
  norm_num [generated30V13, generated30M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated30Hpos13 :
    0 < generated30V13 := by
  norm_num [generated30V13]

private theorem generated30Hnext13 :
    generated30M14 = matMul generated30M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated30M14, generated30M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated30LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated30ContributionLabels :=
  generated30LocalAxisTraceOfGeneratedStates
    generated30Hdot00
    generated30Hpos00
    generated30Hnext00
    generated30Hdot01
    generated30Hpos01
    generated30Hnext01
    generated30Hdot02
    generated30Hpos02
    generated30Hnext02
    generated30Hdot03
    generated30Hpos03
    generated30Hnext03
    generated30Hdot04
    generated30Hpos04
    generated30Hnext04
    generated30Hdot05
    generated30Hpos05
    generated30Hnext05
    generated30Hdot06
    generated30Hpos06
    generated30Hnext06
    generated30Hdot07
    generated30Hpos07
    generated30Hnext07
    generated30Hdot08
    generated30Hpos08
    generated30Hnext08
    generated30Hdot09
    generated30Hpos09
    generated30Hnext09
    generated30Hdot10
    generated30Hpos10
    generated30Hnext10
    generated30Hdot11
    generated30Hpos11
    generated30Hnext11
    generated30Hdot12
    generated30Hpos12
    generated30Hnext12
    generated30Hdot13
    generated30Hpos13
    generated30Hnext13


theorem generated30ClosedLanguageOfPositiveTemplateTrace
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
        generated30ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated30ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated30ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated30SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated30ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated30ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated30ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated30ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated30SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated30ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated30ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated30ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated30SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated30ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated30ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated30ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated30ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated30ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated30ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated30ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated30ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated30ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated30ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated30LocalAxisTraceConcrete
    canonicalBadFace

theorem generated30ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated30ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated30ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated30LocalAxisTraceConcrete
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated30ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated30ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated30LocalAxisTraceConcrete
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated30ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated30ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated30LocalAxisTraceConcrete
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated30ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated30ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated30LocalAxisTraceConcrete
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated30ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated30ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated30ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated30ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated30Rank generated30ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated30Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated30Rank seq badFace :=
  generated30ClosedLanguageForSeqOfGeneratedForcedSeq
    generated30ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated30ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated30Rank generated30ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated30Rank) :
    TopPairingClosedLanguageForSeq generated30Rank seq Face.ym :=
  generated30ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated30CanonicalBadFaceCompatible

theorem generated30ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated30Rank generated30ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated30Rank seq Face.ym :=
  generated30ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated30TopPairingLanguageAtRank

theorem generated30GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke30
