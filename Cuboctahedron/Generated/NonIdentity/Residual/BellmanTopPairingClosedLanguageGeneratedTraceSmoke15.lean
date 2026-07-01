import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke15

open Cuboctahedron

private def generated15ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]

private theorem generated15ContributionLabels_length :
    generated15ContributionLabels.length = 14 := by
  rfl

private theorem generated15ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated15ContributionLabels := by
  unfold generated15ContributionLabels
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

private theorem generated15ScheduleLabels :
    TopPairingStepScheduleLabels generated15ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated15ContributionLabels_length generated15ScheduleTrace

private theorem generated15SquareGapTrace :
    TopPairingSquareGapFrom 0 generated15ContributionLabels := by
  unfold generated15ContributionLabels
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
  apply topPairingSquareGapFrom_cons_square
  · rfl
  · simp [topPairingAllowedSquareFacesAtGap]
  exact topPairingSquareGapFrom_nil

private theorem generated15SquareGapLabels :
    TopPairingSquareGapLabels generated15ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated15SquareGapTrace

private theorem generated15LocalAxisTraceOfGeneratedStates
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
      dot (matVec m04 (normalQ Face.tmpm))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.tmpm)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.tppm))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.tppm)))
    (hdot06 :
      dot (matVec m06 (normalQ Face.tpmm))
        topPairingLocalAxis = v06)
    (hpos06 : 0 < v06)
    (hnext06 :
      m07 = matMul m06 (reflM (normalQ Face.tpmm)))
    (hdot07 :
      dot (matVec m07 (normalQ Face.tppp))
        topPairingLocalAxis = v07)
    (hpos07 : 0 < v07)
    (hnext07 :
      m08 = matMul m07 (reflM (normalQ Face.tppp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated15ContributionLabels := by
  unfold generated15ContributionLabels
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

def generated15ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.zm
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.tmpm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.yp

private theorem generated15ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated15ForcedSeq = generated15ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated15ForcedSeq generated15ContributionLabels
  rfl

def generated15Rank : Fin numPairWords :=
  ⟨151569, by decide⟩

private theorem generated15ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated15ForcedSeq) = some generated15Rank := by
  decide

private theorem generated15ForcedSeq_unrank_pairword :
    unrankPairWord generated15Rank = pairWordOfSeq generated15ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated15ForcedSeq)
      generated15Rank).1 generated15ForcedSeq_rank).symm

private theorem generated15ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated15Rank) generated15ForcedSeq := by
  rw [generated15ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated15ForcedSeq

private theorem generated15TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated15Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated15ForcedSeq_unrank_pairword]
  rfl

private theorem generated15CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated15M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated15M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated15M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated15M04 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated15M05 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated15M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated15M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated15M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated15M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated15M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated15M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated15M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated15M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated15M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated15V00 : Rat :=
  1

private def generated15V01 : Rat :=
  1

private def generated15V02 : Rat :=
  3

private def generated15V03 : Rat :=
  3

private def generated15V04 : Rat :=
  3

private def generated15V05 : Rat :=
  3

private def generated15V06 : Rat :=
  3

private def generated15V07 : Rat :=
  1

private def generated15V08 : Rat :=
  1

private def generated15V09 : Rat :=
  3

private def generated15V10 : Rat :=
  3

private def generated15V11 : Rat :=
  3

private def generated15V12 : Rat :=
  1

private def generated15V13 : Rat :=
  1

