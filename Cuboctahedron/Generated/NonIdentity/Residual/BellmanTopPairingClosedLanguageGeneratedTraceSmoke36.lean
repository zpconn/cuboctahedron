import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke36

open Cuboctahedron

private def generated36ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.zm, Face.zp, Face.yp, Face.xp]

private theorem generated36ContributionLabels_length :
    generated36ContributionLabels.length = 14 := by
  rfl

private theorem generated36ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated36ContributionLabels := by
  unfold generated36ContributionLabels
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

private theorem generated36ScheduleLabels :
    TopPairingStepScheduleLabels generated36ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated36ContributionLabels_length generated36ScheduleTrace

private theorem generated36SquareGapTrace :
    TopPairingSquareGapFrom 0 generated36ContributionLabels := by
  unfold generated36ContributionLabels
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

private theorem generated36SquareGapLabels :
    TopPairingSquareGapLabels generated36ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated36SquareGapTrace

private theorem generated36LocalAxisTraceOfGeneratedStates
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated36ContributionLabels := by
  unfold generated36ContributionLabels
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

def generated36ForcedSeq : Step14 -> Face
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
  | ⟨12, _⟩ => Face.zp
  | _ => Face.yp

private theorem generated36ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated36ForcedSeq = generated36ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated36ForcedSeq generated36ContributionLabels
  rfl

def generated36Rank : Fin numPairWords :=
  ⟨947627, by decide⟩

private theorem generated36ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated36ForcedSeq) = some generated36Rank := by
  decide

private theorem generated36ForcedSeq_unrank_pairword :
    unrankPairWord generated36Rank = pairWordOfSeq generated36ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated36ForcedSeq)
      generated36Rank).1 generated36ForcedSeq_rank).symm

private theorem generated36ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated36Rank) generated36ForcedSeq := by
  rw [generated36ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated36ForcedSeq

private theorem generated36TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated36Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated36ForcedSeq_unrank_pairword]
  rfl

private theorem generated36CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated36M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated36M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated36M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated36M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated36M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated36M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated36M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated36M08 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated36M09 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated36M10 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated36M11 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (-304/729), m10 := (112/729), m11 := (551/729), m12 := (-464/729), m20 := (-464/729), m21 := (-304/729), m22 := (-473/729) }

private def generated36M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated36M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated36M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated36V00 : Rat :=
  1

private def generated36V01 : Rat :=
  1

private def generated36V02 : Rat :=
  3

private def generated36V03 : Rat :=
  3

private def generated36V04 : Rat :=
  3

private def generated36V05 : Rat :=
  1

private def generated36V06 : Rat :=
  1

private def generated36V07 : Rat :=
  3

private def generated36V08 : Rat :=
  3

private def generated36V09 : Rat :=
  3

private def generated36V10 : Rat :=
  3

private def generated36V11 : Rat :=
  3

private def generated36V12 : Rat :=
  1

private def generated36V13 : Rat :=
  1

