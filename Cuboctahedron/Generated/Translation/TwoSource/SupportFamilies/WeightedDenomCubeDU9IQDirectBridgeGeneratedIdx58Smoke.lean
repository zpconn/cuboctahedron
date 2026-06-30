import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx01Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke

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

abbrev generatedNormal01 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx01Smoke.generatedNormal01

def rank905 : Nat := 905

def cube0xx1x1 : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d11m => some true
    | SignBit.dm11 => some true
    | _ => none

def weights2 : InternalImpactWeights where
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
  w12 := 0
  w13 := 0

private theorem weights2_nonnegative :
    weights2.Nonnegative := by
  norm_num [weights2, InternalImpactWeights.Nonnegative]

private theorem weights2_positive :
    weights2.PositiveSome := by
  norm_num [weights2, InternalImpactWeights.PositiveSome]

def poly905_2 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 40/27
  y_d11m := 8/3
  y_d1m1 := -8/9
  y_dm11 := 40/9
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

private def reduced905_2 : WalshQuadratic where
  c := -28/9
  y := 0
  z := 0
  d111 := -40/27
  d11m := 0
  d1m1 := 8/9
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

private theorem poly905_2_eq_reduced_on_cube
    {mask : SignMask} (hmask : cube0xx1x1.Member mask) :
    poly905_2.coeffEval mask = reduced905_2.coeffEval mask := by
  have hy : maskBitForPair mask SignBit.y.toPairId = false := by
    simpa [cube0xx1x1, MaskSubcube.Member] using hmask SignBit.y
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = true := by
    simpa [cube0xx1x1, MaskSubcube.Member] using hmask SignBit.d11m
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = true := by
    simpa [cube0xx1x1, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hz : maskBitForPair mask SignBit.z.toPairId
  all_goals
    by_cases hd111 : maskBitForPair mask SignBit.d111.toPairId
    all_goals
      by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
      all_goals
        simp [poly905_2, reduced905_2, WalshQuadratic.coeffEval, SignBit.value, hy, hd11m, hdm11, hz, hd111, hd1m1]
        norm_num

private def reducedBound905_2 :
    WalshQuadraticReducedAbsBound cube0xx1x1 poly905_2 where
  reduced := reduced905_2
  eq_on_cube := by
    intro mask hmask
    exact poly905_2_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced905_2, WalshQuadratic.absBoundSum]

private def cubeBound905_2 :
    WalshQuadraticCubeBound cube0xx1x1 poly905_2 :=
  WalshQuadraticCubeBound.leaf reducedBound905_2

private theorem poly905_2_nonpos
    {mask : SignMask} (hmask : cube0xx1x1.Member mask) :
    poly905_2.coeffEval mask <= 0 :=
  cubeBound905_2.coeffEval_nonpos hmask

def reducedObstruction905_2
    (direct_eq :
      forall {mask : SignMask} (hlt : rank905 < numPairWords),
        cube0xx1x1.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank905, hlt⟩ : Fin numPairWords) mask weights2 =
            poly905_2.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank905 cube0xx1x1.Member where
  weights := weights2
  nonnegative := weights2_nonnegative
  positive_some := weights2_positive
  poly := poly905_2
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly905_2_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank905 < numPairWords),
        cube0xx1x1.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank905, hlt⟩ : Fin numPairWords) mask weights2 =
            poly905_2.coeffEval mask)
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cube0xx1x1.Member mask) :
    weightedDenomAtRank
      (⟨rank905, hlt⟩ : Fin numPairWords) mask weights2 <= 0 :=
  (reducedObstruction905_2 direct_eq).nonpos hlt hmember

private def dot01 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 40/27
  y_d11m := 8/3
  y_d1m1 := -8/9
  y_dm11 := 40/9
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

private theorem dot01_eq :
    WalshAffineVec3.dot generatedNormal01 generatedVector = dot01 := by
  norm_num [dot01, generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx01Smoke.generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx01Smoke.generatedNormal01_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx01Smoke.generatedNormal01_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx01Smoke.generatedNormal01_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot01_eval
    (mask : SignMask) :
    dot (generatedNormal01.eval mask) (generatedVector.eval mask) =
      dot01.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal01 generatedVector mask
  rw [dot01_eq] at h
  exact h.symm

private theorem direct01_eq
    (mask : SignMask) (hlt : rank905 < numPairWords) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask (1 : WordIndex) =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx01Smoke.generatedNormal01_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct01_eq_of_val
    (mask : SignMask) (hlt : rank905 < numPairWords)
    {i : WordIndex} (hi : i.val = 1) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank905, hlt⟩ : Fin numPairWords) mask (j := (1 : WordIndex)) hi]
  exact direct01_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot01.coeffEval mask =
      poly905_2.coeffEval mask := by
  simp [dot01, poly905_2,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (_hmember : cube0xx1x1.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask weights2 =
      poly905_2.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights2]
  rw [direct01_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot01_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cube0xx1x1.Member mask) :
    weightedDenomAtRank
      (⟨rank905, hlt⟩ : Fin numPairWords) mask weights2 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cube0xx1x1.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank905, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank905, hlt⟩ : Fin numPairWords) mask weights2 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights2_nonnegative
      weights2_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cube0xx1x1.Member mask) :
    TranslationGoodCaseKilled (⟨rank905, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx58Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
