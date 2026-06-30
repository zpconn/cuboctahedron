import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke

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

abbrev generatedNormal01 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01

abbrev generatedNormal10 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke.generatedNormal10

def rank896 : Nat := 896

def cube0x1x0x : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d111 => some true
    | SignBit.d1m1 => some false
    | _ => none

def weights2_11 : InternalImpactWeights where
  w1 := 0
  w2 := 2
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

private theorem weights2_11_nonnegative :
    weights2_11.Nonnegative := by
  norm_num [weights2_11, InternalImpactWeights.Nonnegative]

private theorem weights2_11_positive :
    weights2_11.PositiveSome := by
  norm_num [weights2_11, InternalImpactWeights.PositiveSome]

def poly896_2_11 : WalshQuadratic where
  c := 16
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 4/3
  dm11 := 0
  yz := 0
  y_d111 := 16/3
  y_d11m := 16/3
  y_d1m1 := -140/9
  y_dm11 := 16/3
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := -8/3
  d111_dm11 := 0
  d11m_d1m1 := -40/9
  d11m_dm11 := 0
  d1m1_dm11 := -40/9

private def reduced896_2_11 : WalshQuadratic where
  c := -32/9
  y := 0
  z := -4/3
  d111 := 0
  d11m := -8/9
  d1m1 := 0
  dm11 := -8/9
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

private theorem poly896_2_11_eq_reduced_on_cube
    {mask : SignMask} (hmask : cube0x1x0x.Member mask) :
    poly896_2_11.coeffEval mask = reduced896_2_11.coeffEval mask := by
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
        simp [poly896_2_11, reduced896_2_11, WalshQuadratic.coeffEval, SignBit.value, hy, hd111, hd1m1, hz, hd11m, hdm11]
        norm_num

private def reducedBound896_2_11 :
    WalshQuadraticReducedAbsBound cube0x1x0x poly896_2_11 where
  reduced := reduced896_2_11
  eq_on_cube := by
    intro mask hmask
    exact poly896_2_11_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced896_2_11, WalshQuadratic.absBoundSum]

private def cubeBound896_2_11 :
    WalshQuadraticCubeBound cube0x1x0x poly896_2_11 :=
  WalshQuadraticCubeBound.leaf reducedBound896_2_11

private theorem poly896_2_11_nonpos
    {mask : SignMask} (hmask : cube0x1x0x.Member mask) :
    poly896_2_11.coeffEval mask <= 0 :=
  cubeBound896_2_11.coeffEval_nonpos hmask

def reducedObstruction896_2_11
    (direct_eq :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cube0x1x0x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_11 =
            poly896_2_11.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank896 cube0x1x0x.Member where
  weights := weights2_11
  nonnegative := weights2_11_nonnegative
  positive_some := weights2_11_positive
  poly := poly896_2_11
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly896_2_11_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank896 < numPairWords),
        cube0x1x0x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_11 =
            poly896_2_11.coeffEval mask)
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hmember : cube0x1x0x.Member mask) :
    weightedDenomAtRank
      (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_11 <= 0 :=
  (reducedObstruction896_2_11 direct_eq).nonpos hlt hmember

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
  y_d1m1 := -40/9
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

private def dot10 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 4/3
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -20/3
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := -8/3
  d111_dm11 := 0
  d11m_d1m1 := -40/9
  d11m_dm11 := 0
  d1m1_dm11 := -40/9

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

private theorem dot01_eq :
    WalshAffineVec3.dot generatedNormal01 generatedVector = dot01 := by
  norm_num [dot01, generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot01_eval
    (mask : SignMask) :
    dot (generatedNormal01.eval mask) (generatedVector.eval mask) =
      dot01.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal01 generatedVector mask
  rw [dot01_eq] at h
  exact h.symm

private theorem direct01_eq
    (mask : SignMask) (hlt : rank896 < numPairWords) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask (1 : WordIndex) =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct01_eq_of_val
    (mask : SignMask) (hlt : rank896 < numPairWords)
    {i : WordIndex} (hi : i.val = 1) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank896, hlt⟩ : Fin numPairWords) mask (j := (1 : WordIndex)) hi]
  exact direct01_eq mask hlt

private theorem dot10_eq :
    WalshAffineVec3.dot generatedNormal10 generatedVector = dot10 := by
  norm_num [dot10, generatedNormal10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke.generatedNormal10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke.generatedNormal10_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke.generatedNormal10_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke.generatedNormal10_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot10_eval
    (mask : SignMask) :
    dot (generatedNormal10.eval mask) (generatedVector.eval mask) =
      dot10.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal10 generatedVector mask
  rw [dot10_eq] at h
  exact h.symm

private theorem direct10_eq
    (mask : SignMask) (hlt : rank896 < numPairWords) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask (10 : WordIndex) =
      dot (generatedNormal10.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke.generatedNormal10_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct10_eq_of_val
    (mask : SignMask) (hlt : rank896 < numPairWords)
    {i : WordIndex} (hi : i.val = 10) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal10.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank896, hlt⟩ : Fin numPairWords) mask (j := (10 : WordIndex)) hi]
  exact direct10_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    2 * dot01.coeffEval mask + dot10.coeffEval mask =
      poly896_2_11.coeffEval mask := by
  simp [dot01, dot10, poly896_2_11,
    WalshQuadratic.coeffEval]
  ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (_hmember : cube0x1x0x.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_11 =
      poly896_2_11.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights2_11]
  rw [direct01_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct10_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot01_eval mask, dot10_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hmember : cube0x1x0x.Member mask) :
    weightedDenomAtRank
      (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_11 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
