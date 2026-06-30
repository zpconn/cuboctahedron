import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector

abbrev generatedNormal00 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke.generatedNormal00

abbrev generatedNormal11 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke.generatedNormal11

def rank903 : Nat := 903

def cubex00xx1 : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some false
    | SignBit.dm11 => some true
    | _ => none

def weights1_12 : InternalImpactWeights where
  w1 := 1
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 1
  w13 := 0

private theorem weights1_12_nonnegative :
    weights1_12.Nonnegative := by
  norm_num [weights1_12, InternalImpactWeights.Nonnegative]

private theorem weights1_12_positive :
    weights1_12.PositiveSome := by
  norm_num [weights1_12, InternalImpactWeights.PositiveSome]

def poly903_1_12 : WalshQuadratic where
  c := 12
  y := 0
  z := 0
  d111 := -56/27
  d11m := 8/3
  d1m1 := 40/9
  dm11 := -20/3
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
  d111_dm11 := 200/27
  d11m_d1m1 := 0
  d11m_dm11 := -8/3
  d1m1_dm11 := -40/9

private def reduced903_1_12 : WalshQuadratic where
  c := -4
  y := 4
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
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

private theorem poly903_1_12_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubex00xx1.Member mask) :
    poly903_1_12.coeffEval mask = reduced903_1_12.coeffEval mask := by
  have hz : maskBitForPair mask SignBit.z.toPairId = false := by
    simpa [cubex00xx1, MaskSubcube.Member] using hmask SignBit.z
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = false := by
    simpa [cubex00xx1, MaskSubcube.Member] using hmask SignBit.d111
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = true := by
    simpa [cubex00xx1, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hd11m : maskBitForPair mask SignBit.d11m.toPairId
    all_goals
      by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
      all_goals
        simp [poly903_1_12, reduced903_1_12, WalshQuadratic.coeffEval, SignBit.value, hz, hd111, hdm11, hy, hd11m, hd1m1]
        norm_num

private def reducedBound903_1_12 :
    WalshQuadraticReducedAbsBound cubex00xx1 poly903_1_12 where
  reduced := reduced903_1_12
  eq_on_cube := by
    intro mask hmask
    exact poly903_1_12_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced903_1_12, WalshQuadratic.absBoundSum]

private def cubeBound903_1_12 :
    WalshQuadraticCubeBound cubex00xx1 poly903_1_12 :=
  WalshQuadraticCubeBound.leaf reducedBound903_1_12

private theorem poly903_1_12_nonpos
    {mask : SignMask} (hmask : cubex00xx1.Member mask) :
    poly903_1_12.coeffEval mask <= 0 :=
  cubeBound903_1_12.coeffEval_nonpos hmask

def reducedObstruction903_1_12
    (direct_eq :
      forall {mask : SignMask} (hlt : rank903 < numPairWords),
        cubex00xx1.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank903, hlt⟩ : Fin numPairWords) mask weights1_12 =
            poly903_1_12.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank903 cubex00xx1.Member where
  weights := weights1_12
  nonnegative := weights1_12_nonnegative
  positive_some := weights1_12_positive
  poly := poly903_1_12
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly903_1_12_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank903 < numPairWords),
        cubex00xx1.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank903, hlt⟩ : Fin numPairWords) mask weights1_12 =
            poly903_1_12.coeffEval mask)
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex00xx1.Member mask) :
    weightedDenomAtRank
      (⟨rank903, hlt⟩ : Fin numPairWords) mask weights1_12 <= 0 :=
  (reducedObstruction903_1_12 direct_eq).nonpos hlt hmember

private def dot00 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := -56/27
  d11m := 8/3
  d1m1 := 40/9
  dm11 := -8/3
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

private def dot11 : WalshQuadratic where
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
  d111_dm11 := 200/27
  d11m_d1m1 := 0
  d11m_dm11 := -8/3
  d1m1_dm11 := -40/9

private theorem generatedRank_eq
    (hlt : rank903 < numPairWords) :
    (⟨rank903, hlt⟩ : Fin numPairWords) = generatedRank := by
  ext
  norm_num [rank903, generatedRank, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedRank]

private theorem directWalshDotAtRank_eq_of_val
    (r : Fin numPairWords) (mask : SignMask) {i j : WordIndex}
    (h : i.val = j.val) :
    directWalshDotAtRank r mask i = directWalshDotAtRank r mask j := by
  have hij : i = j := Fin.ext h
  rw [hij]

private theorem dot00_eq :
    WalshAffineVec3.dot generatedNormal00 generatedVector = dot00 := by
  norm_num [dot00, generatedNormal00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke.generatedNormal00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke.generatedNormal00_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke.generatedNormal00_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke.generatedNormal00_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot00_eval
    (mask : SignMask) :
    dot (generatedNormal00.eval mask) (generatedVector.eval mask) =
      dot00.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal00 generatedVector mask
  rw [dot00_eq] at h
  exact h.symm

private theorem direct00_eq
    (mask : SignMask) (hlt : rank903 < numPairWords) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask (0 : WordIndex) =
      dot (generatedNormal00.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke.generatedNormal00_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct00_eq_of_val
    (mask : SignMask) (hlt : rank903 < numPairWords)
    {i : WordIndex} (hi : i.val = 0) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal00.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank903, hlt⟩ : Fin numPairWords) mask (j := (0 : WordIndex)) hi]
  exact direct00_eq mask hlt

private theorem dot11_eq :
    WalshAffineVec3.dot generatedNormal11 generatedVector = dot11 := by
  norm_num [dot11, generatedNormal11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke.generatedNormal11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke.generatedNormal11_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke.generatedNormal11_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke.generatedNormal11_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot11_eval
    (mask : SignMask) :
    dot (generatedNormal11.eval mask) (generatedVector.eval mask) =
      dot11.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal11 generatedVector mask
  rw [dot11_eq] at h
  exact h.symm

private theorem direct11_eq
    (mask : SignMask) (hlt : rank903 < numPairWords) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask (11 : WordIndex) =
      dot (generatedNormal11.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke.generatedNormal11_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct11_eq_of_val
    (mask : SignMask) (hlt : rank903 < numPairWords)
    {i : WordIndex} (hi : i.val = 11) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal11.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank903, hlt⟩ : Fin numPairWords) mask (j := (11 : WordIndex)) hi]
  exact direct11_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot00.coeffEval mask + dot11.coeffEval mask =
      poly903_1_12.coeffEval mask := by
  simp [dot00, dot11, poly903_1_12,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (_hmember : cubex00xx1.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask weights1_12 =
      poly903_1_12.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights1_12]
  rw [direct00_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct11_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot00_eval mask, dot11_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex00xx1.Member mask) :
    weightedDenomAtRank
      (⟨rank903, hlt⟩ : Fin numPairWords) mask weights1_12 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
