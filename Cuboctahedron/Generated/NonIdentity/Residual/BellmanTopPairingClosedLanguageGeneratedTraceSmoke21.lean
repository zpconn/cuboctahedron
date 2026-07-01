import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke21

open Cuboctahedron

private def generated21ContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]

private theorem generated21ContributionLabels_length :
    generated21ContributionLabels.length = 14 := by
  rfl

private theorem generated21ScheduleTrace :
    TopPairingStepScheduleFrom 0 generated21ContributionLabels := by
  unfold generated21ContributionLabels
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

private theorem generated21ScheduleLabels :
    TopPairingStepScheduleLabels generated21ContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generated21ContributionLabels_length generated21ScheduleTrace

private theorem generated21SquareGapTrace :
    TopPairingSquareGapFrom 0 generated21ContributionLabels := by
  unfold generated21ContributionLabels
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
  exact topPairingSquareGapFrom_nil

private theorem generated21SquareGapLabels :
    TopPairingSquareGapLabels generated21ContributionLabels :=
  topPairingSquareGapLabels_ofFrom generated21SquareGapTrace

private theorem generated21LocalAxisTraceOfGeneratedStates
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
      dot (matVec m04 (normalQ Face.zp))
        topPairingLocalAxis = v04)
    (hpos04 : 0 < v04)
    (hnext04 :
      m05 = matMul m04 (reflM (normalQ Face.zp)))
    (hdot05 :
      dot (matVec m05 (normalQ Face.zm))
        topPairingLocalAxis = v05)
    (hpos05 : 0 < v05)
    (hnext05 :
      m06 = matMul m05 (reflM (normalQ Face.zm)))
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generated21ContributionLabels := by
  unfold generated21ContributionLabels
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

def generated21ForcedSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tppm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.yp

private theorem generated21ForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f)
      generated21ForcedSeq = generated21ContributionLabels := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold generated21ForcedSeq generated21ContributionLabels
  rfl

def generated21Rank : Fin numPairWords :=
  ⟨914499, by decide⟩

private theorem generated21ForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generated21ForcedSeq) = some generated21Rank := by
  decide

private theorem generated21ForcedSeq_unrank_pairword :
    unrankPairWord generated21Rank = pairWordOfSeq generated21ForcedSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq generated21ForcedSeq)
      generated21Rank).1 generated21ForcedSeq_rank).symm

private theorem generated21ForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generated21Rank) generated21ForcedSeq := by
  rw [generated21ForcedSeq_unrank_pairword]
  exact pairWordOfSeq_matches generated21ForcedSeq

private theorem generated21TopPairingLanguageAtRank :
    TopPairingLanguageAtRank generated21Rank := by
  unfold TopPairingLanguageAtRank triangularCancellationSummaryOfPairWord
  rw [generated21ForcedSeq_unrank_pairword]
  rfl

private theorem generated21CanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl


private def generated21M01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated21M02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generated21M03 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (-2/3), m02 := (2/3), m10 := (-2/3), m11 := (-1/3), m12 := (-2/3), m20 := (-2/3), m21 := (2/3), m22 := (1/3) }

private def generated21M04 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated21M05 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (4/9), m10 := (-4/9), m11 := (-1/9), m12 := (8/9), m20 := (-4/9), m21 := (8/9), m22 := (-1/9) }

private def generated21M06 : Mat3 Rat :=
  { m00 := (7/9), m01 := (4/9), m02 := (-4/9), m10 := (-4/9), m11 := (-1/9), m12 := (-8/9), m20 := (-4/9), m21 := (8/9), m22 := (1/9) }

private def generated21M07 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated21M08 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (8/81), m02 := (-64/81), m10 := (-8/81), m11 := (79/81), m12 := (16/81), m20 := (64/81), m21 := (16/81), m22 := (-47/81) }

private def generated21M09 : Mat3 Rat :=
  { m00 := (7/27), m01 := (26/27), m02 := (2/27), m10 := (-22/27), m11 := (7/27), m12 := (-14/27), m20 := (14/27), m21 := (-2/27), m22 := (-23/27) }

private def generated21M10 : Mat3 Rat :=
  { m00 := (55/81), m01 := (44/81), m02 := (40/81), m10 := (20/81), m11 := (-65/81), m12 := (44/81), m20 := (56/81), m21 := (-20/81), m22 := (-55/81) }

private def generated21M11 : Mat3 Rat :=
  { m00 := (47/243), m01 := (14/243), m02 := (238/243), m10 := (238/243), m11 := (-17/243), m12 := (-46/243), m20 := (-14/243), m21 := (-242/243), m22 := (17/243) }

private def generated21M12 : Mat3 Rat :=
  { m00 := (551/729), m01 := (-368/729), m02 := (304/729), m10 := (112/729), m11 := (551/729), m12 := (464/729), m20 := (-464/729), m21 := (-304/729), m22 := (473/729) }

