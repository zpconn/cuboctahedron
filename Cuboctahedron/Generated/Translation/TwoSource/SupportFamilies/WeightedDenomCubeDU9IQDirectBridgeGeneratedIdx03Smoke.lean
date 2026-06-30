import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector

abbrev generatedNormal07 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke.generatedNormal07

abbrev generatedNormal09 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke.generatedNormal09

def rank896 : Nat := 896

def cubexx01x1 : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.d11m => some true
    | SignBit.dm11 => some true
    | _ => none

def weights8_10 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 1
  w9 := 0
  w10 := 1
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights8_10_nonnegative :
    weights8_10.Nonnegative := by
  norm_num [weights8_10, InternalImpactWeights.Nonnegative]

private theorem weights8_10_positive :
    weights8_10.PositiveSome := by
  norm_num [weights8_10, InternalImpactWeights.PositiveSome]

def poly896_8_10 : WalshQuadratic where
  c := 16
  y := 0
  z := 0
  d111 := 4
  d11m := 0
  d1m1 := 0
  dm11 := -4
  yz := 0
  y_d111 := 4
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 4
  z_d111 := 4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4
  d111_d11m := 8/3
  d111_d1m1 := -8/3
  d111_dm11 := 16/3
  d11m_d1m1 := 0
  d11m_dm11 := -8/3
  d1m1_dm11 := -40/9

private def reduced896_8_10 : WalshQuadratic where
  c := -8/3
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -16/9
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem poly896_8_10_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubexx01x1.Member mask) :
    poly896_8_10.coeffEval mask = reduced896_8_10.coeffEval mask := by
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = false := by
    simpa [cubexx01x1, MaskSubcube.Member] using hmask SignBit.d111
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = true := by
    simpa [cubexx01x1, MaskSubcube.Member] using hmask SignBit.d11m
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = true := by
    simpa [cubexx01x1, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hz : maskBitForPair mask SignBit.z.toPairId
    all_goals
      by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
      all_goals
        simp [poly896_8_10, reduced896_8_10, WalshQuadratic.coeffEval, SignBit.value, hd111, hd11m, hdm11, hy, hz, hd1m1]
        norm_num

private def reducedBound896_8_10 :
    WalshQuadraticReducedAbsBound cubexx01x1 poly896_8_10 where
  reduced := reduced896_8_10
  eq_on_cube := by
    intro mask hmask
    exact poly896_8_10_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced896_8_10, WalshQuadratic.absBoundSum]

private def cubeBound896_8_10 :
    WalshQuadraticCubeBound cubexx01x1 poly896_8_10 :=
  WalshQuadraticCubeBound.leaf reducedBound896_8_10

private theorem poly896_8_10_nonpos
    {mask : SignMask} (hmask : cubexx01x1.Member mask) :
    poly896_8_10.coeffEval mask <= 0 :=
  cubeBound896_8_10.coeffEval_nonpos hmask

def reducedObstruction896_8_10
    (direct_eq :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cubexx01x1.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights8_10 =
            poly896_8_10.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank896 cubexx01x1.Member where
  weights := weights8_10
  nonnegative := weights8_10_nonnegative
  positive_some := weights8_10_positive
  poly := poly896_8_10
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly896_8_10_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cubexx01x1.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights8_10 =
            poly896_8_10.coeffEval mask)
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hmember : cubexx01x1.Member mask) :
    weightedDenomAtRank
      (⟨rank896, hlt⟩ : Fin numPairWords) mask weights8_10 <= 0 :=
  (reducedObstruction896_8_10 direct_eq).nonpos hlt hmember

private def dot07 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -4
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 4
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 8/3
  d11m_d1m1 := 0
  d11m_dm11 := -8/3
  d1m1_dm11 := -40/9

private def dot09 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 4
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 4
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := -8/3
  d111_dm11 := 8/3
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem generatedRank_eq
    (hlt : rank896 < numPairWords) :
    (⟨rank896, hlt⟩ : Fin numPairWords) = generatedRank := by
  ext
  rfl

private theorem directWalshDotAtRank_eq_of_val
    (r : Fin numPairWords) (mask : SignMask) {i j : WordIndex}
    (h : i.val = j.val) :
    directWalshDotAtRank r mask i = directWalshDotAtRank r mask j := by
  have hij : i = j := Fin.ext h
  rw [hij]

private theorem dot07_eq :
    WalshAffineVec3.dot generatedNormal07 generatedVector = dot07 := by
  norm_num [dot07, generatedNormal07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke.generatedNormal07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke.generatedNormal07_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke.generatedNormal07_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke.generatedNormal07_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot07_eval
    (mask : SignMask) :
    dot (generatedNormal07.eval mask) (generatedVector.eval mask) =
      dot07.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal07 generatedVector mask
  rw [dot07_eq] at h
  exact h.symm

private theorem direct07_eq
    (mask : SignMask) (hlt : rank896 < numPairWords) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask (7 : WordIndex) =
      dot (generatedNormal07.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke.generatedNormal07_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct07_eq_of_val
    (mask : SignMask) (hlt : rank896 < numPairWords)
    {i : WordIndex} (hi : i.val = 7) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal07.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank896, hlt⟩ : Fin numPairWords) mask (j := (7 : WordIndex)) hi]
  exact direct07_eq mask hlt

private theorem dot09_eq :
    WalshAffineVec3.dot generatedNormal09 generatedVector = dot09 := by
  norm_num [dot09, generatedNormal09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke.generatedNormal09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke.generatedNormal09_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke.generatedNormal09_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke.generatedNormal09_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot09_eval
    (mask : SignMask) :
    dot (generatedNormal09.eval mask) (generatedVector.eval mask) =
      dot09.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal09 generatedVector mask
  rw [dot09_eq] at h
  exact h.symm

private theorem direct09_eq
    (mask : SignMask) (hlt : rank896 < numPairWords) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask (9 : WordIndex) =
      dot (generatedNormal09.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke.generatedNormal09_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct09_eq_of_val
    (mask : SignMask) (hlt : rank896 < numPairWords)
    {i : WordIndex} (hi : i.val = 9) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal09.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank896, hlt⟩ : Fin numPairWords) mask (j := (9 : WordIndex)) hi]
  exact direct09_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot07.coeffEval mask + dot09.coeffEval mask =
      poly896_8_10.coeffEval mask := by
  simp [dot07, dot09, poly896_8_10,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (_hmember : cubexx01x1.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask weights8_10 =
      poly896_8_10.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights8_10]
  rw [direct07_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct09_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot07_eval mask, dot09_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hmember : cubexx01x1.Member mask) :
    weightedDenomAtRank
      (⟨rank896, hlt⟩ : Fin numPairWords) mask weights8_10 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
