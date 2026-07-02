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

def depth8Parent000Linear : Mat3 Rat where
  m00 := 7 / 9
  m01 := -4 / 9
  m02 := -4 / 9
  m10 := 4 / 9
  m11 := -1 / 9
  m12 := 8 / 9
  m20 := -4 / 9
  m21 := -8 / 9
  m22 := 1 / 9

def depth8Parent000ScaledLinear : Mat3 Int where
  m00 := 7
  m01 := -4
  m02 := -4
  m10 := 4
  m11 := -1
  m12 := 8
  m20 := -4
  m21 := -8
  m22 := 1

theorem depth8Parent000_scaledLinear_eq :
    depth8Parent000ScaledLinear.map (fun z : Int => (z : Rat)) =
      scalarMat (9 : Rat) depth8Parent000Linear := by
  apply Mat3.ext <;>
    norm_num [depth8Parent000ScaledLinear, depth8Parent000Linear, Mat3.map,
      scalarMat]

theorem depth8Parent000_linear_eq :
    topPairingLinearAfterFaces (matId : Mat3 Rat)
      depth8Parent000Prefix = depth8Parent000Linear := by
  apply Mat3.ext <;>
    norm_num [topPairingLinearAfterFaces, depth8Parent000Prefix,
      depth8Parent000Linear, normalQ, matId, matMul, reflM, matSub,
      scalarMat, outer, dot]

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
    ¬ TopPairingLocalAxisAllows depth8Parent000Linear Face.tmmm := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := depth8Parent000Linear)
    (scaled := depth8Parent000ScaledLinear)
    (scale := 9)
    (face := Face.tmmm)
    (by norm_num)
    depth8Parent000_scaledLinear_eq
    (by norm_num [intLocalAxisDot, depth8Parent000ScaledLinear, normalInt,
      topPairingLocalAxisInt, matVec, dot])

theorem not_depth8_parent000_axis_tpmm :
    ¬ TopPairingLocalAxisAllows depth8Parent000Linear Face.tpmm := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := depth8Parent000Linear)
    (scaled := depth8Parent000ScaledLinear)
    (scale := 9)
    (face := Face.tpmm)
    (by norm_num)
    depth8Parent000_scaledLinear_eq
    (by norm_num [intLocalAxisDot, depth8Parent000ScaledLinear, normalInt,
      topPairingLocalAxisInt, matVec, dot])

theorem not_depth8_parent000_axis_zp :
    ¬ TopPairingLocalAxisAllows depth8Parent000Linear Face.zp := by
  exact not_localAxisAllows_of_scaled_int_dot_nonpos
    (linear := depth8Parent000Linear)
    (scaled := depth8Parent000ScaledLinear)
    (scale := 9)
    (face := Face.zp)
    (by norm_num)
    depth8Parent000_scaledLinear_eq
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
      rw [depth8Parent000_linear_eq] at haxis
      exact False.elim (not_depth8_parent000_axis_zp haxis)
  | zm =>
      right
      right
      right
      exact ⟨rest, rfl⟩
  | tmmm =>
      rw [depth8Parent000_linear_eq] at haxis
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
      rw [depth8Parent000_linear_eq] at haxis
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
