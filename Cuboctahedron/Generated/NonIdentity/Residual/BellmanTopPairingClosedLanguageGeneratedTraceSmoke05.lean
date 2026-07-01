import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke05

open Cuboctahedron

private def generated05ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.zp, Face.zm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generated05ContributionLabels_length :
    generated05ContributionLabels.length = 14 := by
  rfl

private theorem generated05ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated05ContributionLabels := by
  unfold generated05ContributionLabels
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

private theorem generated05ScheduleLabels :
    TopPairingStepScheduleLabels generated05ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated05ContributionLabels_length generated05ScheduleTrace

private theorem generated05SquareGapTrace :
    TopPairingSquareGapFrom 0 generated05ContributionLabels := by
  unfold generated05ContributionLabels
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
  exact topPairingSquareGapFrom_nil

private theorem generated05SquareGapLabels :
    TopPairingSquareGapLabels generated05ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated05SquareGapTrace

private theorem generated05LocalAxisTraceOfGeneratedStates
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
      dot (matVec m02 (normalQ Face.yp))
        topPairingLocalAxis = v02)
    (hpos02 : 0 < v02)
    (hnext02 :
      m03 = matMul m02 (reflM (normalQ Face.yp)))
    (hdot03 :
      dot (matVec m03 (normalQ Face.tmmm))
        topPairingLocalAxis = v03)
    (hpos03 : 0 < v03)
    (hnext03 :
      m04 = matMul m03 (reflM (normalQ Face.tmmm)))
    (hdot04 :
      dot (matVec m04 (normalQ Face.tpmm))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.tpmm)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.tppm))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.tppm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated05ContributionLabels := by
  unfold generated05ContributionLabels
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

def generated05ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmmm
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.zm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private theorem generated05ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated05ForcedSeq = generated05ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated05ForcedSeq generated05ContributionLabels
  rfl

def generated05Rank : Fin numPairWords :=
  ⟨42247, by decide⟩

private theorem generated05ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated05ForcedSeq) = some generated05Rank := by
  decide

private theorem generated05ForcedSeq_unrank_pairword :
    unrankPairWord generated05Rank = pairWordOfSeq generated05ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated05ForcedSeq)
      generated05Rank).1 generated05ForcedSeq_rank).symm

private theorem generated05ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated05Rank) generated05ForcedSeq := by
  rw [generated05ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated05ForcedSeq

private theorem generated05TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated05Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated05ForcedSeq_unrank_pairword]
  rfl

private theorem generated05CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated05M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated05M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated05M03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated05M04 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generated05M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generated05M06 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated05M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }

private def generated05M08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated05M09 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generated05M10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generated05M11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generated05M12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generated05M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated05M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated05V00 : Rat :=
  1

private def generated05V01 : Rat :=
  1

private def generated05V02 : Rat :=
  1

private def generated05V03 : Rat :=
  3

private def generated05V04 : Rat :=
  3

private def generated05V05 : Rat :=
  3

private def generated05V06 : Rat :=
  3

private def generated05V07 : Rat :=
  3

private def generated05V08 : Rat :=
  1

private def generated05V09 : Rat :=
  1

private def generated05V10 : Rat :=
  3

private def generated05V11 : Rat :=
  3

private def generated05V12 : Rat :=
  3

private def generated05V13 : Rat :=
  1

