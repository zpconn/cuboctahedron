import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke29

open Cuboctahedron

private def generated29ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]

private theorem generated29ContributionLabels_length :
    generated29ContributionLabels.length = 14 := by
  rfl

private theorem generated29ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated29ContributionLabels := by
  unfold generated29ContributionLabels
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

private theorem generated29ScheduleLabels :
    TopPairingStepScheduleLabels generated29ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated29ContributionLabels_length generated29ScheduleTrace

private theorem generated29SquareGapTrace :
    TopPairingSquareGapFrom 0 generated29ContributionLabels := by
  unfold generated29ContributionLabels
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

private theorem generated29SquareGapLabels :
    TopPairingSquareGapLabels generated29ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated29SquareGapTrace

private theorem generated29LocalAxisTraceOfGeneratedStates
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated29ContributionLabels := by
  unfold generated29ContributionLabels
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

def generated29ForcedSeq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.zp
  | _ => Face.tmmp

private theorem generated29ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated29ForcedSeq = generated29ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated29ForcedSeq generated29ContributionLabels
  rfl

def generated29Rank : Fin numPairWords :=
  ⟨947589, by decide⟩

private theorem generated29ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated29ForcedSeq) = some generated29Rank := by
  decide

private theorem generated29ForcedSeq_unrank_pairword :
    unrankPairWord generated29Rank = pairWordOfSeq generated29ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated29ForcedSeq)
      generated29Rank).1 generated29ForcedSeq_rank).symm

private theorem generated29ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated29Rank) generated29ForcedSeq := by
  rw [generated29ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated29ForcedSeq

private theorem generated29TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated29Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated29ForcedSeq_unrank_pairword]
  rfl

private theorem generated29CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated29M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated29M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated29M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated29M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated29M05 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated29M06 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated29M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated29M08 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated29M09 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated29M10 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated29M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }

private def generated29M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated29M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated29M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated29V00 : Rat :=
  1

private def generated29V01 : Rat :=
  1

private def generated29V02 : Rat :=
  3

private def generated29V03 : Rat :=
  3

private def generated29V04 : Rat :=
  3

private def generated29V05 : Rat :=
  1

private def generated29V06 : Rat :=
  1

private def generated29V07 : Rat :=
  3

private def generated29V08 : Rat :=
  1

private def generated29V09 : Rat :=
  3

private def generated29V10 : Rat :=
  1

private def generated29V11 : Rat :=
  1

private def generated29V12 : Rat :=
  3

private def generated29V13 : Rat :=
  1

