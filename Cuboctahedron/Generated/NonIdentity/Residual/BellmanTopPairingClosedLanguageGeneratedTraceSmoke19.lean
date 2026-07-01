import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke19

open Cuboctahedron

private def generated19ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated19ContributionLabels_length :
    generated19ContributionLabels.length = 14 := by
  rfl

private theorem generated19ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated19ContributionLabels := by
  unfold generated19ContributionLabels
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

private theorem generated19ScheduleLabels :
    TopPairingStepScheduleLabels generated19ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated19ContributionLabels_length generated19ScheduleTrace

private theorem generated19SquareGapTrace :
    TopPairingSquareGapFrom 0 generated19ContributionLabels := by
  unfold generated19ContributionLabels
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

private theorem generated19SquareGapLabels :
    TopPairingSquareGapLabels generated19ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated19SquareGapTrace

private theorem generated19LocalAxisTraceOfGeneratedStates
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
      dot (matVec m03 (normalQ Face.zm))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.zm)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.zp))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.zp)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated19ContributionLabels := by
  unfold generated19ContributionLabels
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

def generated19ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.yp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated19ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated19ForcedSeq = generated19ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated19ForcedSeq generated19ContributionLabels
  rfl

def generated19Rank : Fin numPairWords :=
  ⟨824407, by decide⟩

private theorem generated19ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated19ForcedSeq) = some generated19Rank := by
  decide

private theorem generated19ForcedSeq_unrank_pairword :
    unrankPairWord generated19Rank = pairWordOfSeq generated19ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated19ForcedSeq)
      generated19Rank).1 generated19ForcedSeq_rank).symm

private theorem generated19ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated19Rank) generated19ForcedSeq := by
  rw [generated19ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated19ForcedSeq

private theorem generated19TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated19Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated19ForcedSeq_unrank_pairword]
  rfl

private theorem generated19CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated19M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated19M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated19M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated19M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (-2/3), m10 := (-2/3), m11 := (-1/3), m12 := (2/3), m20 := (-2/3), m21 := (2/3), m22 := (-1/3) }

private def generated19M05 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated19M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated19M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated19M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated19M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated19M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated19M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated19M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated19M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated19M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated19V00 : Rat :=
  1

private def generated19V01 : Rat :=
  1

private def generated19V02 : Rat :=
  3

private def generated19V03 : Rat :=
  1

private def generated19V04 : Rat :=
  1

private def generated19V05 : Rat :=
  3

private def generated19V06 : Rat :=
  3

private def generated19V07 : Rat :=
  1

private def generated19V08 : Rat :=
  1

private def generated19V09 : Rat :=
  3

private def generated19V10 : Rat :=
  1

private def generated19V11 : Rat :=
  3

private def generated19V12 : Rat :=
  3

private def generated19V13 : Rat :=
  1

