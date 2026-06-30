import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open Cuboctahedron.Generated.Coverage
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

abbrev generatedNormal03 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke.generatedNormal03

def rank903 : Nat := 903

def cubex101x0 : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d111 => some false
    | SignBit.d11m => some true
    | SignBit.dm11 => some false
    | _ => none

def weights4 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 1
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights4_nonnegative :
    weights4.Nonnegative := by
  norm_num [weights4, InternalImpactWeights.Nonnegative]

private theorem weights4_positive :
    weights4.PositiveSome := by
  norm_num [weights4, InternalImpactWeights.PositiveSome]

def poly903_4 : WalshQuadratic where
  c := 4
  y := 0
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
  z_d111 := 104/27
  z_d11m := -8/3
  z_d1m1 := 8/9
  z_dm11 := 8/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def reduced903_4 : WalshQuadratic where
  c := -140/27
  y := 0
  z := 0
  d111 := 0
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

private theorem poly903_4_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubex101x0.Member mask) :
    poly903_4.coeffEval mask = reduced903_4.coeffEval mask := by
  have hz : maskBitForPair mask SignBit.z.toPairId = true := by
    simpa [cubex101x0, MaskSubcube.Member] using hmask SignBit.z
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = false := by
    simpa [cubex101x0, MaskSubcube.Member] using hmask SignBit.d111
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = true := by
    simpa [cubex101x0, MaskSubcube.Member] using hmask SignBit.d11m
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = false := by
    simpa [cubex101x0, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
    all_goals
      simp [poly903_4, reduced903_4, WalshQuadratic.coeffEval, SignBit.value, hz, hd111, hd11m, hdm11, hy, hd1m1]
      norm_num

private def reducedBound903_4 :
    WalshQuadraticReducedAbsBound cubex101x0 poly903_4 where
  reduced := reduced903_4
  eq_on_cube := by
    intro mask hmask
    exact poly903_4_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced903_4, WalshQuadratic.absBoundSum]

private def cubeBound903_4 :
    WalshQuadraticCubeBound cubex101x0 poly903_4 :=
  WalshQuadraticCubeBound.leaf reducedBound903_4

private theorem poly903_4_nonpos
    {mask : SignMask} (hmask : cubex101x0.Member mask) :
    poly903_4.coeffEval mask <= 0 :=
  cubeBound903_4.coeffEval_nonpos hmask

def reducedObstruction903_4
    (direct_eq :
      forall {mask : SignMask} (hlt : rank903 < numPairWords),
        cubex101x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank903, hlt⟩ : Fin numPairWords) mask weights4 =
            poly903_4.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank903 cubex101x0.Member where
  weights := weights4
  nonnegative := weights4_nonnegative
  positive_some := weights4_positive
  poly := poly903_4
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly903_4_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank903 < numPairWords),
        cubex101x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank903, hlt⟩ : Fin numPairWords) mask weights4 =
            poly903_4.coeffEval mask)
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex101x0.Member mask) :
    weightedDenomAtRank
      (⟨rank903, hlt⟩ : Fin numPairWords) mask weights4 <= 0 :=
  (reducedObstruction903_4 direct_eq).nonpos hlt hmember

private def dot03 : WalshQuadratic where
  c := 4
  y := 0
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
  z_d111 := 104/27
  z_d11m := -8/3
  z_d1m1 := 8/9
  z_dm11 := 8/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

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

private theorem dot03_eq :
    WalshAffineVec3.dot generatedNormal03 generatedVector = dot03 := by
  norm_num [dot03, generatedNormal03, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke.generatedNormal03, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke.generatedNormal03_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke.generatedNormal03_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke.generatedNormal03_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot03_eval
    (mask : SignMask) :
    dot (generatedNormal03.eval mask) (generatedVector.eval mask) =
      dot03.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal03 generatedVector mask
  rw [dot03_eq] at h
  exact h.symm

private theorem direct03_eq
    (mask : SignMask) (hlt : rank903 < numPairWords) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask (3 : WordIndex) =
      dot (generatedNormal03.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke.generatedNormal03_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct03_eq_of_val
    (mask : SignMask) (hlt : rank903 < numPairWords)
    {i : WordIndex} (hi : i.val = 3) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal03.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank903, hlt⟩ : Fin numPairWords) mask (j := (3 : WordIndex)) hi]
  exact direct03_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot03.coeffEval mask =
      poly903_4.coeffEval mask := by
  simp [dot03, poly903_4,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (_hmember : cubex101x0.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask weights4 =
      poly903_4.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights4]
  rw [direct03_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot03_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex101x0.Member mask) :
    weightedDenomAtRank
      (⟨rank903, hlt⟩ : Fin numPairWords) mask weights4 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex101x0.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank903, hlt⟩ : Fin numPairWords) mask weights4 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights4_nonnegative
      weights4_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex101x0.Member mask) :
    TranslationGoodCaseKilled (⟨rank903, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
