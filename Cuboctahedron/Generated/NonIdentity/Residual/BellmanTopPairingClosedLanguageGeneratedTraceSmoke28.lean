import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke28

open Cuboctahedron

private def generated28ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated28ContributionLabels_length :
    generated28ContributionLabels.length = 14 := by
  rfl

private theorem generated28ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated28ContributionLabels := by
  unfold generated28ContributionLabels
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

private theorem generated28ScheduleLabels :
    TopPairingStepScheduleLabels generated28ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated28ContributionLabels_length generated28ScheduleTrace

private theorem generated28SquareGapTrace :
    TopPairingSquareGapFrom 0 generated28ContributionLabels := by
  unfold generated28ContributionLabels
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
  exact topPairingSquareGapFrom_nil

private theorem generated28SquareGapLabels :
    TopPairingSquareGapLabels generated28ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated28SquareGapTrace

private theorem generated28LocalAxisTraceOfGeneratedStates
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
      dot (matVec m09 (normalQ Face.zp))
        topPairingLocalAxis = v09)
    (hpos09 : 0 < v09)
    (hnext09 :
      m10 = matMul m09 (reflM (normalQ Face.zp)))
    (hdot10 :
      dot (matVec m10 (normalQ Face.zm))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.zm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated28ContributionLabels := by
  unfold generated28ContributionLabels
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

def generated28ForcedSeq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.zp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated28ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated28ForcedSeq = generated28ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated28ForcedSeq generated28ContributionLabels
  rfl

def generated28Rank : Fin numPairWords :=
  ⟨947581, by decide⟩

private theorem generated28ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated28ForcedSeq) = some generated28Rank := by
  decide

private theorem generated28ForcedSeq_unrank_pairword :
    unrankPairWord generated28Rank = pairWordOfSeq generated28ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated28ForcedSeq)
      generated28Rank).1 generated28ForcedSeq_rank).symm

private theorem generated28ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated28Rank) generated28ForcedSeq := by
  rw [generated28ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated28ForcedSeq

private theorem generated28TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated28Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated28ForcedSeq_unrank_pairword]
  rfl

private theorem generated28CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated28M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated28M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated28M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated28M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated28M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated28M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated28M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated28M08 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated28M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated28M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }

private def generated28M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated28M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated28M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated28M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated28V00 : Rat :=
  1

private def generated28V01 : Rat :=
  1

private def generated28V02 : Rat :=
  3

private def generated28V03 : Rat :=
  3

private def generated28V04 : Rat :=
  3

private def generated28V05 : Rat :=
  1

private def generated28V06 : Rat :=
  1

private def generated28V07 : Rat :=
  3

private def generated28V08 : Rat :=
  1

private def generated28V09 : Rat :=
  1

private def generated28V10 : Rat :=
  1

private def generated28V11 : Rat :=
  3

private def generated28V12 : Rat :=
  3

private def generated28V13 : Rat :=
  1