private def generated21M13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generated21M14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generated21V00 : Rat :=
  1

private def generated21V01 : Rat :=
  1

private def generated21V02 : Rat :=
  3

private def generated21V03 : Rat :=
  3

private def generated21V04 : Rat :=
  1

private def generated21V05 : Rat :=
  1

private def generated21V06 : Rat :=
  3

private def generated21V07 : Rat :=
  1

private def generated21V08 : Rat :=
  1

private def generated21V09 : Rat :=
  3

private def generated21V10 : Rat :=
  3

private def generated21V11 : Rat :=
  3

private def generated21V12 : Rat :=
  1

private def generated21V13 : Rat :=
  1

private theorem generated21Hdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generated21V00 := by
  norm_num [generated21V00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos00 :
    0 < generated21V00 := by
  norm_num [generated21V00]

private theorem generated21Hnext00 :
    generated21M01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generated21M01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot01 :
    dot (matVec generated21M01 (normalQ Face.ym))
      topPairingLocalAxis = generated21V01 := by
  norm_num [generated21V01, generated21M01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos01 :
    0 < generated21V01 := by
  norm_num [generated21V01]

private theorem generated21Hnext01 :
    generated21M02 = matMul generated21M01 (reflM (normalQ Face.ym)) := by
  norm_num [generated21M02, generated21M01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot02 :
    dot (matVec generated21M02 (normalQ Face.tmpm))
      topPairingLocalAxis = generated21V02 := by
  norm_num [generated21V02, generated21M02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos02 :
    0 < generated21V02 := by
  norm_num [generated21V02]

private theorem generated21Hnext02 :
    generated21M03 = matMul generated21M02 (reflM (normalQ Face.tmpm)) := by
  norm_num [generated21M03, generated21M02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot03 :
    dot (matVec generated21M03 (normalQ Face.tppm))
      topPairingLocalAxis = generated21V03 := by
  norm_num [generated21V03, generated21M03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos03 :
    0 < generated21V03 := by
  norm_num [generated21V03]

private theorem generated21Hnext03 :
    generated21M04 = matMul generated21M03 (reflM (normalQ Face.tppm)) := by
  norm_num [generated21M04, generated21M03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot04 :
    dot (matVec generated21M04 (normalQ Face.zp))
      topPairingLocalAxis = generated21V04 := by
  norm_num [generated21V04, generated21M04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos04 :
    0 < generated21V04 := by
  norm_num [generated21V04]

private theorem generated21Hnext04 :
    generated21M05 = matMul generated21M04 (reflM (normalQ Face.zp)) := by
  norm_num [generated21M05, generated21M04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot05 :
    dot (matVec generated21M05 (normalQ Face.zm))
      topPairingLocalAxis = generated21V05 := by
  norm_num [generated21V05, generated21M05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos05 :
    0 < generated21V05 := by
  norm_num [generated21V05]

private theorem generated21Hnext05 :
    generated21M06 = matMul generated21M05 (reflM (normalQ Face.zm)) := by
  norm_num [generated21M06, generated21M05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot06 :
    dot (matVec generated21M06 (normalQ Face.tpmm))
      topPairingLocalAxis = generated21V06 := by
  norm_num [generated21V06, generated21M06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos06 :
    0 < generated21V06 := by
  norm_num [generated21V06]

private theorem generated21Hnext06 :
    generated21M07 = matMul generated21M06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generated21M07, generated21M06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot07 :
    dot (matVec generated21M07 (normalQ Face.tppp))
      topPairingLocalAxis = generated21V07 := by
  norm_num [generated21V07, generated21M07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos07 :
    0 < generated21V07 := by
  norm_num [generated21V07]

private theorem generated21Hnext07 :
    generated21M08 = matMul generated21M07 (reflM (normalQ Face.tppp)) := by
  norm_num [generated21M08, generated21M07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot08 :
    dot (matVec generated21M08 (normalQ Face.tmmm))
      topPairingLocalAxis = generated21V08 := by
  norm_num [generated21V08, generated21M08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos08 :
    0 < generated21V08 := by
  norm_num [generated21V08]

private theorem generated21Hnext08 :
    generated21M09 = matMul generated21M08 (reflM (normalQ Face.tmmm)) := by
  norm_num [generated21M09, generated21M08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot09 :
    dot (matVec generated21M09 (normalQ Face.tpmp))
      topPairingLocalAxis = generated21V09 := by
  norm_num [generated21V09, generated21M09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos09 :
    0 < generated21V09 := by
  norm_num [generated21V09]

private theorem generated21Hnext09 :
    generated21M10 = matMul generated21M09 (reflM (normalQ Face.tpmp)) := by
  norm_num [generated21M10, generated21M09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot10 :
    dot (matVec generated21M10 (normalQ Face.tmmp))
      topPairingLocalAxis = generated21V10 := by
  norm_num [generated21V10, generated21M10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos10 :
    0 < generated21V10 := by
  norm_num [generated21V10]

private theorem generated21Hnext10 :
    generated21M11 = matMul generated21M10 (reflM (normalQ Face.tmmp)) := by
  norm_num [generated21M11, generated21M10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot11 :
    dot (matVec generated21M11 (normalQ Face.tmpp))
      topPairingLocalAxis = generated21V11 := by
  norm_num [generated21V11, generated21M11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos11 :
    0 < generated21V11 := by
  norm_num [generated21V11]

private theorem generated21Hnext11 :
    generated21M12 = matMul generated21M11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generated21M12, generated21M11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot12 :
    dot (matVec generated21M12 (normalQ Face.yp))
      topPairingLocalAxis = generated21V12 := by
  norm_num [generated21V12, generated21M12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos12 :
    0 < generated21V12 := by
  norm_num [generated21V12]

private theorem generated21Hnext12 :
    generated21M13 = matMul generated21M12 (reflM (normalQ Face.yp)) := by
  norm_num [generated21M13, generated21M12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21Hdot13 :
    dot (matVec generated21M13 (normalQ Face.xp))
      topPairingLocalAxis = generated21V13 := by
  norm_num [generated21V13, generated21M13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generated21Hpos13 :
    0 < generated21V13 := by
  norm_num [generated21V13]

private theorem generated21Hnext13 :
    generated21M14 = matMul generated21M13 (reflM (normalQ Face.xp)) := by
  norm_num [generated21M14, generated21M13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generated21LocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generated21ContributionLabels :=
  generated21LocalAxisTraceOfGeneratedStates
    generated21Hdot00
    generated21Hpos00
    generated21Hnext00
    generated21Hdot01
    generated21Hpos01
    generated21Hnext01
    generated21Hdot02
    generated21Hpos02
    generated21Hnext02
    generated21Hdot03
    generated21Hpos03
    generated21Hnext03
    generated21Hdot04
    generated21Hpos04
    generated21Hnext04
    generated21Hdot05
    generated21Hpos05
    generated21Hnext05
    generated21Hdot06
    generated21Hpos06
    generated21Hnext06
    generated21Hdot07
    generated21Hpos07
    generated21Hnext07
    generated21Hdot08
    generated21Hpos08
    generated21Hnext08
    generated21Hdot09
    generated21Hpos09
    generated21Hnext09
    generated21Hdot10
    generated21Hpos10
    generated21Hnext10
    generated21Hdot11
    generated21Hpos11
    generated21Hnext11
    generated21Hdot12
    generated21Hpos12
    generated21Hnext12
    generated21Hdot13
    generated21Hpos13
    generated21Hnext13


theorem generated21ClosedLanguageOfPositiveTemplateTrace
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
        generated21ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated21ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated21ScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generated21SquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated21ClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated21ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated21ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated21ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated21SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated21ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated21ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generated21ScheduleLabels)
    (by
      rw [labels_eq]
      exact generated21SquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated21ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated21ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generated21ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated21ClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated21ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generated21ContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generated21ClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generated21ClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generated21ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated21ClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generated21LocalAxisTraceConcrete
    canonicalBadFace

theorem generated21ClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generated21ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generated21ClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generated21LocalAxisTraceConcrete
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generated21ContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated21ClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generated21LocalAxisTraceConcrete
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated21ContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated21ClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generated21LocalAxisTraceConcrete
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generated21ContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated21ClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generated21LocalAxisTraceConcrete
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfGeneratedForcedSeq
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) generated21ForcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank generated21ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generated21ClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    generated21ForcedSeq_labels_eq
    forced_matches
    pairSign
    cancellation
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfGeneratedRankPairSign
    {badFace : Face} {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated21Rank generated21ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated21Rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq generated21Rank seq badFace :=
  generated21ClosedLanguageForSeqOfGeneratedForcedSeq
    generated21ForcedSeq_matches_unrank
    pairSign
    cancellation
    canonicalBadFace

theorem generated21ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated21Rank generated21ForcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank generated21Rank) :
    TopPairingClosedLanguageForSeq generated21Rank seq Face.ym :=
  generated21ClosedLanguageForSeqOfGeneratedRankPairSign
    pairSign
    cancellation
    generated21CanonicalBadFaceCompatible

theorem generated21ClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
    {seq : Step14 -> Face}
    (pairSign :
      PairSignLanguageAtRank generated21Rank generated21ForcedSeq seq) :
    TopPairingClosedLanguageForSeq generated21Rank seq Face.ym :=
  generated21ClosedLanguageForSeqOfGeneratedRankPairSignBadFace
    pairSign
    generated21TopPairingLanguageAtRank

theorem generated21GeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke21
