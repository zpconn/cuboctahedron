import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke

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

abbrev generatedNormal09 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke.generatedNormal09

def rank899 : Nat := 899

def cube0x1x0x : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d111 => some true
    | SignBit.d1m1 => some false
    | _ => none

def weights2_10 : InternalImpactWeights where
  w1 := 0
  w2 := 1
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 1
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights2_10_nonnegative :
    weights2_10.Nonnegative := by
  norm_num [weights2_10, InternalImpactWeights.Nonnegative]

private theorem weights2_10_positive :
    weights2_10.PositiveSome := by
  norm_num [weights2_10, InternalImpactWeights.PositiveSome]

def poly899_2_10 : WalshQuadratic where
  c := 12
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 4
  dm11 := 0
  yz := 0
  y_d111 := 8/3
  y_d11m := 8/3
  y_d1m1 := -20/3
  y_dm11 := 8/3
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 8/3
  d111_dm11 := 0
  d11m_d1m1 := -8/3
  d11m_dm11 := 0
  d1m1_dm11 := -8/3

private def reduced899_2_10 : WalshQuadratic where
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

private theorem poly899_2_10_eq_reduced_on_cube
    {mask : SignMask} (hmask : cube0x1x0x.Member mask) :
    poly899_2_10.coeffEval mask = reduced899_2_10.coeffEval mask := by
  have hy : maskBitForPair mask SignBit.y.toPairId = false := by
    simpa [cube0x1x0x, MaskSubcube.Member] using hmask SignBit.y
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = true := by
    simpa [cube0x1x0x, MaskSubcube.Member] using hmask SignBit.d111
  have hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId = false := by
    simpa [cube0x1x0x, MaskSubcube.Member] using hmask SignBit.d1m1
  by_cases hz : maskBitForPair mask SignBit.z.toPairId
  all_goals
    by_cases hd11m : maskBitForPair mask SignBit.d11m.toPairId
    all_goals
      by_cases hdm11 : maskBitForPair mask SignBit.dm11.toPairId
      all_goals
        simp [poly899_2_10, reduced899_2_10, WalshQuadratic.coeffEval, SignBit.value, hy, hd111, hd1m1, hz, hd11m, hdm11]
        norm_num

private def reducedBound899_2_10 :
    WalshQuadraticReducedAbsBound cube0x1x0x poly899_2_10 where
  reduced := reduced899_2_10
  eq_on_cube := by
    intro mask hmask
    exact poly899_2_10_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced899_2_10, WalshQuadratic.absBoundSum]

private def cubeBound899_2_10 :
    WalshQuadraticCubeBound cube0x1x0x poly899_2_10 :=
  WalshQuadraticCubeBound.leaf reducedBound899_2_10

private theorem poly899_2_10_nonpos
    {mask : SignMask} (hmask : cube0x1x0x.Member mask) :
    poly899_2_10.coeffEval mask <= 0 :=
  cubeBound899_2_10.coeffEval_nonpos hmask

def reducedObstruction899_2_10
    (direct_eq :
      forall {mask : SignMask} (hlt : rank899 < numPairWords),
        cube0x1x0x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_10 =
            poly899_2_10.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank899 cube0x1x0x.Member where
  weights := weights2_10
  nonnegative := weights2_10_nonnegative
  positive_some := weights2_10_positive
  poly := poly899_2_10
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly899_2_10_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank899 < numPairWords),
        cube0x1x0x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_10 =
            poly899_2_10.coeffEval mask)
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (hmember : cube0x1x0x.Member mask) :
    weightedDenomAtRank
      (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_10 <= 0 :=
  (reducedObstruction899_2_10 direct_eq).nonpos hlt hmember

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

private def dot09 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 4
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -4
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 8/3
  d111_dm11 := 0
  d11m_d1m1 := -8/3
  d11m_dm11 := 0
  d1m1_dm11 := -8/3

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

private theorem dot09_eq :
    WalshAffineVec3.dot generatedNormal09 generatedVector = dot09 := by
  norm_num [dot09, generatedNormal09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke.generatedNormal09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke.generatedNormal09_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke.generatedNormal09_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke.generatedNormal09_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot09_eval
    (mask : SignMask) :
    dot (generatedNormal09.eval mask) (generatedVector.eval mask) =
      dot09.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal09 generatedVector mask
  rw [dot09_eq] at h
  exact h.symm

private theorem direct09_eq
    (mask : SignMask) (hlt : rank899 < numPairWords) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask (9 : WordIndex) =
      dot (generatedNormal09.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke.generatedNormal09_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct09_eq_of_val
    (mask : SignMask) (hlt : rank899 < numPairWords)
    {i : WordIndex} (hi : i.val = 9) :
    directWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal09.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank899, hlt⟩ : Fin numPairWords) mask (j := (9 : WordIndex)) hi]
  exact direct09_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot01.coeffEval mask + dot09.coeffEval mask =
      poly899_2_10.coeffEval mask := by
  simp [dot01, dot09, poly899_2_10,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (_hmember : cube0x1x0x.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_10 =
      poly899_2_10.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights2_10]
  rw [direct01_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct09_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot01_eval mask, dot09_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank899 < numPairWords)
    (hmember : cube0x1x0x.Member mask) :
    weightedDenomAtRank
      (⟨rank899, hlt⟩ : Fin numPairWords) mask weights2_10 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