private theorem generated28Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated28V00 := by
  norm_num [generated28V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos00 :
    0 < generated28V00 := by
  norm_num [generated28V00]

private theorem generated28Hnext00 :
    generated28M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated28M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot01 :
    dot (matVec generated28M01 (normalQ Face.ym))
      topPairingLocalAxis = generated28V01 := by
  norm_num [generated28V01, generated28M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos01 :
    0 < generated28V01 := by
  norm_num [generated28V01]

private theorem generated28Hnext01 :
    generated28M02 = matMul generated28M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated28M02, generated28M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot02 :
    dot (matVec generated28M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated28V02 := by
  norm_num [generated28V02, generated28M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos02 :
    0 < generated28V02 := by
  norm_num [generated28V02]

private theorem generated28Hnext02 :
    generated28M03 = matMul generated28M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated28M03, generated28M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot03 :
    dot (matVec generated28M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated28V03 := by
  norm_num [generated28V03, generated28M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos03 :
    0 < generated28V03 := by
  norm_num [generated28V03]

private theorem generated28Hnext03 :
    generated28M04 = matMul generated28M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated28M04, generated28M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot04 :
    dot (matVec generated28M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated28V04 := by
  norm_num [generated28V04, generated28M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos04 :
    0 < generated28V04 := by
  norm_num [generated28V04]

private theorem generated28Hnext04 :
    generated28M05 = matMul generated28M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated28M05, generated28M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot05 :
    dot (matVec generated28M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated28V05 := by
  norm_num [generated28V05, generated28M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos05 :
    0 < generated28V05 := by
  norm_num [generated28V05]

private theorem generated28Hnext05 :
    generated28M06 = matMul generated28M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated28M06, generated28M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot06 :
    dot (matVec generated28M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated28V06 := by
  norm_num [generated28V06, generated28M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos06 :
    0 < generated28V06 := by
  norm_num [generated28V06]

private theorem generated28Hnext06 :
    generated28M07 = matMul generated28M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated28M07, generated28M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot07 :
    dot (matVec generated28M07 (normalQ Face.tpmp))
      topPairingLocalAxis = generated28V07 := by
  norm_num [generated28V07, generated28M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos07 :
    0 < generated28V07 := by
  norm_num [generated28V07]

private theorem generated28Hnext07 :
    generated28M08 = matMul generated28M07 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated28M08, generated28M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot08 :
    dot (matVec generated28M08 (normalQ Face.yp))
      topPairingLocalAxis = generated28V08 := by
  norm_num [generated28V08, generated28M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos08 :
    0 < generated28V08 := by
  norm_num [generated28V08]

private theorem generated28Hnext08 :
    generated28M09 = matMul generated28M08 (reflM (normalQ Face.yp)) := by
  norm_num [generated28M09, generated28M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot09 :
    dot (matVec generated28M09 (normalQ Face.zp))
      topPairingLocalAxis = generated28V09 := by
  norm_num [generated28V09, generated28M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos09 :
    0 < generated28V09 := by
  norm_num [generated28V09]

private theorem generated28Hnext09 :
    generated28M10 = matMul generated28M09 (reflM (normalQ Face.zp)) := by
  norm_num [generated28M10, generated28M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot10 :
    dot (matVec generated28M10 (normalQ Face.zm))
      topPairingLocalAxis = generated28V10 := by
  norm_num [generated28V10, generated28M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos10 :
    0 < generated28V10 := by
  norm_num [generated28V10]

private theorem generated28Hnext10 :
    generated28M11 = matMul generated28M10 (reflM (normalQ Face.zm)) := by
  norm_num [generated28M11, generated28M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot11 :
    dot (matVec generated28M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated28V11 := by
  norm_num [generated28V11, generated28M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos11 :
    0 < generated28V11 := by
  norm_num [generated28V11]

private theorem generated28Hnext11 :
    generated28M12 = matMul generated28M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated28M12, generated28M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot12 :
    dot (matVec generated28M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated28V12 := by
  norm_num [generated28V12, generated28M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos12 :
    0 < generated28V12 := by
  norm_num [generated28V12]

private theorem generated28Hnext12 :
    generated28M13 = matMul generated28M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated28M13, generated28M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28Hdot13 :
    dot (matVec generated28M13 (normalQ Face.xp))
      topPairingLocalAxis = generated28V13 := by
  norm_num [generated28V13, generated28M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated28Hpos13 :
    0 < generated28V13 := by
  norm_num [generated28V13]

private theorem generated28Hnext13 :
    generated28M14 = matMul generated28M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated28M14, generated28M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated28LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated28ContributionLabels :=
  generated28LocalAxisTraceOfGeneratedStates
    generated28Hdot00
    generated28Hpos00
    generated28Hnext00
    generated28Hdot01
    generated28Hpos01
    generated28Hnext01
    generated28Hdot02
    generated28Hpos02
    generated28Hnext02
    generated28Hdot03
    generated28Hpos03
    generated28Hnext03
    generated28Hdot04
    generated28Hpos04
    generated28Hnext04
    generated28Hdot05
    generated28Hpos05
    generated28Hnext05
    generated28Hdot06
    generated28Hpos06
    generated28Hnext06
    generated28Hdot07
    generated28Hpos07
    generated28Hnext07
    generated28Hdot08
    generated28Hpos08
    generated28Hnext08
    generated28Hdot09
    generated28Hpos09
    generated28Hnext09
    generated28Hdot10
    generated28Hpos10
    generated28Hnext10
    generated28Hdot11
    generated28Hpos11
    generated28Hnext11
    generated28Hdot12
    generated28Hpos12
    generated28Hnext12
    generated28Hdot13
    generated28Hpos13
    generated28Hnext13


theorem generated28ClosedLanguageOfPositiveTemplateTrace
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
        generated28ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated28ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated28ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated28SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated28ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated28ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated28ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated28ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated28SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated28ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated28ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated28ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated28SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated28ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated28ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated28ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated28ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated28ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated28ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated28ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated28ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated28ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated28ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated28LocalAxisTraceConcrete
    canonicalBadFace

theorem generated28ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated28ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated28ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated28LocalAxisTraceConcrete
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated28ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated28ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated28LocalAxisTraceConcrete
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated28ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated28ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated28LocalAxisTraceConcrete
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated28ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated28ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated28LocalAxisTraceConcrete
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated28ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated28ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated28ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated28ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated28Rank generated28ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated28Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated28Rank seq badFace :=
  generated28ClosedLanguageForSeqOfGeneratedForcedSeq
    generated28ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated28ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated28Rank generated28ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated28Rank) :
    TopPairingClosedLanguageForSeq generated28Rank seq Face.ym :=
  generated28ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated28CanonicalBadFaceCompatible

theorem generated28ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated28Rank generated28ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated28Rank seq Face.ym :=
  generated28ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated28TopPairingLanguageAtRank

theorem generated28GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke28
