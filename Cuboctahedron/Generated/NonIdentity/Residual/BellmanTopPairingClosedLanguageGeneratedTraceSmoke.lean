import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Generated-style closed-language trace smoke for the top-pairing
Bellman route.  This file is emitted by
`scripts/emit_bellman_closed_language_trace_smoke.py` and avoids
rank/unrank reductions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke

open Cuboctahedron

private def generatedContributionLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

private theorem generatedContributionLabels_length :
    generatedContributionLabels.length = 14 := by
  rfl

private theorem generatedScheduleTrace :
    TopPairingStepScheduleFrom 0 generatedContributionLabels := by
  unfold generatedContributionLabels
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

private theorem generatedScheduleLabels :
    TopPairingStepScheduleLabels generatedContributionLabels :=
  topPairingStepScheduleLabels_ofFrom
    generatedContributionLabels_length generatedScheduleTrace

private theorem generatedSquareGapTrace :
    TopPairingSquareGapFrom 0 generatedContributionLabels := by
  unfold generatedContributionLabels
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

private theorem generatedSquareGapLabels :
    TopPairingSquareGapLabels generatedContributionLabels :=
  topPairingSquareGapLabels_ofFrom generatedSquareGapTrace

private theorem generatedLocalAxisTraceOfGeneratedStates
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
    : TopPairingLocalAxisFrom (matId : Mat3 Rat) generatedContributionLabels := by
  unfold generatedContributionLabels
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

private def generatedM01 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generatedM02 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generatedM03 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generatedM04 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }

private def generatedM05 : Mat3 Rat :=
  { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }

private def generatedM06 : Mat3 Rat :=
  { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }

private def generatedM07 : Mat3 Rat :=
  { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }

private def generatedM08 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generatedM09 : Mat3 Rat :=
  { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }

private def generatedM10 : Mat3 Rat :=
  { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }

private def generatedM11 : Mat3 Rat :=
  { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }

private def generatedM12 : Mat3 Rat :=
  { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }

private def generatedM13 : Mat3 Rat :=
  { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }

private def generatedM14 : Mat3 Rat :=
  { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }

private def generatedV00 : Rat :=
  1

private def generatedV01 : Rat :=
  1

private def generatedV02 : Rat :=
  1

private def generatedV03 : Rat :=
  3

private def generatedV04 : Rat :=
  3

private def generatedV05 : Rat :=
  3

private def generatedV06 : Rat :=
  3

private def generatedV07 : Rat :=
  3

private def generatedV08 : Rat :=
  1

private def generatedV09 : Rat :=
  1

private def generatedV10 : Rat :=
  3

private def generatedV11 : Rat :=
  3

private def generatedV12 : Rat :=
  3

private def generatedV13 : Rat :=
  1