private theorem generated15Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated15V00 := by
  norm_num [generated15V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos00 :
    0 < generated15V00 := by
  norm_num [generated15V00]

private theorem generated15Hnext00 :
    generated15M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated15M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot01 :
    dot (matVec generated15M01 (normalQ Face.ym))
      topPairingLocalAxis = generated15V01 := by
  norm_num [generated15V01, generated15M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos01 :
    0 < generated15V01 := by
  norm_num [generated15V01]

private theorem generated15Hnext01 :
    generated15M02 = matMul generated15M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated15M02, generated15M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot02 :
    dot (matVec generated15M02 (normalQ Face.zm))
      topPairingLocalAxis = generated15V02 := by
  norm_num [generated15V02, generated15M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos02 :
    0 < generated15V02 := by
  norm_num [generated15V02]

private theorem generated15Hnext02 :
    generated15M03 = matMul generated15M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated15M03, generated15M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot03 :
    dot (matVec generated15M03 (normalQ Face.zp))
      topPairingLocalAxis = generated15V03 := by
  norm_num [generated15V03, generated15M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos03 :
    0 < generated15V03 := by
  norm_num [generated15V03]

private theorem generated15Hnext03 :
    generated15M04 = matMul generated15M03 (reflM (normalQ Face.zp)) := by
  norm_num [generated15M04, generated15M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot04 :
    dot (matVec generated15M04 (normalQ Face.tmpm))
      topPairingLocalAxis = generated15V04 := by
  norm_num [generated15V04, generated15M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos04 :
    0 < generated15V04 := by
  norm_num [generated15V04]

private theorem generated15Hnext04 :
    generated15M05 = matMul generated15M04 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated15M05, generated15M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot05 :
    dot (matVec generated15M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated15V05 := by
  norm_num [generated15V05, generated15M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos05 :
    0 < generated15V05 := by
  norm_num [generated15V05]

private theorem generated15Hnext05 :
    generated15M06 = matMul generated15M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated15M06, generated15M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot06 :
    dot (matVec generated15M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated15V06 := by
  norm_num [generated15V06, generated15M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos06 :
    0 < generated15V06 := by
  norm_num [generated15V06]

private theorem generated15Hnext06 :
    generated15M07 = matMul generated15M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated15M07, generated15M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot07 :
    dot (matVec generated15M07 (normalQ Face.tppp))
      topPairingLocalAxis = generated15V07 := by
  norm_num [generated15V07, generated15M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos07 :
    0 < generated15V07 := by
  norm_num [generated15V07]

private theorem generated15Hnext07 :
    generated15M08 = matMul generated15M07 (reflM (normalQ Face.tppp)) := by
  norm_num [generated15M08, generated15M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot08 :
    dot (matVec generated15M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated15V08 := by
  norm_num [generated15V08, generated15M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos08 :
    0 < generated15V08 := by
  norm_num [generated15V08]

private theorem generated15Hnext08 :
    generated15M09 = matMul generated15M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated15M09, generated15M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot09 :
    dot (matVec generated15M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated15V09 := by
  norm_num [generated15V09, generated15M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos09 :
    0 < generated15V09 := by
  norm_num [generated15V09]

private theorem generated15Hnext09 :
    generated15M10 = matMul generated15M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated15M10, generated15M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot10 :
    dot (matVec generated15M10 (normalQ Face.tmmp))
      topPairingLocalAxis = generated15V10 := by
  norm_num [generated15V10, generated15M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos10 :
    0 < generated15V10 := by
  norm_num [generated15V10]

private theorem generated15Hnext10 :
    generated15M11 = matMul generated15M10 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated15M11, generated15M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot11 :
    dot (matVec generated15M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated15V11 := by
  norm_num [generated15V11, generated15M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos11 :
    0 < generated15V11 := by
  norm_num [generated15V11]

private theorem generated15Hnext11 :
    generated15M12 = matMul generated15M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated15M12, generated15M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot12 :
    dot (matVec generated15M12 (normalQ Face.yp))
      topPairingLocalAxis = generated15V12 := by
  norm_num [generated15V12, generated15M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos12 :
    0 < generated15V12 := by
  norm_num [generated15V12]

private theorem generated15Hnext12 :
    generated15M13 = matMul generated15M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated15M13, generated15M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15Hdot13 :
    dot (matVec generated15M13 (normalQ Face.xp))
      topPairingLocalAxis = generated15V13 := by
  norm_num [generated15V13, generated15M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated15Hpos13 :
    0 < generated15V13 := by
  norm_num [generated15V13]

private theorem generated15Hnext13 :
    generated15M14 = matMul generated15M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated15M14, generated15M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated15LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated15ContributionLabels :=
  generated15LocalAxisTraceOfGeneratedStates
    generated15Hdot00
    generated15Hpos00
    generated15Hnext00
    generated15Hdot01
    generated15Hpos01
    generated15Hnext01
    generated15Hdot02
    generated15Hpos02
    generated15Hnext02
    generated15Hdot03
    generated15Hpos03
    generated15Hnext03
    generated15Hdot04
    generated15Hpos04
    generated15Hnext04
    generated15Hdot05
    generated15Hpos05
    generated15Hnext05
    generated15Hdot06
    generated15Hpos06
    generated15Hnext06
    generated15Hdot07
    generated15Hpos07
    generated15Hnext07
    generated15Hdot08
    generated15Hpos08
    generated15Hnext08
    generated15Hdot09
    generated15Hpos09
    generated15Hnext09
    generated15Hdot10
    generated15Hpos10
    generated15Hnext10
    generated15Hdot11
    generated15Hpos11
    generated15Hnext11
    generated15Hdot12
    generated15Hpos12
    generated15Hnext12
    generated15Hdot13
    generated15Hpos13
    generated15Hnext13


theorem generated15ClosedLanguageOfPositiveTemplateTrace
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
        generated15ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated15ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated15ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated15SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated15ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated15ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated15ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated15ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated15SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated15ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated15ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated15ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated15SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated15ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated15ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated15ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated15ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated15ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated15ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated15ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated15ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated15ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated15ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated15LocalAxisTraceConcrete
    canonicalBadFace

theorem generated15ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated15ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated15ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated15LocalAxisTraceConcrete
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated15ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated15ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated15LocalAxisTraceConcrete
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated15ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated15ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated15LocalAxisTraceConcrete
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated15ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated15ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated15LocalAxisTraceConcrete
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated15ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated15ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated15ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated15ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated15Rank generated15ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated15Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated15Rank seq badFace :=
  generated15ClosedLanguageForSeqOfGeneratedForcedSeq
    generated15ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated15ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated15Rank generated15ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated15Rank) :
    TopPairingClosedLanguageForSeq generated15Rank seq Face.ym :=
  generated15ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated15CanonicalBadFaceCompatible

theorem generated15ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated15Rank generated15ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated15Rank seq Face.ym :=
  generated15ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated15TopPairingLanguageAtRank

theorem generated15GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke15
