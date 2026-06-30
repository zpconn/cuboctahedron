import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx24Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedVector

abbrev generatedNormal10 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke.generatedNormal10

def rank897 : Nat := 897

def cube0x10x0 : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d111 => some true
    | SignBit.d11m => some false
    | SignBit.dm11 => some false
    | _ => none

def weights11 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 1
  w12 := 0
  w13 := 0

private theorem weights11_nonnegative :
    weights11.Nonnegative := by
  norm_num [weights11, InternalImpactWeights.Nonnegative]

private theorem weights11_positive :
    weights11.PositiveSome := by
  norm_num [weights11, InternalImpactWeights.PositiveSome]

def poly897_11 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 4/3
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 20/3
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4/3
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40/9
  d111_d1m1 := -8/3
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def reduced897_11 : WalshQuadratic where
  c := -56/9
  y := 0
  z := 4/3
  d111 := 0
  d11m := 0
  d1m1 := -8/3
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

private theorem poly897_11_eq_reduced_on_cube
    {mask : SignMask} (hmask : cube0x10x0.Member mask) :
    poly897_11.coeffEval mask = reduced897_11.coeffEval mask := by
  have hy : maskBitForPair mask SignBit.y.toPairId = false := by
    simpa [cube0x10x0, MaskSubcube.Member] using hmask SignBit.y
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = true := by
    simpa [cube0x10x0, MaskSubcube.Member] using hmask SignBit.d111
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = false := by
    simpa [cube0x10x0, MaskSubcube.Member] using hmask SignBit.d11m
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = false := by
    simpa [cube0x10x0, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hz : maskBitForPair mask SignBit.z.toPairId
  all_goals
    by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
    all_goals
      simp [poly897_11, reduced897_11, WalshQuadratic.coeffEval, SignBit.value, hy, hd111, hd11m, hdm11, hz, hd1m1]
      norm_num

private def reducedBound897_11 :
    WalshQuadraticReducedAbsBound cube0x10x0 poly897_11 where
  reduced := reduced897_11
  eq_on_cube := by
    intro mask hmask
    exact poly897_11_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced897_11, WalshQuadratic.absBoundSum]

private def cubeBound897_11 :
    WalshQuadraticCubeBound cube0x10x0 poly897_11 :=
  WalshQuadraticCubeBound.leaf reducedBound897_11

private theorem poly897_11_nonpos
    {mask : SignMask} (hmask : cube0x10x0.Member mask) :
    poly897_11.coeffEval mask <= 0 :=
  cubeBound897_11.coeffEval_nonpos hmask

def reducedObstruction897_11
    (direct_eq :
      forall {mask : SignMask} (hlt : rank897 < numPairWords),
        cube0x10x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank897, hlt⟩ : Fin numPairWords) mask weights11 =
            poly897_11.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank897 cube0x10x0.Member where
  weights := weights11
  nonnegative := weights11_nonnegative
  positive_some := weights11_positive
  poly := poly897_11
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly897_11_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank897 < numPairWords),
        cube0x10x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank897, hlt⟩ : Fin numPairWords) mask weights11 =
            poly897_11.coeffEval mask)
    {mask : SignMask} (hlt : rank897 < numPairWords)
    (hmember : cube0x10x0.Member mask) :
    weightedDenomAtRank
      (⟨rank897, hlt⟩ : Fin numPairWords) mask weights11 <= 0 :=
  (reducedObstruction897_11 direct_eq).nonpos hlt hmember

private def dot10 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 4/3
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 20/3
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4/3
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40/9
  d111_d1m1 := -8/3
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem generatedRank_eq
    (hlt : rank897 < numPairWords) :
    (⟨rank897, hlt⟩ : Fin numPairWords) = generatedRank := by
  ext
  norm_num [rank897, generatedRank, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedRank]

private theorem directWalshDotAtRank_eq_of_val
    (r : Fin numPairWords) (mask : SignMask) {i j : WordIndex}
    (h : i.val = j.val) :
    directWalshDotAtRank r mask i = directWalshDotAtRank r mask j := by
  have hij : i = j := Fin.ext h
  rw [hij]

private theorem dot10_eq :
    WalshAffineVec3.dot generatedNormal10 generatedVector = dot10 := by
  norm_num [dot10, generatedNormal10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke.generatedNormal10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke.generatedNormal10_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke.generatedNormal10_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke.generatedNormal10_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot10_eval
    (mask : SignMask) :
    dot (generatedNormal10.eval mask) (generatedVector.eval mask) =
      dot10.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal10 generatedVector mask
  rw [dot10_eq] at h
  exact h.symm

private theorem direct10_eq
    (mask : SignMask) (hlt : rank897 < numPairWords) :
    directWalshDotAtRank
        (⟨rank897, hlt⟩ : Fin numPairWords) mask (10 : WordIndex) =
      dot (generatedNormal10.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke.generatedNormal10_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct10_eq_of_val
    (mask : SignMask) (hlt : rank897 < numPairWords)
    {i : WordIndex} (hi : i.val = 10) :
    directWalshDotAtRank
        (⟨rank897, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal10.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank897, hlt⟩ : Fin numPairWords) mask (j := (10 : WordIndex)) hi]
  exact direct10_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot10.coeffEval mask =
      poly897_11.coeffEval mask := by
  simp [dot10, poly897_11,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank897 < numPairWords)
    (_hmember : cube0x10x0.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank897, hlt⟩ : Fin numPairWords) mask weights11 =
      poly897_11.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights11]
  rw [direct10_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot10_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank897 < numPairWords)
    (hmember : cube0x10x0.Member mask) :
    weightedDenomAtRank
      (⟨rank897, hlt⟩ : Fin numPairWords) mask weights11 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx24Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
