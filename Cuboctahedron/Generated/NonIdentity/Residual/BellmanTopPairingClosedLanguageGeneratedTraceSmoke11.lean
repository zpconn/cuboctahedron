import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke11

open Cuboctahedron

private def generated11ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated11ContributionLabels_length :
    generated11ContributionLabels.length = 14 := by
  rfl

private theorem generated11ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated11ContributionLabels := by
  unfold generated11ContributionLabels
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

private theorem generated11ScheduleLabels :
    TopPairingStepScheduleLabels generated11ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated11ContributionLabels_length generated11ScheduleTrace

private theorem generated11SquareGapTrace :
    TopPairingSquareGapFrom 0 generated11ContributionLabels := by
  unfold generated11ContributionLabels
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

private theorem generated11SquareGapLabels :
    TopPairingSquareGapLabels generated11ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated11SquareGapTrace

private theorem generated11LocalAxisTraceOfGeneratedStates
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
      dot (matVec m03 (normalQ Face.yp))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.yp)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.zp))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.zp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated11ContributionLabels := by
  unfold generated11ContributionLabels
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

def generated11ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.zm
  | ⟨4, _⟩ => Face.yp
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated11ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated11ForcedSeq = generated11ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated11ForcedSeq generated11ContributionLabels
  rfl

def generated11Rank : Fin numPairWords :=
  ⟨113917, by decide⟩

private theorem generated11ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated11ForcedSeq) = some generated11Rank := by
  decide

private theorem generated11ForcedSeq_unrank_pairword :
    unrankPairWord generated11Rank = pairWordOfSeq generated11ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated11ForcedSeq)
      generated11Rank).1 generated11ForcedSeq_rank).symm

private theorem generated11ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated11Rank) generated11ForcedSeq := by
  rw [generated11ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated11ForcedSeq

private theorem generated11TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated11Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated11ForcedSeq_unrank_pairword]
  rfl

private theorem generated11CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated11M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated11M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated11M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated11M04 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated11M05 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated11M06 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated11M07 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated11M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated11M09 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated11M10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated11M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated11M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated11M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated11M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated11V00 : Rat :=
  1

private def generated11V01 : Rat :=
  1

private def generated11V02 : Rat :=
  3

private def generated11V03 : Rat :=
  1

private def generated11V04 : Rat :=
  3

private def generated11V05 : Rat :=
  3

private def generated11V06 : Rat :=
  3

private def generated11V07 : Rat :=
  3

private def generated11V08 : Rat :=
  1

private def generated11V09 : Rat :=
  1

private def generated11V10 : Rat :=
  3

private def generated11V11 : Rat :=
  3

private def generated11V12 : Rat :=
  3

private def generated11V13 : Rat :=
  1