private theorem generated29Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated29V00 := by
  norm_num [generated29V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos00 :
    0 < generated29V00 := by
  norm_num [generated29V00]

private theorem generated29Hnext00 :
    generated29M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated29M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot01 :
    dot (matVec generated29M01 (normalQ Face.ym))
      topPairingLocalAxis = generated29V01 := by
  norm_num [generated29V01, generated29M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos01 :
    0 < generated29V01 := by
  norm_num [generated29V01]

private theorem generated29Hnext01 :
    generated29M02 = matMul generated29M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated29M02, generated29M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot02 :
    dot (matVec generated29M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated29V02 := by
  norm_num [generated29V02, generated29M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos02 :
    0 < generated29V02 := by
  norm_num [generated29V02]

private theorem generated29Hnext02 :
    generated29M03 = matMul generated29M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated29M03, generated29M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot03 :
    dot (matVec generated29M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated29V03 := by
  norm_num [generated29V03, generated29M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos03 :
    0 < generated29V03 := by
  norm_num [generated29V03]

private theorem generated29Hnext03 :
    generated29M04 = matMul generated29M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated29M04, generated29M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot04 :
    dot (matVec generated29M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated29V04 := by
  norm_num [generated29V04, generated29M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos04 :
    0 < generated29V04 := by
  norm_num [generated29V04]

private theorem generated29Hnext04 :
    generated29M05 = matMul generated29M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated29M05, generated29M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot05 :
    dot (matVec generated29M05 (normalQ Face.tppp))
      topPairingLocalAxis = generated29V05 := by
  norm_num [generated29V05, generated29M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos05 :
    0 < generated29V05 := by
  norm_num [generated29V05]

private theorem generated29Hnext05 :
    generated29M06 = matMul generated29M05 (reflM (normalQ Face.tppp)) := by
  norm_num [generated29M06, generated29M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot06 :
    dot (matVec generated29M06 (normalQ Face.tmmm))
      topPairingLocalAxis = generated29V06 := by
  norm_num [generated29V06, generated29M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos06 :
    0 < generated29V06 := by
  norm_num [generated29V06]

private theorem generated29Hnext06 :
    generated29M07 = matMul generated29M06 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated29M07, generated29M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot07 :
    dot (matVec generated29M07 (normalQ Face.tpmp))
      topPairingLocalAxis = generated29V07 := by
  norm_num [generated29V07, generated29M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos07 :
    0 < generated29V07 := by
  norm_num [generated29V07]

private theorem generated29Hnext07 :
    generated29M08 = matMul generated29M07 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated29M08, generated29M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot08 :
    dot (matVec generated29M08 (normalQ Face.yp))
      topPairingLocalAxis = generated29V08 := by
  norm_num [generated29V08, generated29M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos08 :
    0 < generated29V08 := by
  norm_num [generated29V08]

private theorem generated29Hnext08 :
    generated29M09 = matMul generated29M08 (reflM (normalQ Face.yp)) := by
  norm_num [generated29M09, generated29M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot09 :
    dot (matVec generated29M09 (normalQ Face.tmpp))
      topPairingLocalAxis = generated29V09 := by
  norm_num [generated29V09, generated29M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos09 :
    0 < generated29V09 := by
  norm_num [generated29V09]

private theorem generated29Hnext09 :
    generated29M10 = matMul generated29M09 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated29M10, generated29M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot10 :
    dot (matVec generated29M10 (normalQ Face.zm))
      topPairingLocalAxis = generated29V10 := by
  norm_num [generated29V10, generated29M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos10 :
    0 < generated29V10 := by
  norm_num [generated29V10]

private theorem generated29Hnext10 :
    generated29M11 = matMul generated29M10 (reflM (normalQ Face.zm)) := by
  norm_num [generated29M11, generated29M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot11 :
    dot (matVec generated29M11 (normalQ Face.zp))
      topPairingLocalAxis = generated29V11 := by
  norm_num [generated29V11, generated29M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos11 :
    0 < generated29V11 := by
  norm_num [generated29V11]

private theorem generated29Hnext11 :
    generated29M12 = matMul generated29M11 (reflM (normalQ Face.zp)) := by
  norm_num [generated29M12, generated29M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot12 :
    dot (matVec generated29M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated29V12 := by
  norm_num [generated29V12, generated29M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos12 :
    0 < generated29V12 := by
  norm_num [generated29V12]

private theorem generated29Hnext12 :
    generated29M13 = matMul generated29M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated29M13, generated29M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29Hdot13 :
    dot (matVec generated29M13 (normalQ Face.xp))
      topPairingLocalAxis = generated29V13 := by
  norm_num [generated29V13, generated29M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated29Hpos13 :
    0 < generated29V13 := by
  norm_num [generated29V13]

private theorem generated29Hnext13 :
    generated29M14 = matMul generated29M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated29M14, generated29M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated29LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated29ContributionLabels :=
  generated29LocalAxisTraceOfGeneratedStates
    generated29Hdot00
    generated29Hpos00
    generated29Hnext00
    generated29Hdot01
    generated29Hpos01
    generated29Hnext01
    generated29Hdot02
    generated29Hpos02
    generated29Hnext02
    generated29Hdot03
    generated29Hpos03
    generated29Hnext03
    generated29Hdot04
    generated29Hpos04
    generated29Hnext04
    generated29Hdot05
    generated29Hpos05
    generated29Hnext05
    generated29Hdot06
    generated29Hpos06
    generated29Hnext06
    generated29Hdot07
    generated29Hpos07
    generated29Hnext07
    generated29Hdot08
    generated29Hpos08
    generated29Hnext08
    generated29Hdot09
    generated29Hpos09
    generated29Hnext09
    generated29Hdot10
    generated29Hpos10
    generated29Hnext10
    generated29Hdot11
    generated29Hpos11
    generated29Hnext11
    generated29Hdot12
    generated29Hpos12
    generated29Hnext12
    generated29Hdot13
    generated29Hpos13
    generated29Hnext13


theorem generated29ClosedLanguageOfPositiveTemplateTrace
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
        generated29ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated29ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated29ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated29SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated29ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated29ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated29ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated29ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated29SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated29ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated29ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated29ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated29SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated29ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated29ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated29ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated29ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated29ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated29ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated29ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated29ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated29ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated29ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated29LocalAxisTraceConcrete
    canonicalBadFace

theorem generated29ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated29ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated29ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated29LocalAxisTraceConcrete
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated29ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated29ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated29LocalAxisTraceConcrete
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated29ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated29ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated29LocalAxisTraceConcrete
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated29ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated29ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated29LocalAxisTraceConcrete
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated29ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated29ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated29ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated29ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated29Rank generated29ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated29Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated29Rank seq badFace :=
  generated29ClosedLanguageForSeqOfGeneratedForcedSeq
    generated29ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated29ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated29Rank generated29ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated29Rank) :
    TopPairingClosedLanguageForSeq generated29Rank seq Face.ym :=
  generated29ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated29CanonicalBadFaceCompatible

theorem generated29ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated29Rank generated29ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated29Rank seq Face.ym :=
  generated29ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated29TopPairingLanguageAtRank

theorem generated29GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke29