private theorem generated05Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated05V00 := by
  norm_num [generated05V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos00 :
    0 < generated05V00 := by
  norm_num [generated05V00]

private theorem generated05Hnext00 :
    generated05M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated05M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot01 :
    dot (matVec generated05M01 (normalQ Face.ym))
      topPairingLocalAxis = generated05V01 := by
  norm_num [generated05V01, generated05M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos01 :
    0 < generated05V01 := by
  norm_num [generated05V01]

private theorem generated05Hnext01 :
    generated05M02 = matMul generated05M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated05M02, generated05M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot02 :
    dot (matVec generated05M02 (normalQ Face.yp))
      topPairingLocalAxis = generated05V02 := by
  norm_num [generated05V02, generated05M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos02 :
    0 < generated05V02 := by
  norm_num [generated05V02]

private theorem generated05Hnext02 :
    generated05M03 = matMul generated05M02 (reflM (normalQ Face.yp)) := by
  norm_num [generated05M03, generated05M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot03 :
    dot (matVec generated05M03 (normalQ Face.tmmm))
      topPairingLocalAxis = generated05V03 := by
  norm_num [generated05V03, generated05M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos03 :
    0 < generated05V03 := by
  norm_num [generated05V03]

private theorem generated05Hnext03 :
    generated05M04 = matMul generated05M03 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated05M04, generated05M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot04 :
    dot (matVec generated05M04 (normalQ Face.tpmm))
      topPairingLocalAxis = generated05V04 := by
  norm_num [generated05V04, generated05M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos04 :
    0 < generated05V04 := by
  norm_num [generated05V04]

private theorem generated05Hnext04 :
    generated05M05 = matMul generated05M04 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated05M05, generated05M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot05 :
    dot (matVec generated05M05 (normalQ Face.tppm))
      topPairingLocalAxis = generated05V05 := by
  norm_num [generated05V05, generated05M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos05 :
    0 < generated05V05 := by
  norm_num [generated05V05]

private theorem generated05Hnext05 :
    generated05M06 = matMul generated05M05 (reflM (normalQ Face.tppm)) := by
  norm_num [generated05M06, generated05M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot06 :
    dot (matVec generated05M06 (normalQ Face.zp))
      topPairingLocalAxis = generated05V06 := by
  norm_num [generated05V06, generated05M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos06 :
    0 < generated05V06 := by
  norm_num [generated05V06]

private theorem generated05Hnext06 :
    generated05M07 = matMul generated05M06 (reflM (normalQ Face.zp)) := by
  norm_num [generated05M07, generated05M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot07 :
    dot (matVec generated05M07 (normalQ Face.zm))
      topPairingLocalAxis = generated05V07 := by
  norm_num [generated05V07, generated05M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos07 :
    0 < generated05V07 := by
  norm_num [generated05V07]

private theorem generated05Hnext07 :
    generated05M08 = matMul generated05M07 (reflM (normalQ Face.zm)) := by
  norm_num [generated05M08, generated05M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot08 :
    dot (matVec generated05M08 (normalQ Face.tpmp))
      topPairingLocalAxis = generated05V08 := by
  norm_num [generated05V08, generated05M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos08 :
    0 < generated05V08 := by
  norm_num [generated05V08]

private theorem generated05Hnext08 :
    generated05M09 = matMul generated05M08 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated05M09, generated05M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot09 :
    dot (matVec generated05M09 (normalQ Face.tmpm))
      topPairingLocalAxis = generated05V09 := by
  norm_num [generated05V09, generated05M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos09 :
    0 < generated05V09 := by
  norm_num [generated05V09]

private theorem generated05Hnext09 :
    generated05M10 = matMul generated05M09 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated05M10, generated05M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot10 :
    dot (matVec generated05M10 (normalQ Face.tppp))
      topPairingLocalAxis = generated05V10 := by
  norm_num [generated05V10, generated05M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos10 :
    0 < generated05V10 := by
  norm_num [generated05V10]

private theorem generated05Hnext10 :
    generated05M11 = matMul generated05M10 (reflM (normalQ Face.tppp)) := by
  norm_num [generated05M11, generated05M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot11 :
    dot (matVec generated05M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated05V11 := by
  norm_num [generated05V11, generated05M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos11 :
    0 < generated05V11 := by
  norm_num [generated05V11]

private theorem generated05Hnext11 :
    generated05M12 = matMul generated05M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated05M12, generated05M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot12 :
    dot (matVec generated05M12 (normalQ Face.tmmp))
      topPairingLocalAxis = generated05V12 := by
  norm_num [generated05V12, generated05M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos12 :
    0 < generated05V12 := by
  norm_num [generated05V12]

private theorem generated05Hnext12 :
    generated05M13 = matMul generated05M12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated05M13, generated05M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05Hdot13 :
    dot (matVec generated05M13 (normalQ Face.xp))
      topPairingLocalAxis = generated05V13 := by
  norm_num [generated05V13, generated05M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated05Hpos13 :
    0 < generated05V13 := by
  norm_num [generated05V13]

private theorem generated05Hnext13 :
    generated05M14 = matMul generated05M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated05M14, generated05M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated05LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated05ContributionLabels :=
  generated05LocalAxisTraceOfGeneratedStates
    generated05Hdot00
    generated05Hpos00
    generated05Hnext00
    generated05Hdot01
    generated05Hpos01
    generated05Hnext01
    generated05Hdot02
    generated05Hpos02
    generated05Hnext02
    generated05Hdot03
    generated05Hpos03
    generated05Hnext03
    generated05Hdot04
    generated05Hpos04
    generated05Hnext04
    generated05Hdot05
    generated05Hpos05
    generated05Hnext05
    generated05Hdot06
    generated05Hpos06
    generated05Hnext06
    generated05Hdot07
    generated05Hpos07
    generated05Hnext07
    generated05Hdot08
    generated05Hpos08
    generated05Hnext08
    generated05Hdot09
    generated05Hpos09
    generated05Hnext09
    generated05Hdot10
    generated05Hpos10
    generated05Hnext10
    generated05Hdot11
    generated05Hpos11
    generated05Hnext11
    generated05Hdot12
    generated05Hpos12
    generated05Hnext12
    generated05Hdot13
    generated05Hpos13
    generated05Hnext13


theorem generated05ClosedLanguageOfPositiveTemplateTrace
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
        generated05ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated05ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated05ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated05SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated05ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated05ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated05ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated05ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated05SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated05ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated05ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated05ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated05SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated05ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated05ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated05ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated05ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated05ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated05ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated05ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated05ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated05ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated05ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated05LocalAxisTraceConcrete
    canonicalBadFace

theorem generated05ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated05ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated05ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated05LocalAxisTraceConcrete
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated05ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated05ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated05LocalAxisTraceConcrete
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated05ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated05ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated05LocalAxisTraceConcrete
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated05ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated05ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated05LocalAxisTraceConcrete
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated05ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated05ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated05ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated05ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated05Rank generated05ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated05Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated05Rank seq badFace :=
  generated05ClosedLanguageForSeqOfGeneratedForcedSeq
    generated05ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated05ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated05Rank generated05ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated05Rank) :
    TopPairingClosedLanguageForSeq generated05Rank seq Face.ym :=
  generated05ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated05CanonicalBadFaceCompatible

theorem generated05ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated05Rank generated05ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated05Rank seq Face.ym :=
  generated05ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated05TopPairingLanguageAtRank

theorem generated05GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke05
