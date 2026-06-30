import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke

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

abbrev generatedNormal01 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke.generatedNormal01

abbrev generatedNormal11 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke.generatedNormal11

def rank899 : Nat := 899

def cube1x0x1x : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d111 => some false
    | SignBit.d1m1 => some true
    | _ => none

def weights2_12 : InternalImpactWeights where
  w1 := 0
  w2 := 1
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

private theorem weights2_12_nonnegative :
    weights2_12.Nonnegative := by
  norm_num [weights2_12, InternalImpactWeights.Nonnegative]

private theorem weights2_12_positive :
    weights2_12.PositiveSome := by
  norm_num [weights2_12, InternalImpactWeights.PositiveSome]

def poly899_2_12 : WalshQuadratic where
  c := 12
  y := 0
  z := 0
  d111 := 4
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 20/3
  y_d11m := 8/3
  y_d1m1 := -8/3
  y_dm11 := 8/3
  z_d111 := 4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := 8/3
  d111_dm11 := 8/3
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def reduced899_2_12 : WalshQuadratic where
  c := -4
  y := 0
  z := -4
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

private theorem poly899_2_12_eq_reduced_on_cube
    {mask : SignMask} (hmask : cube1x0x1x.Member mask) :
    poly899_2_12.coeffEval mask = reduced899_2_12.coeffEval mask := by
  have hy : maskBitForPair mask SignBit.y.toPairId = true := by
    simpa [cube1x0x1x, MaskSubcube.Member] using hmask SignBit.y
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = false := by
    simpa [cube1x0x1x, MaskSubcube.Member] using hmask SignBit.d111
  have hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId = true := by
    simpa [cube1x0x1x, MaskSubcube.Member] using hmask SignBit.d1m1
  by_cases hz : maskBitForPair mask SignBit.z.toPairId
  all_goals
    by_cases hd11m : maskBitForPair mask SignBit.d11m.toPairId
    all_goals
      by_cases hdm11 : maskBitForPair mask SignBit.dm11.toPairId
      all_goals
        simp [poly899_2_12, reduced899_2_12, WalshQuadratic.coeffEval, SignBit.value, hy, hd111, hd1m1, hz, hd11m, hdm11]
        norm_num

private def reducedBound899_2_12 :
    WalshQuadraticReducedAbsBound cube1x0x1x poly899_2_12 where
  reduced := reduced899_2_12
  eq_on_cube := by
    intro mask hmask
    exact poly899_2_12_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced899_2_12, WalshQuadratic.absBoundSum]

private def cubeBound899_2_12 :
    WalshQuadraticCubeBound cube1x0x1x poly899_2_12 :=
  WalshQuadraticCubeBound.leaf reducedBound899_2_12

private theorem poly899_2_12_nonpos
    {mask : SignMask} (hmask : cube1x0x1x.Member mask) :
    poly899_2_12.coeffEval mask <= 0 :=
  cubeBound899_2_12.coeffEval_nonpos hmask

def reducedObstruction899_2_12
    (direct_eq :
      forall {mask : SignMask} (hlt : rank899 < numPairWords),
        cube1x0x1x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_12 =
            poly899_2_12.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank899 cube1x0x1x.Member where
  weights := weights2_12
  nonnegative := weights2_12_nonnegative
  positive_some := weights2_12_positive
  poly := poly899_2_12
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly899_2_12_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank899 < numPairWords),
        cube1x0x1x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_12 =
            poly899_2_12.coeffEval mask)
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (hmember : cube1x0x1x.Member mask) :
    weightedDenomAtRank
      (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_12 <= 0 :=
  (reducedObstruction899_2_12 direct_eq).nonpos hlt hmember

private def dot01 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8/3
  y_d11m := 8/3
  y_d1m1 := -8/3
  y_dm11 := 8/3
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
  d111_d1m1 := 8/3
  d111_dm11 := 8/3
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

private theorem dot01_eq :
    WalshAffineVec3.dot generatedNormal01 generatedVector = dot01 := by
  norm_num [dot01, generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke.generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke.generatedNormal01_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke.generatedNormal01_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke.generatedNormal01_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot01_eval
    (mask : SignMask) :
    dot (generatedNormal01.eval mask) (generatedVector.eval mask) =
      dot01.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal01 generatedVector mask
  rw [dot01_eq] at h
  exact h.symm

private theorem direct01_eq
    (mask : SignMask) (hlt : rank899 < numPairWords) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask (1 : WordIndex) =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke.generatedNormal01_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct01_eq_of_val
    (mask : SignMask) (hlt : rank899 < numPairWords)
    {i : WordIndex} (hi : i.val = 1) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank899, hlt⟩ : Fin numPairWords) mask (j := (1 : WordIndex)) hi]
  exact direct01_eq mask hlt

private theorem dot11_eq :
    WalshAffineVec3.dot generatedNormal11 generatedVector = dot11 := by
  norm_num [dot11, generatedNormal11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke.generatedNormal11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke.generatedNormal11_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke.generatedNormal11_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke.generatedNormal11_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot11_eval
    (mask : SignMask) :
    dot (generatedNormal11.eval mask) (generatedVector.eval mask) =
      dot11.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal11 generatedVector mask
  rw [dot11_eq] at h
  exact h.symm

private theorem direct11_eq
    (mask : SignMask) (hlt : rank899 < numPairWords) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask (11 : WordIndex) =
      dot (generatedNormal11.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke.generatedNormal11_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct11_eq_of_val
    (mask : SignMask) (hlt : rank899 < numPairWords)
    {i : WordIndex} (hi : i.val = 11) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal11.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank899, hlt⟩ : Fin numPairWords) mask (j := (11 : WordIndex)) hi]
  exact direct11_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot01.coeffEval mask + dot11.coeffEval mask =
      poly899_2_12.coeffEval mask := by
  simp [dot01, dot11, poly899_2_12,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (_hmember : cube1x0x1x.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_12 =
      poly899_2_12.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights2_12]
  rw [direct01_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct11_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot01_eval mask, dot11_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (hmember : cube1x0x1x.Member mask) :
    weightedDenomAtRank
      (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_12 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
