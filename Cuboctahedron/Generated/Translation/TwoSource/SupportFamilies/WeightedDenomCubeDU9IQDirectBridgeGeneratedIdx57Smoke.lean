import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx07Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke

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

abbrev generatedNormal07 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx07Smoke.generatedNormal07

def rank905 : Nat := 905

def cubex0111x : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some true
    | SignBit.d11m => some true
    | SignBit.d1m1 => some true
    | _ => none

def weights8 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 1
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights8_nonnegative :
    weights8.Nonnegative := by
  norm_num [weights8, InternalImpactWeights.Nonnegative]

private theorem weights8_positive :
    weights8.PositiveSome := by
  norm_num [weights8, InternalImpactWeights.PositiveSome]

def poly905_8 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := -28/9
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 20/9
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 52/9
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := -40/9
  d111_d1m1 := -8/3
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def reduced905_8 : WalshQuadratic where
  c := -8
  y := 20/9
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 40/9
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

private theorem poly905_8_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubex0111x.Member mask) :
    poly905_8.coeffEval mask = reduced905_8.coeffEval mask := by
  have hz : maskBitForPair mask SignBit.z.toPairId = false := by
    simpa [cubex0111x, MaskSubcube.Member] using hmask SignBit.z
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = true := by
    simpa [cubex0111x, MaskSubcube.Member] using hmask SignBit.d111
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = true := by
    simpa [cubex0111x, MaskSubcube.Member] using hmask SignBit.d11m
  have hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId = true := by
    simpa [cubex0111x, MaskSubcube.Member] using hmask SignBit.d1m1
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hdm11 : maskBitForPair mask SignBit.dm11.toPairId
    all_goals
      simp [poly905_8, reduced905_8, WalshQuadratic.coeffEval, SignBit.value, hz, hd111, hd11m, hd1m1, hy, hdm11]
      norm_num

private def reducedBound905_8 :
    WalshQuadraticReducedAbsBound cubex0111x poly905_8 where
  reduced := reduced905_8
  eq_on_cube := by
    intro mask hmask
    exact poly905_8_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced905_8, WalshQuadratic.absBoundSum]

private def cubeBound905_8 :
    WalshQuadraticCubeBound cubex0111x poly905_8 :=
  WalshQuadraticCubeBound.leaf reducedBound905_8

private theorem poly905_8_nonpos
    {mask : SignMask} (hmask : cubex0111x.Member mask) :
    poly905_8.coeffEval mask <= 0 :=
  cubeBound905_8.coeffEval_nonpos hmask

def reducedObstruction905_8
    (direct_eq :
      forall {mask : SignMask} (hlt : rank905 < numPairWords),
        cubex0111x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank905, hlt⟩ : Fin numPairWords) mask weights8 =
            poly905_8.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank905 cubex0111x.Member where
  weights := weights8
  nonnegative := weights8_nonnegative
  positive_some := weights8_positive
  poly := poly905_8
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly905_8_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank905 < numPairWords),
        cubex0111x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank905, hlt⟩ : Fin numPairWords) mask weights8 =
            poly905_8.coeffEval mask)
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubex0111x.Member mask) :
    weightedDenomAtRank
      (⟨rank905, hlt⟩ : Fin numPairWords) mask weights8 <= 0 :=
  (reducedObstruction905_8 direct_eq).nonpos hlt hmember

private def dot07 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := -28/9
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 20/9
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 52/9
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := -40/9
  d111_d1m1 := -8/3
  d111_dm11 := 40/9
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

private theorem dot07_eq :
    WalshAffineVec3.dot generatedNormal07 generatedVector = dot07 := by
  norm_num [dot07, generatedNormal07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx07Smoke.generatedNormal07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx07Smoke.generatedNormal07_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx07Smoke.generatedNormal07_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx07Smoke.generatedNormal07_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot07_eval
    (mask : SignMask) :
    dot (generatedNormal07.eval mask) (generatedVector.eval mask) =
      dot07.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal07 generatedVector mask
  rw [dot07_eq] at h
  exact h.symm

private theorem direct07_eq
    (mask : SignMask) (hlt : rank905 < numPairWords) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask (7 : WordIndex) =
      dot (generatedNormal07.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank905Idx07Smoke.generatedNormal07_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank905ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct07_eq_of_val
    (mask : SignMask) (hlt : rank905 < numPairWords)
    {i : WordIndex} (hi : i.val = 7) :
    directWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal07.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank905, hlt⟩ : Fin numPairWords) mask (j := (7 : WordIndex)) hi]
  exact direct07_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot07.coeffEval mask =
      poly905_8.coeffEval mask := by
  simp [dot07, poly905_8,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (_hmember : cubex0111x.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank905, hlt⟩ : Fin numPairWords) mask weights8 =
      poly905_8.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights8]
  rw [direct07_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot07_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubex0111x.Member mask) :
    weightedDenomAtRank
      (⟨rank905, hlt⟩ : Fin numPairWords) mask weights8 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubex0111x.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank905, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank905, hlt⟩ : Fin numPairWords) mask weights8 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights8_nonnegative
      weights8_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank905 < numPairWords)
    (hmember : cubex0111x.Member mask) :
    TranslationGoodCaseKilled (⟨rank905, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx57Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
