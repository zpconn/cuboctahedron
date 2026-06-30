import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open Cuboctahedron.Generated.Coverage
open DenominatorCube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector

abbrev generatedNormal06 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke.generatedNormal06

def rank955 : Nat := 955

def cubexxx101 : MaskSubcube where
  fixed
    | SignBit.d11m => some true
    | SignBit.d1m1 => some false
    | SignBit.dm11 => some true
    | _ => none

def weights7 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 1
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights7_nonnegative :
    weights7.Nonnegative := by
  norm_num [weights7, InternalImpactWeights.Nonnegative]

private theorem weights7_positive :
    weights7.PositiveSome := by
  norm_num [weights7, InternalImpactWeights.PositiveSome]

def poly955_7 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 20/3
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -4/3
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := -8/3
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 0
  d1m1_dm11 := 40/9

private def reduced955_7 : WalshQuadratic where
  c := -52/9
  y := 4/3
  z := -4/3
  d111 := 8/3
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

private theorem poly955_7_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubexxx101.Member mask) :
    poly955_7.coeffEval mask = reduced955_7.coeffEval mask := by
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = true := by
    simpa [cubexxx101, MaskSubcube.Member] using hmask SignBit.d11m
  have hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId = false := by
    simpa [cubexxx101, MaskSubcube.Member] using hmask SignBit.d1m1
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = true := by
    simpa [cubexxx101, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hz : maskBitForPair mask SignBit.z.toPairId
    all_goals
      by_cases hd111 : maskBitForPair mask SignBit.d111.toPairId
      all_goals
        simp [poly955_7, reduced955_7, WalshQuadratic.coeffEval, SignBit.value, hd11m, hd1m1, hdm11, hy, hz, hd111]
        norm_num

private def reducedBound955_7 :
    WalshQuadraticReducedAbsBound cubexxx101 poly955_7 where
  reduced := reduced955_7
  eq_on_cube := by
    intro mask hmask
    exact poly955_7_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced955_7, WalshQuadratic.absBoundSum]

private def cubeBound955_7 :
    WalshQuadraticCubeBound cubexxx101 poly955_7 :=
  WalshQuadraticCubeBound.leaf reducedBound955_7

private theorem poly955_7_nonpos
    {mask : SignMask} (hmask : cubexxx101.Member mask) :
    poly955_7.coeffEval mask <= 0 :=
  cubeBound955_7.coeffEval_nonpos hmask

def reducedObstruction955_7
    (direct_eq :
      forall {mask : SignMask} (hlt : rank955 < numPairWords),
        cubexxx101.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank955, hlt⟩ : Fin numPairWords) mask weights7 =
            poly955_7.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank955 cubexxx101.Member where
  weights := weights7
  nonnegative := weights7_nonnegative
  positive_some := weights7_positive
  poly := poly955_7
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly955_7_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank955 < numPairWords),
        cubexxx101.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank955, hlt⟩ : Fin numPairWords) mask weights7 =
            poly955_7.coeffEval mask)
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubexxx101.Member mask) :
    weightedDenomAtRank
      (⟨rank955, hlt⟩ : Fin numPairWords) mask weights7 <= 0 :=
  (reducedObstruction955_7 direct_eq).nonpos hlt hmember

private def dot06 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 20/3
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -4/3
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := -8/3
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 0
  d1m1_dm11 := 40/9

private theorem generatedRank_eq
    (hlt : rank955 < numPairWords) :
    (⟨rank955, hlt⟩ : Fin numPairWords) = generatedRank := by
  ext
  norm_num [rank955, generatedRank, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedRank]

private theorem directWalshDotAtRank_eq_of_val
    (r : Fin numPairWords) (mask : SignMask) {i j : WordIndex}
    (h : i.val = j.val) :
    directWalshDotAtRank r mask i = directWalshDotAtRank r mask j := by
  have hij : i = j := Fin.ext h
  rw [hij]

private theorem dot06_eq :
    WalshAffineVec3.dot generatedNormal06 generatedVector = dot06 := by
  norm_num [dot06, generatedNormal06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke.generatedNormal06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke.generatedNormal06_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke.generatedNormal06_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke.generatedNormal06_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot06_eval
    (mask : SignMask) :
    dot (generatedNormal06.eval mask) (generatedVector.eval mask) =
      dot06.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal06 generatedVector mask
  rw [dot06_eq] at h
  exact h.symm

private theorem direct06_eq
    (mask : SignMask) (hlt : rank955 < numPairWords) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask (6 : WordIndex) =
      dot (generatedNormal06.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke.generatedNormal06_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct06_eq_of_val
    (mask : SignMask) (hlt : rank955 < numPairWords)
    {i : WordIndex} (hi : i.val = 6) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal06.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank955, hlt⟩ : Fin numPairWords) mask (j := (6 : WordIndex)) hi]
  exact direct06_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot06.coeffEval mask =
      poly955_7.coeffEval mask := by
  simp [dot06, poly955_7,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (_hmember : cubexxx101.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask weights7 =
      poly955_7.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights7]
  rw [direct06_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot06_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubexxx101.Member mask) :
    weightedDenomAtRank
      (⟨rank955, hlt⟩ : Fin numPairWords) mask weights7 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubexxx101.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank955, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank955, hlt⟩ : Fin numPairWords) mask weights7 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights7_nonnegative
      weights7_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubexxx101.Member mask) :
    TranslationGoodCaseKilled (⟨rank955, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx82Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
