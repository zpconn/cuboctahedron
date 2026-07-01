import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke14

open Cuboctahedron

private def generated14ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated14ContributionLabels_length :
    generated14ContributionLabels.length = 14 := by
  rfl

private theorem generated14ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated14ContributionLabels := by
  unfold generated14ContributionLabels
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

private theorem generated14ScheduleLabels :
    TopPairingStepScheduleLabels generated14ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated14ContributionLabels_length generated14ScheduleTrace

private theorem generated14SquareGapTrace :
    TopPairingSquareGapFrom 0 generated14ContributionLabels := by
  unfold generated14ContributionLabels
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

private theorem generated14SquareGapLabels :
    TopPairingSquareGapLabels generated14ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated14SquareGapTrace

private theorem generated14LocalAxisTraceOfGeneratedStates
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
      dot (matVec m10 (normalQ Face.yp))
        topPairingLocalAxis = v10)
    (hpos10 : 0 < v10)
    (hnext10 :
      m11 = matMul m10 (reflM (normalQ Face.yp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated14ContributionLabels := by
  unfold generated14ContributionLabels
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

def generated14ForcedSeq : Step14 -> Face
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
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated14ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated14ForcedSeq = generated14ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated14ForcedSeq generated14ContributionLabels
  rfl

def generated14Rank : Fin numPairWords :=
  ⟨151567, by decide⟩

private theorem generated14ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated14ForcedSeq) = some generated14Rank := by
  decide

private theorem generated14ForcedSeq_unrank_pairword :
    unrankPairWord generated14Rank = pairWordOfSeq generated14ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated14ForcedSeq)
      generated14Rank).1 generated14ForcedSeq_rank).symm

private theorem generated14ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated14Rank) generated14ForcedSeq := by
  rw [generated14ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated14ForcedSeq

private theorem generated14TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated14Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated14ForcedSeq_unrank_pairword]
  rfl

private theorem generated14CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated14M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated14M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated14M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generated14M04 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated14M05 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated14M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated14M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated14M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated14M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated14M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated14M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated14M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated14M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated14M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated14V00 : Rat :=
  1

private def generated14V01 : Rat :=
  1

private def generated14V02 : Rat :=
  3

private def generated14V03 : Rat :=
  3

private def generated14V04 : Rat :=
  3

private def generated14V05 : Rat :=
  3

private def generated14V06 : Rat :=
  3

private def generated14V07 : Rat :=
  1

private def generated14V08 : Rat :=
  1

private def generated14V09 : Rat :=
  3

private def generated14V10 : Rat :=
  1

private def generated14V11 : Rat :=
  3

private def generated14V12 : Rat :=
  3

private def generated14V13 : Rat :=
  1

