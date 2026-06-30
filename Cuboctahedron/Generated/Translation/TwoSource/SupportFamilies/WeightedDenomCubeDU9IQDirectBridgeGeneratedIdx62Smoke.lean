import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx05Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx10Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open Cuboctahedron.Generated.Coverage
open DenominatorCube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector

abbrev generatedNormal05 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx05Smoke.generatedNormal05

abbrev generatedNormal10 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx10Smoke.generatedNormal10

def rank905 : Nat := 905

def cubexx0011 : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.d11m => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

def weights6_11 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 1
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 1
  w12 := 0
  w13 := 0

private theorem weights6_11_nonnegative :
    weights6_11.Nonnegative := by
  norm_num [weights6_11, InternalImpactWeights.Nonnegative]

private theorem weights6_11_positive :
    weights6_11.PositiveSome := by
  norm_num [weights6_11, InternalImpactWeights.PositiveSome]

def poly905_6_11 : WalshQuadratic where
  c := 16
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := -4/3
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := 0
  y_dm11 := 20/3
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 4/3
  d111_d11m := -40/9
  d111_d1m1 := 0
  d111_dm11 := 40/9
  d11m_d1m1 := 8/3
  d11m_dm11 := 16/3
  d1m1_dm11 := -8/3

private def reduced905_6_11 : WalshQuadratic where
  c := -80/9
  y := 8/3
  z := 16/3
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

private theorem poly905_6_11_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubexx0011.Member mask) :
    poly905_6_11.coeffEval mask = reduced905_6_11.coeffEval mask := by
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = false := by
    simpa [cubexx0011, MaskSubcube.Member] using hmask SignBit.d111
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = false := by
    simpa [cubexx0011, MaskSubcube.Member] using hmask SignBit.d11m
  have hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId = true := by
    simpa [cubexx0011, MaskSubcube.Member] using hmask SignBit.d1m1
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = true := by
    simpa [cubexx0011, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hz : maskBitForPair mask SignBit.z.toPairId
    all_goals
      simp [poly905_6_11, reduced905_6_11, WalshQuadratic.coeffEval, SignBit.value, hd111, hd11m, hd1m1, hdm11, hy, hz]
      norm_num

private def reducedBound905_6_11 :
    WalshQuadraticReducedAbsBound cubexx0011 poly905_6_11 where
  reduced := reduced905_6_11
  eq_on_cube := by
    intro mask hmask
    exact poly905_6_11_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced905_6_11, WalshQuadratic.absBoundSum]

private def cubeBound905_6_11 :
    WalshQuadraticCubeBound cubexx0011 poly905_6_11 :=
  WalshQuadraticCubeBound.leaf reducedBound905_6_11

private theorem poly905_6_11_nonpos
    {mask : SignMask} (hmask : cubexx0011.Member mask) :
    poly905_6_11.coeffEval mask <= 0 :=
  cubeBound905_6_11.coeffEval_nonpos hmask

def reducedObstruction905_6_11
    (direct_eq :
      forall {mask : SignMask} (hlt : rank905 < numPairWords),
        cubexx0011.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank905, hlt⟩ : Fin numPairWords) mask weights6_11 =
            poly905_6_11.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank905 cubexx0011.Member where
  weights := weights6_11
  nonnegative := weights6_11_nonnegative
  positive_some := weights6_11_positive
  poly := poly905_6_11
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly905_6_11_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank905 < numPairWords),
        cubexx0011.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank905, hlt⟩ : Fin numPairWords) mask weights6_11 =
            poly905_6_11.coeffEval mask)
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubexx0011.Member mask) :
    weightedDenomAtRank
      (⟨rank905, hlt⟩ : Fin numPairWords) mask weights6_11 <= 0 :=
  (reducedObstruction905_6_11 direct_eq).nonpos hlt hmember

private def dot05 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := -40/9
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 8/3
  d1m1_dm11 := 0

private def dot10 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -4/3
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 20/3
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 8/3
  d1m1_dm11 := -8/3

private theorem generatedRank_eq
    (hlt : rank905 < numPairWords) :
    (⟨rank905, hlt⟩ : Fin numPairWords) = generatedRank := by
  ext
  norm_num [rank905, generatedRank, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedRank]

private theorem directWalshDotAtRank_eq_of_val
    (r : Fin numPairWords) (mask : SignMask) {i j : WordIndex}
    (h : i.val = j.val) :
    directWalshDotAtRank r mask i = directWalshDotAtRank r mask j := by
  have hij : i = j := Fin.ext h
  rw [hij]

private theorem dot05_eq :
    WalshAffineVec3.dot generatedNormal05 generatedVector = dot05 := by
  norm_num [dot05, generatedNormal05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx05Smoke.generatedNormal05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx05Smoke.generatedNormal05_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx05Smoke.generatedNormal05_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx05Smoke.generatedNormal05_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot05_eval
    (mask : SignMask) :
    dot (generatedNormal05.eval mask) (generatedVector.eval mask) =
      dot05.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal05 generatedVector mask
  rw [dot05_eq] at h
  exact h.symm

private theorem direct05_eq
    (mask : SignMask) (hlt : rank905 < numPairWords) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask (5 : WordIndex) =
      dot (generatedNormal05.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx05Smoke.generatedNormal05_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct05_eq_of_val
    (mask : SignMask) (hlt : rank905 < numPairWords)
    {i : WordIndex} (hi : i.val = 5) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal05.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank905, hlt⟩ : Fin numPairWords) mask (j := (5 : WordIndex)) hi]
  exact direct05_eq mask hlt

private theorem dot10_eq :
    WalshAffineVec3.dot generatedNormal10 generatedVector = dot10 := by
  norm_num [dot10, generatedNormal10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx10Smoke.generatedNormal10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx10Smoke.generatedNormal10_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx10Smoke.generatedNormal10_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx10Smoke.generatedNormal10_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot10_eval
    (mask : SignMask) :
    dot (generatedNormal10.eval mask) (generatedVector.eval mask) =
      dot10.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal10 generatedVector mask
  rw [dot10_eq] at h
  exact h.symm

private theorem direct10_eq
    (mask : SignMask) (hlt : rank905 < numPairWords) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask (10 : WordIndex) =
      dot (generatedNormal10.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx10Smoke.generatedNormal10_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct10_eq_of_val
    (mask : SignMask) (hlt : rank905 < numPairWords)
    {i : WordIndex} (hi : i.val = 10) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal10.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank905, hlt⟩ : Fin numPairWords) mask (j := (10 : WordIndex)) hi]
  exact direct10_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot05.coeffEval mask + dot10.coeffEval mask =
      poly905_6_11.coeffEval mask := by
  simp [dot05, dot10, poly905_6_11,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (_hmember : cubexx0011.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask weights6_11 =
      poly905_6_11.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights6_11]
  rw [direct05_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct10_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot05_eval mask, dot10_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubexx0011.Member mask) :
    weightedDenomAtRank
      (⟨rank905, hlt⟩ : Fin numPairWords) mask weights6_11 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubexx0011.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank905, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank905, hlt⟩ : Fin numPairWords) mask weights6_11 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights6_11_nonnegative
      weights6_11_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubexx0011.Member mask) :
    TranslationGoodCaseKilled (⟨rank905, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx62Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