private theorem generated36Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated36V00 := by
  norm_num [generated36V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos00 :
    0 < generated36V00 := by
  norm_num [generated36V00]

private theorem generated36Hnext00 :
    generated36M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated36M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot01 :
    dot (matVec generated36M01 (normalQ Face.ym))
      topPairingLocalAxis = generated36V01 := by
  norm_num [generated36V01, generated36M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos01 :
    0 < generated36V01 := by
  norm_num [generated36V01]

private theorem generated36Hnext01 :
    generated36M02 = matMul generated36M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated36M02, generated36M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot02 :
    dot (matVec generated36M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated36V02 := by
  norm_num [generated36V02, generated36M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos02 :
    0 < generated36V02 := by
  norm_num [generated36V02]

private theorem generated36Hnext02 :
    generated36M03 = matMul generated36M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated36M03, generated36M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot03 :
    dot (matVec generated36M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated36V03 := by
  norm_num [generated36V03, generated36M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos03 :
    0 < generated36V03 := by
  norm_num [generated36V03]

private theorem generated36Hnext03 :
    generated36M04 = matMul generated36M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated36M04, generated36M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot04 :
    dot (matVec generated36M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated36V04 := by
  norm_num [generated36V04, generated36M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos04 :
    0 < generated36V04 := by
  norm_num [generated36V04]

private theorem generated36Hnext04 :
    generated36M05 = matMul generated36M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated36M05, generated36M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot05 :
    dot (matVec generated36M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated36V05 := by
  norm_num [generated36V05, generated36M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos05 :
    0 < generated36V05 := by
  norm_num [generated36V05]

private theorem generated36Hnext05 :
    generated36M06 = matMul generated36M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated36M06, generated36M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot06 :
    dot (matVec generated36M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated36V06 := by
  norm_num [generated36V06, generated36M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos06 :
    0 < generated36V06 := by
  norm_num [generated36V06]

private theorem generated36Hnext06 :
    generated36M07 = matMul generated36M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated36M07, generated36M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot07 :
    dot (matVec generated36M07 (normalQ Face.tpmp))
      topPairingLocalAxis = generated36V07 := by
  norm_num [generated36V07, generated36M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos07 :
    0 < generated36V07 := by
  norm_num [generated36V07]

private theorem generated36Hnext07 :
    generated36M08 = matMul generated36M07 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated36M08, generated36M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot08 :
    dot (matVec generated36M08 (normalQ Face.tmmp))
      topPairingLocalAxis = generated36V08 := by
  norm_num [generated36V08, generated36M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos08 :
    0 < generated36V08 := by
  norm_num [generated36V08]

private theorem generated36Hnext08 :
    generated36M09 = matMul generated36M08 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated36M09, generated36M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot09 :
    dot (matVec generated36M09 (normalQ Face.tmpp))
      topPairingLocalAxis = generated36V09 := by
  norm_num [generated36V09, generated36M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos09 :
    0 < generated36V09 := by
  norm_num [generated36V09]

private theorem generated36Hnext09 :
    generated36M10 = matMul generated36M09 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated36M10, generated36M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot10 :
    dot (matVec generated36M10 (normalQ Face.zm))
      topPairingLocalAxis = generated36V10 := by
  norm_num [generated36V10, generated36M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos10 :
    0 < generated36V10 := by
  norm_num [generated36V10]

private theorem generated36Hnext10 :
    generated36M11 = matMul generated36M10 (reflM (normalQ Face.zm)) := by
  norm_num [generated36M11, generated36M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot11 :
    dot (matVec generated36M11 (normalQ Face.zp))
      topPairingLocalAxis = generated36V11 := by
  norm_num [generated36V11, generated36M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos11 :
    0 < generated36V11 := by
  norm_num [generated36V11]

private theorem generated36Hnext11 :
    generated36M12 = matMul generated36M11 (reflM (normalQ Face.zp)) := by
  norm_num [generated36M12, generated36M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot12 :
    dot (matVec generated36M12 (normalQ Face.yp))
      topPairingLocalAxis = generated36V12 := by
  norm_num [generated36V12, generated36M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos12 :
    0 < generated36V12 := by
  norm_num [generated36V12]

private theorem generated36Hnext12 :
    generated36M13 = matMul generated36M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated36M13, generated36M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36Hdot13 :
    dot (matVec generated36M13 (normalQ Face.xp))
      topPairingLocalAxis = generated36V13 := by
  norm_num [generated36V13, generated36M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated36Hpos13 :
    0 < generated36V13 := by
  norm_num [generated36V13]

private theorem generated36Hnext13 :
    generated36M14 = matMul generated36M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated36M14, generated36M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated36LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated36ContributionLabels :=
  generated36LocalAxisTraceOfGeneratedStates
    generated36Hdot00
    generated36Hpos00
    generated36Hnext00
    generated36Hdot01
    generated36Hpos01
    generated36Hnext01
    generated36Hdot02
    generated36Hpos02
    generated36Hnext02
    generated36Hdot03
    generated36Hpos03
    generated36Hnext03
    generated36Hdot04
    generated36Hpos04
    generated36Hnext04
    generated36Hdot05
    generated36Hpos05
    generated36Hnext05
    generated36Hdot06
    generated36Hpos06
    generated36Hnext06
    generated36Hdot07
    generated36Hpos07
    generated36Hnext07
    generated36Hdot08
    generated36Hpos08
    generated36Hnext08
    generated36Hdot09
    generated36Hpos09
    generated36Hnext09
    generated36Hdot10
    generated36Hpos10
    generated36Hnext10
    generated36Hdot11
    generated36Hpos11
    generated36Hnext11
    generated36Hdot12
    generated36Hpos12
    generated36Hnext12
    generated36Hdot13
    generated36Hpos13
    generated36Hnext13


theorem generated36ClosedLanguageOfPositiveTemplateTrace
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
        generated36ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated36ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated36ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated36SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated36ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated36ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated36ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated36ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated36SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated36ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated36ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated36ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated36SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated36ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated36ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated36ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated36ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated36ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated36ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated36ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated36ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated36ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated36ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated36LocalAxisTraceConcrete
    canonicalBadFace

theorem generated36ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated36ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated36ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated36LocalAxisTraceConcrete
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated36ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated36ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated36LocalAxisTraceConcrete
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated36ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated36ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated36LocalAxisTraceConcrete
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated36ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated36ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated36LocalAxisTraceConcrete
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated36ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated36ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated36ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated36ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated36Rank generated36ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated36Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated36Rank seq badFace :=
  generated36ClosedLanguageForSeqOfGeneratedForcedSeq
    generated36ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated36ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated36Rank generated36ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated36Rank) :
    TopPairingClosedLanguageForSeq generated36Rank seq Face.ym :=
  generated36ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated36CanonicalBadFaceCompatible

theorem generated36ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated36Rank generated36ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated36Rank seq Face.ym :=
  generated36ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated36TopPairingLanguageAtRank

theorem generated36GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke36
