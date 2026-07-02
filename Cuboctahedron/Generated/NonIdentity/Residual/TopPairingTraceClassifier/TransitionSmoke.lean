import Cuboctahedron.Search.TopPairingIntLocalAxis

/-!
Small transition-surface smoke for the top-pairing trace classifier.

This file does not classify the full terminal language.  It checks the next
proof-engineering surface after the rejected depth-9 shard shape: from a known
semantic prefix and the closed-language components, extract the next-face
schedule, square-gap, and local-axis obligations without recomputing the
rational local-axis arithmetic in the transition theorem itself.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TransitionSmoke

open Cuboctahedron

set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySimpa false
set_option maxHeartbeats 0

def depth8Parent000Prefix : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp,
    Face.tmmm, Face.tpmm]

def depth8Parent000ScaledLinear : Mat3 Int where
  m00 := 567
  m01 := -324
  m02 := -324
  m10 := 324
  m11 := -81
  m12 := 648
  m20 := -324
  m21 := -648
  m22 := 81

theorem depth8Parent000_scaledProduct_eq :
    scaledLinearAfterFaces (matId : Mat3 Int) depth8Parent000Prefix =
      depth8Parent000ScaledLinear := by
  apply Mat3.ext <;>
    norm_num [scaledLinearAfterFaces, faceScaledLinearInt, faceLinearScale,
      depth8Parent000Prefix, depth8Parent000ScaledLinear, normalInt, matMul,
      matSub, scalarMat, outer, matId, dot]

theorem depth8Parent000_scale_eq :
    linearScaleAfterFaces 1 depth8Parent000Prefix = 729 := by
  norm_num [linearScaleAfterFaces, faceLinearScale, depth8Parent000Prefix]

theorem depth8Parent000_scaledLinear_cast :
    depth8Parent000ScaledLinear.map (fun z : Int => (z : Rat)) =
      scalarMat (729 : Rat)
        (topPairingLinearAfterFaces (matId : Mat3 Rat)
          depth8Parent000Prefix) := by
  have h := scaledLinearAfterFaces_from_identity_cast depth8Parent000Prefix
  rw [depth8Parent000_scaledProduct_eq, depth8Parent000_scale_eq] at h
  exact h

def depth9Parent000TmppScaledLinear : Mat3 Int where
  m00 := -729
  m01 := 1458
  m02 := 1458
  m10 := 1458
  m11 := -729
  m12 := 1458
  m20 := -1458
  m21 := -1458
  m22 := 729

def depth9Parent000TpppScaledLinear : Mat3 Int where
  m00 := 1863
  m01 := -810
  m02 := -810
  m10 := -810
  m11 := -2025
  m12 := 162
  m20 := 810
  m21 := -162
  m22 := 2025

def depth9Parent000YpScaledLinear : Mat3 Int where
  m00 := 567
  m01 := 324
  m02 := -324
  m10 := 324
  m11 := 81
  m12 := 648
  m20 := -324
  m21 := 648
  m22 := 81

def depth9Parent000ZmScaledLinear : Mat3 Int where
  m00 := 567
  m01 := -324
  m02 := 324
  m10 := 324
  m11 := -81
  m12 := -648
  m20 := -324
  m21 := -648
  m22 := -81

theorem depth8_parent000_step_tmpp :
    matMul depth8Parent000ScaledLinear
        (faceScaledLinearInt Face.tmpp) =
      depth9Parent000TmppScaledLinear := by
  apply Mat3.ext <;>
    norm_num [depth8Parent000ScaledLinear, depth9Parent000TmppScaledLinear,
      faceScaledLinearInt, faceLinearScale, normalInt, matMul, matSub,
      scalarMat, outer, matId, dot]

theorem depth8_parent000_step_tppp :
    matMul depth8Parent000ScaledLinear
        (faceScaledLinearInt Face.tppp) =
      depth9Parent000TpppScaledLinear := by
  apply Mat3.ext <;>
    norm_num [depth8Parent000ScaledLinear, depth9Parent000TpppScaledLinear,
      faceScaledLinearInt, faceLinearScale, normalInt, matMul, matSub,
      scalarMat, outer, matId, dot]

theorem depth8_parent000_step_yp :
    matMul depth8Parent000ScaledLinear
        (faceScaledLinearInt Face.yp) =
      depth9Parent000YpScaledLinear := by
  apply Mat3.ext <;>
    norm_num [depth8Parent000ScaledLinear, depth9Parent000YpScaledLinear,
      faceScaledLinearInt, faceLinearScale, normalInt, matMul, matSub,
      scalarMat, outer, matId, dot]

theorem depth8_parent000_step_zm :
    matMul depth8Parent000ScaledLinear
        (faceScaledLinearInt Face.zm) =
      depth9Parent000ZmScaledLinear := by
  apply Mat3.ext <;>
    norm_num [depth8Parent000ScaledLinear, depth9Parent000ZmScaledLinear,
      faceScaledLinearInt, faceLinearScale, normalInt, matMul, matSub,
      scalarMat, outer, matId, dot]

def Depth8Parent000Labels (labels : List Face) : Prop :=
  ∃ rest : List Face, labels = depth8Parent000Prefix ++ rest

def Depth9Child000Labels (labels : List Face) : Prop :=
  (∃ rest : List Face,
    labels = depth8Parent000Prefix ++ [Face.tmpp] ++ rest) \/
  (∃ rest : List Face,
    labels = depth8Parent000Prefix ++ [Face.tppp] ++ rest) \/
  (∃ rest : List Face,
    labels = depth8Parent000Prefix ++ [Face.yp] ++ rest) \/
  (∃ rest : List Face,
    labels = depth8Parent000Prefix ++ [Face.zm] ++ rest)

