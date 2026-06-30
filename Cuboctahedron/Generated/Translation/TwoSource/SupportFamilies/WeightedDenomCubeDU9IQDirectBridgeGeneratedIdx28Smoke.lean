import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector

abbrev generatedNormal00 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke.generatedNormal00

def rank899 : Nat := 899

def cubexx000x : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.d11m => some false
    | SignBit.d1m1 => some false
    | _ => none

def weights1 : InternalImpactWeights where
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
  w12 := 0
  w13 := 0

private theorem weights1_nonnegative :
    weights1.Nonnegative := by
  norm_num [weights1, InternalImpactWeights.Nonnegative]

private theorem weights1_positive :
    weights1.PositiveSome := by
  norm_num [weights1, InternalImpactWeights.PositiveSome]

def poly899_1 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 8/3
  d11m := 8/3
  d1m1 := 8/3
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

private def reduced899_1 : WalshQuadratic where
  c := -4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
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

private theorem poly899_1_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubexx000x.Member mask) :
    poly899_1.coeffEval mask = reduced899_1.coeffEval mask := by
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = false := by
    simpa [cubexx000x, MaskSubcube.Member] using hmask SignBit.d111
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = false := by
    simpa [cubexx000x, MaskSubcube.Member] using hmask SignBit.d11m
  have hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId = false := by
    simpa [cubexx000x, MaskSubcube.Member] using hmask SignBit.d1m1
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hz : maskBitForPair mask SignBit.z.toPairId
    all_goals
      by_cases hdm11 : maskBitForPair mask SignBit.dm11.toPairId
      all_goals
        simp [poly899_1, reduced899_1, WalshQuadratic.coeffEval, SignBit.value, hd111, hd11m, hd1m1, hy, hz, hdm11]
        norm_num

private def reducedBound899_1 :
    WalshQuadraticReducedAbsBound cubexx000x poly899_1 where
  reduced := reduced899_1
  eq_on_cube := by
    intro mask hmask
    exact poly899_1_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced899_1, WalshQuadratic.absBoundSum]

private def cubeBound899_1 :
    WalshQuadraticCubeBound cubexx000x poly899_1 :=
  WalshQuadraticCubeBound.leaf reducedBound899_1

private theorem poly899_1_nonpos
    {mask : SignMask} (hmask : cubexx000x.Member mask) :
    poly899_1.coeffEval mask <= 0 :=
  cubeBound899_1.coeffEval_nonpos hmask

def reducedObstruction899_1
    (direct_eq :
      forall {mask : SignMask} (hlt : rank899 < numPairWords),
        cubexx000x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank899, hlt⟩ : Fin numPairWords) mask weights1 =
            poly899_1.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank899 cubexx000x.Member where
  weights := weights1
  nonnegative := weights1_nonnegative
  positive_some := weights1_positive
  poly := poly899_1
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly899_1_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank899 < numPairWords),
        cubexx000x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank899, hlt⟩ : Fin numPairWords) mask weights1 =
            poly899_1.coeffEval mask)
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (hmember : cubexx000x.Member mask) :
    weightedDenomAtRank
      (⟨rank899, hlt⟩ : Fin numPairWords) mask weights1 <= 0 :=
  (reducedObstruction899_1 direct_eq).nonpos hlt hmember

private def dot00 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 8/3
  d11m := 8/3
  d1m1 := 8/3
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

private theorem generatedRank_eq
    (hlt : rank899 < numPairWords) :
    (⟨rank899, hlt⟩ : Fin numPairWords) = generatedRank := by
  ext
  norm_num [rank899, generatedRank, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedRank]

private theorem directWalshDotAtRank_eq_of_val
    (r : Fin numPairWords) (mask : SignMask) {i j : WordIndex}
    (h : i.val = j.val) :
    directWalshDotAtRank r mask i = directWalshDotAtRank r mask j := by
  have hij : i = j := Fin.ext h
  rw [hij]

private theorem dot00_eq :
    WalshAffineVec3.dot generatedNormal00 generatedVector = dot00 := by
  norm_num [dot00, generatedNormal00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke.generatedNormal00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke.generatedNormal00_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke.generatedNormal00_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke.generatedNormal00_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot00_eval
    (mask : SignMask) :
    dot (generatedNormal00.eval mask) (generatedVector.eval mask) =
      dot00.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal00 generatedVector mask
  rw [dot00_eq] at h
  exact h.symm

private theorem direct00_eq
    (mask : SignMask) (hlt : rank899 < numPairWords) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask (0 : WordIndex) =
      dot (generatedNormal00.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke.generatedNormal00_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct00_eq_of_val
    (mask : SignMask) (hlt : rank899 < numPairWords)
    {i : WordIndex} (hi : i.val = 0) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal00.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank899, hlt⟩ : Fin numPairWords) mask (j := (0 : WordIndex)) hi]
  exact direct00_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot00.coeffEval mask =
      poly899_1.coeffEval mask := by
  simp [dot00, poly899_1,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (_hmember : cubexx000x.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask weights1 =
      poly899_1.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights1]
  rw [direct00_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot00_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (hmember : cubexx000x.Member mask) :
    weightedDenomAtRank
      (⟨rank899, hlt⟩ : Fin numPairWords) mask weights1 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