private theorem generated11Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated11V00 := by
  norm_num [generated11V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos00 :
    0 < generated11V00 := by
  norm_num [generated11V00]

private theorem generated11Hnext00 :
    generated11M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated11M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot01 :
    dot (matVec generated11M01 (normalQ Face.ym))
      topPairingLocalAxis = generated11V01 := by
  norm_num [generated11V01, generated11M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos01 :
    0 < generated11V01 := by
  norm_num [generated11V01]

private theorem generated11Hnext01 :
    generated11M02 = matMul generated11M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated11M02, generated11M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot02 :
    dot (matVec generated11M02 (normalQ Face.zm))
      topPairingLocalAxis = generated11V02 := by
  norm_num [generated11V02, generated11M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos02 :
    0 < generated11V02 := by
  norm_num [generated11V02]

private theorem generated11Hnext02 :
    generated11M03 = matMul generated11M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated11M03, generated11M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot03 :
    dot (matVec generated11M03 (normalQ Face.yp))
      topPairingLocalAxis = generated11V03 := by
  norm_num [generated11V03, generated11M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos03 :
    0 < generated11V03 := by
  norm_num [generated11V03]

private theorem generated11Hnext03 :
    generated11M04 = matMul generated11M03 (reflM (normalQ Face.yp)) := by
  norm_num [generated11M04, generated11M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot04 :
    dot (matVec generated11M04 (normalQ Face.zp))
      topPairingLocalAxis = generated11V04 := by
  norm_num [generated11V04, generated11M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos04 :
    0 < generated11V04 := by
  norm_num [generated11V04]

private theorem generated11Hnext04 :
    generated11M05 = matMul generated11M04 (reflM (normalQ Face.zp)) := by
  norm_num [generated11M05, generated11M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot05 :
    dot (matVec generated11M05 (normalQ Face.tmmm))
      topPairingLocalAxis = generated11V05 := by
  norm_num [generated11V05, generated11M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos05 :
    0 < generated11V05 := by
  norm_num [generated11V05]

private theorem generated11Hnext05 :
    generated11M06 = matMul generated11M05 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated11M06, generated11M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot06 :
    dot (matVec generated11M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated11V06 := by
  norm_num [generated11V06, generated11M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos06 :
    0 < generated11V06 := by
  norm_num [generated11V06]

private theorem generated11Hnext06 :
    generated11M07 = matMul generated11M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated11M07, generated11M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot07 :
    dot (matVec generated11M07 (normalQ Face.tppm))
      topPairingLocalAxis = generated11V07 := by
  norm_num [generated11V07, generated11M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos07 :
    0 < generated11V07 := by
  norm_num [generated11V07]

private theorem generated11Hnext07 :
    generated11M08 = matMul generated11M07 (reflM (normalQ Face.tppm)) := by
  norm_num [generated11M08, generated11M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot08 :
    dot (matVec generated11M08 (normalQ Face.tpmp))
      topPairingLocalAxis = generated11V08 := by
  norm_num [generated11V08, generated11M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos08 :
    0 < generated11V08 := by
  norm_num [generated11V08]

private theorem generated11Hnext08 :
    generated11M09 = matMul generated11M08 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated11M09, generated11M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot09 :
    dot (matVec generated11M09 (normalQ Face.tmpm))
      topPairingLocalAxis = generated11V09 := by
  norm_num [generated11V09, generated11M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos09 :
    0 < generated11V09 := by
  norm_num [generated11V09]

private theorem generated11Hnext09 :
    generated11M10 = matMul generated11M09 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated11M10, generated11M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot10 :
    dot (matVec generated11M10 (normalQ Face.tppp))
      topPairingLocalAxis = generated11V10 := by
  norm_num [generated11V10, generated11M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos10 :
    0 < generated11V10 := by
  norm_num [generated11V10]

private theorem generated11Hnext10 :
    generated11M11 = matMul generated11M10 (reflM (normalQ Face.tppp)) := by
  norm_num [generated11M11, generated11M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot11 :
    dot (matVec generated11M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated11V11 := by
  norm_num [generated11V11, generated11M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos11 :
    0 < generated11V11 := by
  norm_num [generated11V11]

private theorem generated11Hnext11 :
    generated11M12 = matMul generated11M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated11M12, generated11M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot12 :
    dot (matVec generated11M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated11V12 := by
  norm_num [generated11V12, generated11M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos12 :
    0 < generated11V12 := by
  norm_num [generated11V12]

private theorem generated11Hnext12 :
    generated11M13 = matMul generated11M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated11M13, generated11M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11Hdot13 :
    dot (matVec generated11M13 (normalQ Face.xp))
      topPairingLocalAxis = generated11V13 := by
  norm_num [generated11V13, generated11M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated11Hpos13 :
    0 < generated11V13 := by
  norm_num [generated11V13]

private theorem generated11Hnext13 :
    generated11M14 = matMul generated11M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated11M14, generated11M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated11LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated11ContributionLabels :=
  generated11LocalAxisTraceOfGeneratedStates
    generated11Hdot00
    generated11Hpos00
    generated11Hnext00
    generated11Hdot01
    generated11Hpos01
    generated11Hnext01
    generated11Hdot02
    generated11Hpos02
    generated11Hnext02
    generated11Hdot03
    generated11Hpos03
    generated11Hnext03
    generated11Hdot04
    generated11Hpos04
    generated11Hnext04
    generated11Hdot05
    generated11Hpos05
    generated11Hnext05
    generated11Hdot06
    generated11Hpos06
    generated11Hnext06
    generated11Hdot07
    generated11Hpos07
    generated11Hnext07
    generated11Hdot08
    generated11Hpos08
    generated11Hnext08
    generated11Hdot09
    generated11Hpos09
    generated11Hnext09
    generated11Hdot10
    generated11Hpos10
    generated11Hnext10
    generated11Hdot11
    generated11Hpos11
    generated11Hnext11
    generated11Hdot12
    generated11Hpos12
    generated11Hnext12
    generated11Hdot13
    generated11Hpos13
    generated11Hnext13


theorem generated11ClosedLanguageOfPositiveTemplateTrace
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
        generated11ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated11ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated11ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated11SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated11ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated11ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated11ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated11ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated11SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated11ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated11ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated11ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated11SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated11ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated11ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated11ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated11ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated11ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated11ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated11ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated11ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated11ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated11ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated11LocalAxisTraceConcrete
    canonicalBadFace

theorem generated11ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated11ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated11ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated11LocalAxisTraceConcrete
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated11ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated11ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated11LocalAxisTraceConcrete
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated11ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated11ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated11LocalAxisTraceConcrete
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated11ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated11ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated11LocalAxisTraceConcrete
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated11ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated11ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated11ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated11ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated11Rank generated11ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated11Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated11Rank seq badFace :=
  generated11ClosedLanguageForSeqOfGeneratedForcedSeq
    generated11ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated11ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated11Rank generated11ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated11Rank) :
    TopPairingClosedLanguageForSeq generated11Rank seq Face.ym :=
  generated11ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated11CanonicalBadFaceCompatible

theorem generated11ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated11Rank generated11ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated11Rank seq Face.ym :=
  generated11ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated11TopPairingLanguageAtRank

theorem generated11GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke11