private theorem generated14Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated14V00 := by
  norm_num [generated14V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos00 :
    0 < generated14V00 := by
  norm_num [generated14V00]

private theorem generated14Hnext00 :
    generated14M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated14M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot01 :
    dot (matVec generated14M01 (normalQ Face.ym))
      topPairingLocalAxis = generated14V01 := by
  norm_num [generated14V01, generated14M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos01 :
    0 < generated14V01 := by
  norm_num [generated14V01]

private theorem generated14Hnext01 :
    generated14M02 = matMul generated14M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated14M02, generated14M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot02 :
    dot (matVec generated14M02 (normalQ Face.zm))
      topPairingLocalAxis = generated14V02 := by
  norm_num [generated14V02, generated14M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos02 :
    0 < generated14V02 := by
  norm_num [generated14V02]

private theorem generated14Hnext02 :
    generated14M03 = matMul generated14M02 (reflM (normalQ Face.zm)) := by
  norm_num [generated14M03, generated14M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot03 :
    dot (matVec generated14M03 (normalQ Face.zp))
      topPairingLocalAxis = generated14V03 := by
  norm_num [generated14V03, generated14M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos03 :
    0 < generated14V03 := by
  norm_num [generated14V03]

private theorem generated14Hnext03 :
    generated14M04 = matMul generated14M03 (reflM (normalQ Face.zp)) := by
  norm_num [generated14M04, generated14M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot04 :
    dot (matVec generated14M04 (normalQ Face.tmpm))
      topPairingLocalAxis = generated14V04 := by
  norm_num [generated14V04, generated14M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos04 :
    0 < generated14V04 := by
  norm_num [generated14V04]

private theorem generated14Hnext04 :
    generated14M05 = matMul generated14M04 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated14M05, generated14M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot05 :
    dot (matVec generated14M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated14V05 := by
  norm_num [generated14V05, generated14M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos05 :
    0 < generated14V05 := by
  norm_num [generated14V05]

private theorem generated14Hnext05 :
    generated14M06 = matMul generated14M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated14M06, generated14M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot06 :
    dot (matVec generated14M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated14V06 := by
  norm_num [generated14V06, generated14M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos06 :
    0 < generated14V06 := by
  norm_num [generated14V06]

private theorem generated14Hnext06 :
    generated14M07 = matMul generated14M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated14M07, generated14M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot07 :
    dot (matVec generated14M07 (normalQ Face.tppp))
      topPairingLocalAxis = generated14V07 := by
  norm_num [generated14V07, generated14M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos07 :
    0 < generated14V07 := by
  norm_num [generated14V07]

private theorem generated14Hnext07 :
    generated14M08 = matMul generated14M07 (reflM (normalQ Face.tppp)) := by
  norm_num [generated14M08, generated14M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot08 :
    dot (matVec generated14M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated14V08 := by
  norm_num [generated14V08, generated14M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos08 :
    0 < generated14V08 := by
  norm_num [generated14V08]

private theorem generated14Hnext08 :
    generated14M09 = matMul generated14M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated14M09, generated14M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot09 :
    dot (matVec generated14M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated14V09 := by
  norm_num [generated14V09, generated14M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos09 :
    0 < generated14V09 := by
  norm_num [generated14V09]

private theorem generated14Hnext09 :
    generated14M10 = matMul generated14M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated14M10, generated14M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot10 :
    dot (matVec generated14M10 (normalQ Face.yp))
      topPairingLocalAxis = generated14V10 := by
  norm_num [generated14V10, generated14M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos10 :
    0 < generated14V10 := by
  norm_num [generated14V10]

private theorem generated14Hnext10 :
    generated14M11 = matMul generated14M10 (reflM (normalQ Face.yp)) := by
  norm_num [generated14M11, generated14M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot11 :
    dot (matVec generated14M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated14V11 := by
  norm_num [generated14V11, generated14M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos11 :
    0 < generated14V11 := by
  norm_num [generated14V11]

private theorem generated14Hnext11 :
    generated14M12 = matMul generated14M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated14M12, generated14M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot12 :
    dot (matVec generated14M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated14V12 := by
  norm_num [generated14V12, generated14M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos12 :
    0 < generated14V12 := by
  norm_num [generated14V12]

private theorem generated14Hnext12 :
    generated14M13 = matMul generated14M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated14M13, generated14M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14Hdot13 :
    dot (matVec generated14M13 (normalQ Face.xp))
      topPairingLocalAxis = generated14V13 := by
  norm_num [generated14V13, generated14M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated14Hpos13 :
    0 < generated14V13 := by
  norm_num [generated14V13]

private theorem generated14Hnext13 :
    generated14M14 = matMul generated14M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated14M14, generated14M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated14LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated14ContributionLabels :=
  generated14LocalAxisTraceOfGeneratedStates
    generated14Hdot00
    generated14Hpos00
    generated14Hnext00
    generated14Hdot01
    generated14Hpos01
    generated14Hnext01
    generated14Hdot02
    generated14Hpos02
    generated14Hnext02
    generated14Hdot03
    generated14Hpos03
    generated14Hnext03
    generated14Hdot04
    generated14Hpos04
    generated14Hnext04
    generated14Hdot05
    generated14Hpos05
    generated14Hnext05
    generated14Hdot06
    generated14Hpos06
    generated14Hnext06
    generated14Hdot07
    generated14Hpos07
    generated14Hnext07
    generated14Hdot08
    generated14Hpos08
    generated14Hnext08
    generated14Hdot09
    generated14Hpos09
    generated14Hnext09
    generated14Hdot10
    generated14Hpos10
    generated14Hnext10
    generated14Hdot11
    generated14Hpos11
    generated14Hnext11
    generated14Hdot12
    generated14Hpos12
    generated14Hnext12
    generated14Hdot13
    generated14Hpos13
    generated14Hnext13


theorem generated14ClosedLanguageOfPositiveTemplateTrace
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
        generated14ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated14ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated14ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated14SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated14ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated14ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated14ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated14ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated14SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated14ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated14ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated14ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated14SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated14ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated14ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated14ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated14ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated14ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated14ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated14ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated14ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated14ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated14ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated14LocalAxisTraceConcrete
    canonicalBadFace

theorem generated14ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated14ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated14ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated14LocalAxisTraceConcrete
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated14ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated14ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated14LocalAxisTraceConcrete
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated14ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated14ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated14LocalAxisTraceConcrete
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated14ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated14ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated14LocalAxisTraceConcrete
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated14ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated14ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated14ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated14ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated14Rank generated14ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated14Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated14Rank seq badFace :=
  generated14ClosedLanguageForSeqOfGeneratedForcedSeq
    generated14ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated14ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated14Rank generated14ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated14Rank) :
    TopPairingClosedLanguageForSeq generated14Rank seq Face.ym :=
  generated14ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated14CanonicalBadFaceCompatible

theorem generated14ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated14Rank generated14ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated14Rank seq Face.ym :=
  generated14ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated14TopPairingLanguageAtRank

theorem generated14GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke14