theorem depth8_parent000_next_obligations
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hparent : Depth8Parent000Labels labels) :
    ∃ nextFace rest,
      labels = depth8Parent000Prefix ++ nextFace :: rest ∧
        nextFace ∈
          topPairingAllowedFacesAtStep depth8Parent000Prefix.length ∧
        (isSquarePair (pairOfFace nextFace) = true ->
          nextFace ∈ topPairingAllowedSquareFacesAtGap
            (topPairingSquareGapAfter 0 depth8Parent000Prefix)) ∧
        TopPairingLocalAxisAllows
          (topPairingLinearAfterFaces (matId : Mat3 Rat)
            depth8Parent000Prefix)
          nextFace := by
  rcases hparent with ⟨rest0, hlabels⟩
  cases rest0 with
  | nil =>
      subst labels
      rcases hs with ⟨hlen, _hfrom⟩
      norm_num [depth8Parent000Prefix] at hlen
  | cons nextFace rest =>
      subst labels
      refine ⟨nextFace, rest, rfl, ?_, ?_, ?_⟩
      · exact topPairingStepScheduleLabels_allows_next_of_prefix
          (pfx := depth8Parent000Prefix) (rest := rest) hs rfl
      · intro hpair
        exact topPairingSquareGapLabels_allows_next_of_prefix
          (pfx := depth8Parent000Prefix) (rest := rest) hg rfl hpair
      · exact topPairingLocalAxisLabels_allows_next_of_prefix
          (pfx := depth8Parent000Prefix) (rest := rest) ha rfl

theorem not_depth8_parent000_axis_tmmm :
    ¬ TopPairingLocalAxisAllows
      (topPairingLinearAfterFaces (matId : Mat3 Rat)
        depth8Parent000Prefix)
      Face.tmmm := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := topPairingLinearAfterFaces (matId : Mat3 Rat)
      depth8Parent000Prefix)
    (scaled := depth8Parent000ScaledLinear)
    (scale := 729)
    (face := Face.tmmm)
    (by norm_num)
    depth8Parent000_scaledLinear_cast
    (by norm_num [intLocalAxisDot, depth8Parent000ScaledLinear, normalInt,
      topPairingLocalAxisInt, matVec, dot])

theorem not_depth8_parent000_axis_tpmm :
    ¬ TopPairingLocalAxisAllows
      (topPairingLinearAfterFaces (matId : Mat3 Rat)
        depth8Parent000Prefix)
      Face.tpmm := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := topPairingLinearAfterFaces (matId : Mat3 Rat)
      depth8Parent000Prefix)
    (scaled := depth8Parent000ScaledLinear)
    (scale := 729)
    (face := Face.tpmm)
    (by norm_num)
    depth8Parent000_scaledLinear_cast
    (by norm_num [intLocalAxisDot, depth8Parent000ScaledLinear, normalInt,
      topPairingLocalAxisInt, matVec, dot])

theorem not_depth8_parent000_axis_zp :
    ¬ TopPairingLocalAxisAllows
      (topPairingLinearAfterFaces (matId : Mat3 Rat)
        depth8Parent000Prefix)
      Face.zp := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := topPairingLinearAfterFaces (matId : Mat3 Rat)
      depth8Parent000Prefix)
    (scaled := depth8Parent000ScaledLinear)
    (scale := 729)
    (face := Face.zp)
    (by norm_num)
    depth8Parent000_scaledLinear_cast
    (by norm_num [intLocalAxisDot, depth8Parent000ScaledLinear, normalInt,
      topPairingLocalAxisInt, matVec, dot])

theorem depth8_parent000_transition_children
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hparent : Depth8Parent000Labels labels) :
    Depth9Child000Labels labels := by
  rcases depth8_parent000_next_obligations hs hg ha hparent with
    ⟨nextFace, rest, hlabels, hsched, _hsquare, haxis⟩
  subst labels
  unfold Depth9Child000Labels
  cases nextFace with
  | xp =>
      exfalso
      simpa [depth8Parent000Prefix, topPairingAllowedFacesAtStep] using hsched
  | xm =>
      exfalso
      simpa [depth8Parent000Prefix, topPairingAllowedFacesAtStep] using hsched
  | yp =>
      right
      right
      left
      exact ⟨rest, rfl⟩
  | ym =>
      exfalso
      simpa [depth8Parent000Prefix, topPairingAllowedFacesAtStep] using hsched
  | zp =>
      exact False.elim (not_depth8_parent000_axis_zp haxis)
  | zm =>
      right
      right
      right
      exact ⟨rest, rfl⟩
  | tmmm =>
      exact False.elim (not_depth8_parent000_axis_tmmm haxis)
  | tmmp =>
      unfold TopPairingPairCountsLabels at hc
      simp [depth8Parent000Prefix, pairOfFace] at hc
  | tmpm =>
      exfalso
      simpa [depth8Parent000Prefix, topPairingAllowedFacesAtStep] using hsched
  | tmpp =>
      left
      exact ⟨rest, rfl⟩
  | tpmm =>
      exact False.elim (not_depth8_parent000_axis_tpmm haxis)
  | tpmp =>
      unfold TopPairingPairCountsLabels at hc
      simp [depth8Parent000Prefix, pairOfFace] at hc
  | tppm =>
      exfalso
      simpa [depth8Parent000Prefix, topPairingAllowedFacesAtStep] using hsched
  | tppp =>
      right
      left
      exact ⟨rest, rfl⟩

theorem transitionSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TransitionSmoke