private theorem generated19Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated19V00 := by
  norm_num [generated19V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos00 :
    0 < generated19V00 := by
  norm_num [generated19V00]

private theorem generated19Hnext00 :
    generated19M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated19M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot01 :
    dot (matVec generated19M01 (normalQ Face.ym))
      topPairingLocalAxis = generated19V01 := by
  norm_num [generated19V01, generated19M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos01 :
    0 < generated19V01 := by
  norm_num [generated19V01]

private theorem generated19Hnext01 :
    generated19M02 = matMul generated19M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated19M02, generated19M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot02 :
    dot (matVec generated19M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated19V02 := by
  norm_num [generated19V02, generated19M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos02 :
    0 < generated19V02 := by
  norm_num [generated19V02]

private theorem generated19Hnext02 :
    generated19M03 = matMul generated19M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated19M03, generated19M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot03 :
    dot (matVec generated19M03 (normalQ Face.zm))
      topPairingLocalAxis = generated19V03 := by
  norm_num [generated19V03, generated19M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos03 :
    0 < generated19V03 := by
  norm_num [generated19V03]

private theorem generated19Hnext03 :
    generated19M04 = matMul generated19M03 (reflM (normalQ Face.zm)) := by
  norm_num [generated19M04, generated19M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot04 :
    dot (matVec generated19M04 (normalQ Face.zp))
      topPairingLocalAxis = generated19V04 := by
  norm_num [generated19V04, generated19M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos04 :
    0 < generated19V04 := by
  norm_num [generated19V04]

private theorem generated19Hnext04 :
    generated19M05 = matMul generated19M04 (reflM (normalQ Face.zp)) := by
  norm_num [generated19M05, generated19M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot05 :
    dot (matVec generated19M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated19V05 := by
  norm_num [generated19V05, generated19M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos05 :
    0 < generated19V05 := by
  norm_num [generated19V05]

private theorem generated19Hnext05 :
    generated19M06 = matMul generated19M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated19M06, generated19M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot06 :
    dot (matVec generated19M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated19V06 := by
  norm_num [generated19V06, generated19M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos06 :
    0 < generated19V06 := by
  norm_num [generated19V06]

private theorem generated19Hnext06 :
    generated19M07 = matMul generated19M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated19M07, generated19M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot07 :
    dot (matVec generated19M07 (normalQ Face.tppp))
      topPairingLocalAxis = generated19V07 := by
  norm_num [generated19V07, generated19M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos07 :
    0 < generated19V07 := by
  norm_num [generated19V07]

private theorem generated19Hnext07 :
    generated19M08 = matMul generated19M07 (reflM (normalQ Face.tppp)) := by
  norm_num [generated19M08, generated19M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot08 :
    dot (matVec generated19M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated19V08 := by
  norm_num [generated19V08, generated19M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos08 :
    0 < generated19V08 := by
  norm_num [generated19V08]

private theorem generated19Hnext08 :
    generated19M09 = matMul generated19M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated19M09, generated19M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot09 :
    dot (matVec generated19M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated19V09 := by
  norm_num [generated19V09, generated19M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos09 :
    0 < generated19V09 := by
  norm_num [generated19V09]

private theorem generated19Hnext09 :
    generated19M10 = matMul generated19M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated19M10, generated19M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot10 :
    dot (matVec generated19M10 (normalQ Face.yp))
      topPairingLocalAxis = generated19V10 := by
  norm_num [generated19V10, generated19M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos10 :
    0 < generated19V10 := by
  norm_num [generated19V10]

private theorem generated19Hnext10 :
    generated19M11 = matMul generated19M10 (reflM (normalQ Face.yp)) := by
  norm_num [generated19M11, generated19M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot11 :
    dot (matVec generated19M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated19V11 := by
  norm_num [generated19V11, generated19M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos11 :
    0 < generated19V11 := by
  norm_num [generated19V11]

private theorem generated19Hnext11 :
    generated19M12 = matMul generated19M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated19M12, generated19M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot12 :
    dot (matVec generated19M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated19V12 := by
  norm_num [generated19V12, generated19M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos12 :
    0 < generated19V12 := by
  norm_num [generated19V12]

private theorem generated19Hnext12 :
    generated19M13 = matMul generated19M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated19M13, generated19M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19Hdot13 :
    dot (matVec generated19M13 (normalQ Face.xp))
      topPairingLocalAxis = generated19V13 := by
  norm_num [generated19V13, generated19M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated19Hpos13 :
    0 < generated19V13 := by
  norm_num [generated19V13]

private theorem generated19Hnext13 :
    generated19M14 = matMul generated19M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated19M14, generated19M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated19LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated19ContributionLabels :=
  generated19LocalAxisTraceOfGeneratedStates
    generated19Hdot00
    generated19Hpos00
    generated19Hnext00
    generated19Hdot01
    generated19Hpos01
    generated19Hnext01
    generated19Hdot02
    generated19Hpos02
    generated19Hnext02
    generated19Hdot03
    generated19Hpos03
    generated19Hnext03
    generated19Hdot04
    generated19Hpos04
    generated19Hnext04
    generated19Hdot05
    generated19Hpos05
    generated19Hnext05
    generated19Hdot06
    generated19Hpos06
    generated19Hnext06
    generated19Hdot07
    generated19Hpos07
    generated19Hnext07
    generated19Hdot08
    generated19Hpos08
    generated19Hnext08
    generated19Hdot09
    generated19Hpos09
    generated19Hnext09
    generated19Hdot10
    generated19Hpos10
    generated19Hnext10
    generated19Hdot11
    generated19Hpos11
    generated19Hnext11
    generated19Hdot12
    generated19Hpos12
    generated19Hnext12
    generated19Hdot13
    generated19Hpos13
    generated19Hnext13


theorem generated19ClosedLanguageOfPositiveTemplateTrace
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
        generated19ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated19ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated19ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated19SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated19ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated19ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated19ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated19ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated19SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated19ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated19ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated19ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated19SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated19ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated19ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated19ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated19ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated19ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated19ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated19ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated19ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated19ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated19ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated19LocalAxisTraceConcrete
    canonicalBadFace

theorem generated19ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated19ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated19ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated19LocalAxisTraceConcrete
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated19ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated19ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated19LocalAxisTraceConcrete
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated19ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated19ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated19LocalAxisTraceConcrete
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated19ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated19ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated19LocalAxisTraceConcrete
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated19ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated19ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated19ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated19ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated19Rank generated19ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated19Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated19Rank seq badFace :=
  generated19ClosedLanguageForSeqOfGeneratedForcedSeq
    generated19ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated19ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated19Rank generated19ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated19Rank) :
    TopPairingClosedLanguageForSeq generated19Rank seq Face.ym :=
  generated19ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated19CanonicalBadFaceCompatible

theorem generated19ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated19Rank generated19ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated19Rank seq Face.ym :=
  generated19ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated19TopPairingLanguageAtRank

theorem generated19GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke19