private theorem generatedHdot00 :
    dot (matVec (matId : Mat3 Rat) (normalQ Face.xm))
      topPairingLocalAxis = generatedV00 := by
  norm_num [generatedV00, matId, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos00 :
    0 < generatedV00 := by
  norm_num [generatedV00]

private theorem generatedHnext00 :
    generatedM01 = matMul (matId : Mat3 Rat) (reflM (normalQ Face.xm)) := by
  norm_num [generatedM01, matId, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot01 :
    dot (matVec generatedM01 (normalQ Face.ym))
      topPairingLocalAxis = generatedV01 := by
  norm_num [generatedV01, generatedM01, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos01 :
    0 < generatedV01 := by
  norm_num [generatedV01]

private theorem generatedHnext01 :
    generatedM02 = matMul generatedM01 (reflM (normalQ Face.ym)) := by
  norm_num [generatedM02, generatedM01, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot02 :
    dot (matVec generatedM02 (normalQ Face.yp))
      topPairingLocalAxis = generatedV02 := by
  norm_num [generatedV02, generatedM02, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos02 :
    0 < generatedV02 := by
  norm_num [generatedV02]

private theorem generatedHnext02 :
    generatedM03 = matMul generatedM02 (reflM (normalQ Face.yp)) := by
  norm_num [generatedM03, generatedM02, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot03 :
    dot (matVec generatedM03 (normalQ Face.zm))
      topPairingLocalAxis = generatedV03 := by
  norm_num [generatedV03, generatedM03, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos03 :
    0 < generatedV03 := by
  norm_num [generatedV03]

private theorem generatedHnext03 :
    generatedM04 = matMul generatedM03 (reflM (normalQ Face.zm)) := by
  norm_num [generatedM04, generatedM03, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot04 :
    dot (matVec generatedM04 (normalQ Face.zp))
      topPairingLocalAxis = generatedV04 := by
  norm_num [generatedV04, generatedM04, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos04 :
    0 < generatedV04 := by
  norm_num [generatedV04]

private theorem generatedHnext04 :
    generatedM05 = matMul generatedM04 (reflM (normalQ Face.zp)) := by
  norm_num [generatedM05, generatedM04, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot05 :
    dot (matVec generatedM05 (normalQ Face.tmmm))
      topPairingLocalAxis = generatedV05 := by
  norm_num [generatedV05, generatedM05, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos05 :
    0 < generatedV05 := by
  norm_num [generatedV05]

private theorem generatedHnext05 :
    generatedM06 = matMul generatedM05 (reflM (normalQ Face.tmmm)) := by
  norm_num [generatedM06, generatedM05, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot06 :
    dot (matVec generatedM06 (normalQ Face.tpmm))
      topPairingLocalAxis = generatedV06 := by
  norm_num [generatedV06, generatedM06, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos06 :
    0 < generatedV06 := by
  norm_num [generatedV06]

private theorem generatedHnext06 :
    generatedM07 = matMul generatedM06 (reflM (normalQ Face.tpmm)) := by
  norm_num [generatedM07, generatedM06, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot07 :
    dot (matVec generatedM07 (normalQ Face.tppm))
      topPairingLocalAxis = generatedV07 := by
  norm_num [generatedV07, generatedM07, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos07 :
    0 < generatedV07 := by
  norm_num [generatedV07]

private theorem generatedHnext07 :
    generatedM08 = matMul generatedM07 (reflM (normalQ Face.tppm)) := by
  norm_num [generatedM08, generatedM07, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot08 :
    dot (matVec generatedM08 (normalQ Face.tpmp))
      topPairingLocalAxis = generatedV08 := by
  norm_num [generatedV08, generatedM08, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos08 :
    0 < generatedV08 := by
  norm_num [generatedV08]

private theorem generatedHnext08 :
    generatedM09 = matMul generatedM08 (reflM (normalQ Face.tpmp)) := by
  norm_num [generatedM09, generatedM08, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot09 :
    dot (matVec generatedM09 (normalQ Face.tmpm))
      topPairingLocalAxis = generatedV09 := by
  norm_num [generatedV09, generatedM09, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos09 :
    0 < generatedV09 := by
  norm_num [generatedV09]

private theorem generatedHnext09 :
    generatedM10 = matMul generatedM09 (reflM (normalQ Face.tmpm)) := by
  norm_num [generatedM10, generatedM09, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot10 :
    dot (matVec generatedM10 (normalQ Face.tppp))
      topPairingLocalAxis = generatedV10 := by
  norm_num [generatedV10, generatedM10, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos10 :
    0 < generatedV10 := by
  norm_num [generatedV10]

private theorem generatedHnext10 :
    generatedM11 = matMul generatedM10 (reflM (normalQ Face.tppp)) := by
  norm_num [generatedM11, generatedM10, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot11 :
    dot (matVec generatedM11 (normalQ Face.tmpp))
      topPairingLocalAxis = generatedV11 := by
  norm_num [generatedV11, generatedM11, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos11 :
    0 < generatedV11 := by
  norm_num [generatedV11]

private theorem generatedHnext11 :
    generatedM12 = matMul generatedM11 (reflM (normalQ Face.tmpp)) := by
  norm_num [generatedM12, generatedM11, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot12 :
    dot (matVec generatedM12 (normalQ Face.tmmp))
      topPairingLocalAxis = generatedV12 := by
  norm_num [generatedV12, generatedM12, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos12 :
    0 < generatedV12 := by
  norm_num [generatedV12]

private theorem generatedHnext12 :
    generatedM13 = matMul generatedM12 (reflM (normalQ Face.tmmp)) := by
  norm_num [generatedM13, generatedM12, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedHdot13 :
    dot (matVec generatedM13 (normalQ Face.xp))
      topPairingLocalAxis = generatedV13 := by
  norm_num [generatedV13, generatedM13, topPairingLocalAxis, normalQ, matVec, dot]

private theorem generatedHpos13 :
    0 < generatedV13 := by
  norm_num [generatedV13]

private theorem generatedHnext13 :
    generatedM14 = matMul generatedM13 (reflM (normalQ Face.xp)) := by
  norm_num [generatedM14, generatedM13, normalQ, matId, matMul, reflM, dot, matSub, scalarMat, outer]

private theorem generatedLocalAxisTraceConcrete :
    TopPairingLocalAxisFrom (matId : Mat3 Rat) generatedContributionLabels :=
  generatedLocalAxisTraceOfGeneratedStates
    generatedHdot00
    generatedHpos00
    generatedHnext00
    generatedHdot01
    generatedHpos01
    generatedHnext01
    generatedHdot02
    generatedHpos02
    generatedHnext02
    generatedHdot03
    generatedHpos03
    generatedHnext03
    generatedHdot04
    generatedHpos04
    generatedHnext04
    generatedHdot05
    generatedHpos05
    generatedHnext05
    generatedHdot06
    generatedHpos06
    generatedHnext06
    generatedHdot07
    generatedHpos07
    generatedHnext07
    generatedHdot08
    generatedHpos08
    generatedHnext08
    generatedHdot09
    generatedHpos09
    generatedHnext09
    generatedHdot10
    generatedHpos10
    generatedHnext10
    generatedHdot11
    generatedHpos11
    generatedHnext11
    generatedHdot12
    generatedHpos12
    generatedHnext12
    generatedHdot13
    generatedHpos13
    generatedHnext13


theorem generatedClosedLanguageOfPositiveTemplateTrace
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
        generatedContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generatedContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generatedScheduleLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact generatedSquareGapLabels)
    (by
      rw [faceLabelsInContributionOrder_eq_of_positive_template
        template_matches template_start template_positive template_labels]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generatedClosedLanguageOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generatedContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generatedContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  TopPairingClosedLanguageAtRank.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generatedScheduleLabels)
    (by
      rw [labels_eq]
      exact generatedSquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generatedClosedLanguageForSeqOfLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generatedContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generatedContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.ofComponents
    cancellation
    (by
      rw [labels_eq]
      exact generatedScheduleLabels)
    (by
      rw [labels_eq]
      exact generatedSquareGapLabels)
    (by
      rw [labels_eq]
      exact topPairingLocalAxisLabels_ofFrom localAxisTrace)
    canonicalBadFace

theorem generatedClosedLanguageForSeqOfTransportedLabelTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generatedContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generatedContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportLabels
    seq_labels_eq
    (generatedClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generatedClosedLanguageForSeqOfPairSignTrace
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generatedContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (localAxisTrace :
      TopPairingLocalAxisFrom (matId : Mat3 Rat) generatedContributionLabels)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  TopPairingClosedLanguageForSeq.transportPairSignLanguage
    forced_matches
    pairSign
    (generatedClosedLanguageForSeqOfLabelTrace
      forced_labels_eq
      cancellation
      localAxisTrace
      canonicalBadFace)

theorem generatedClosedLanguageOfPositiveTemplateConcreteLocalAxis
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
        generatedContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generatedClosedLanguageOfPositiveTemplateTrace
    template_matches
    template_start
    template_positive
    template_labels
    cancellation
    generatedLocalAxisTraceConcrete
    canonicalBadFace

theorem generatedClosedLanguageOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) =
        generatedContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace :=
  generatedClosedLanguageOfLabelTrace
    labels_eq
    cancellation
    generatedLocalAxisTraceConcrete
    canonicalBadFace

theorem generatedClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq : Step14 -> Face}
    (labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        generatedContributionLabels)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generatedClosedLanguageForSeqOfLabelTrace
    labels_eq
    cancellation
    generatedLocalAxisTraceConcrete
    canonicalBadFace

theorem generatedClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generatedContributionLabels)
    (seq_labels_eq :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) forcedSeq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generatedClosedLanguageForSeqOfTransportedLabelTrace
    forced_labels_eq
    seq_labels_eq
    cancellation
    generatedLocalAxisTraceConcrete
    canonicalBadFace

theorem generatedClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
    {rank : Fin numPairWords} {badFace : Face}
    {seq forcedSeq : Step14 -> Face}
    (forced_labels_eq :
      faceLabelsInContributionOrder (fun f => f) forcedSeq =
        generatedContributionLabels)
    (forced_matches :
      PairWordMatchesSeq (unrankPairWord rank) forcedSeq)
    (pairSign :
      PairSignLanguageAtRank rank forcedSeq seq)
    (cancellation :
      TopPairingLanguageAtRank rank)
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  generatedClosedLanguageForSeqOfPairSignTrace
    forced_labels_eq
    forced_matches
    pairSign
    cancellation
    generatedLocalAxisTraceConcrete
    canonicalBadFace

theorem generatedGeneratedTraceSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke
