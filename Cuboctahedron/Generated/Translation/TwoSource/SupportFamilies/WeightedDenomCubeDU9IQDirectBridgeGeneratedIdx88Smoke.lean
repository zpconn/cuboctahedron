import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx05Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke

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

abbrev generatedNormal05 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx05Smoke.generatedNormal05

abbrev generatedNormal08 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke.generatedNormal08

def rank955 : Nat := 955

def cubex111x0 : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d111 => some true
    | SignBit.d11m => some true
    | SignBit.dm11 => some false
    | _ => none

def weights6_9 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 1
  w7 := 0
  w8 := 0
  w9 := 1
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights6_9_nonnegative :
    weights6_9.Nonnegative := by
  norm_num [weights6_9, InternalImpactWeights.Nonnegative]

private theorem weights6_9_positive :
    weights6_9.PositiveSome := by
  norm_num [weights6_9, InternalImpactWeights.PositiveSome]

def poly955_6_9 : WalshQuadratic where
  c := 16
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := 140/27
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := 0
  y_dm11 := 116/27
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := -44/27
  d111_d11m := -40/9
  d111_d1m1 := 0
  d111_dm11 := -8/3
  d11m_d1m1 := 8/3
  d11m_dm11 := 400/27
  d1m1_dm11 := 40/9

private def reduced955_6_9 : WalshQuadratic where
  c := -112/27
  y := -8/27
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -16/9
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

private theorem poly955_6_9_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubex111x0.Member mask) :
    poly955_6_9.coeffEval mask = reduced955_6_9.coeffEval mask := by
  have hz : maskBitForPair mask SignBit.z.toPairId = true := by
    simpa [cubex111x0, MaskSubcube.Member] using hmask SignBit.z
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = true := by
    simpa [cubex111x0, MaskSubcube.Member] using hmask SignBit.d111
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = true := by
    simpa [cubex111x0, MaskSubcube.Member] using hmask SignBit.d11m
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = false := by
    simpa [cubex111x0, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
    all_goals
      simp [poly955_6_9, reduced955_6_9, WalshQuadratic.coeffEval, SignBit.value, hz, hd111, hd11m, hdm11, hy, hd1m1]
      norm_num

private def reducedBound955_6_9 :
    WalshQuadraticReducedAbsBound cubex111x0 poly955_6_9 where
  reduced := reduced955_6_9
  eq_on_cube := by
    intro mask hmask
    exact poly955_6_9_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced955_6_9, WalshQuadratic.absBoundSum]

private def cubeBound955_6_9 :
    WalshQuadraticCubeBound cubex111x0 poly955_6_9 :=
  WalshQuadraticCubeBound.leaf reducedBound955_6_9

private theorem poly955_6_9_nonpos
    {mask : SignMask} (hmask : cubex111x0.Member mask) :
    poly955_6_9.coeffEval mask <= 0 :=
  cubeBound955_6_9.coeffEval_nonpos hmask

def reducedObstruction955_6_9
    (direct_eq :
      forall {mask : SignMask} (hlt : rank955 < numPairWords),
        cubex111x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank955, hlt⟩ : Fin numPairWords) mask weights6_9 =
            poly955_6_9.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank955 cubex111x0.Member where
  weights := weights6_9
  nonnegative := weights6_9_nonnegative
  positive_some := weights6_9_positive
  poly := poly955_6_9
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly955_6_9_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank955 < numPairWords),
        cubex111x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank955, hlt⟩ : Fin numPairWords) mask weights6_9 =
            poly955_6_9.coeffEval mask)
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubex111x0.Member mask) :
    weightedDenomAtRank
      (⟨rank955, hlt⟩ : Fin numPairWords) mask weights6_9 <= 0 :=
  (reducedObstruction955_6_9 direct_eq).nonpos hlt hmember

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
  d11m_dm11 := 200/27
  d1m1_dm11 := 0

private def dot08 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 140/27
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 116/27
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := -44/27
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := -8/3
  d11m_d1m1 := 0
  d11m_dm11 := 200/27
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

private theorem dot05_eq :
    WalshAffineVec3.dot generatedNormal05 generatedVector = dot05 := by
  norm_num [dot05, generatedNormal05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx05Smoke.generatedNormal05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx05Smoke.generatedNormal05_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx05Smoke.generatedNormal05_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx05Smoke.generatedNormal05_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot05_eval
    (mask : SignMask) :
    dot (generatedNormal05.eval mask) (generatedVector.eval mask) =
      dot05.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal05 generatedVector mask
  rw [dot05_eq] at h
  exact h.symm

private theorem direct05_eq
    (mask : SignMask) (hlt : rank955 < numPairWords) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask (5 : WordIndex) =
      dot (generatedNormal05.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx05Smoke.generatedNormal05_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct05_eq_of_val
    (mask : SignMask) (hlt : rank955 < numPairWords)
    {i : WordIndex} (hi : i.val = 5) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal05.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank955, hlt⟩ : Fin numPairWords) mask (j := (5 : WordIndex)) hi]
  exact direct05_eq mask hlt

private theorem dot08_eq :
    WalshAffineVec3.dot generatedNormal08 generatedVector = dot08 := by
  norm_num [dot08, generatedNormal08, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke.generatedNormal08, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke.generatedNormal08_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke.generatedNormal08_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke.generatedNormal08_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot08_eval
    (mask : SignMask) :
    dot (generatedNormal08.eval mask) (generatedVector.eval mask) =
      dot08.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal08 generatedVector mask
  rw [dot08_eq] at h
  exact h.symm

private theorem direct08_eq
    (mask : SignMask) (hlt : rank955 < numPairWords) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask (8 : WordIndex) =
      dot (generatedNormal08.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke.generatedNormal08_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct08_eq_of_val
    (mask : SignMask) (hlt : rank955 < numPairWords)
    {i : WordIndex} (hi : i.val = 8) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal08.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank955, hlt⟩ : Fin numPairWords) mask (j := (8 : WordIndex)) hi]
  exact direct08_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot05.coeffEval mask + dot08.coeffEval mask =
      poly955_6_9.coeffEval mask := by
  simp [dot05, dot08, poly955_6_9,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (_hmember : cubex111x0.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask weights6_9 =
      poly955_6_9.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights6_9]
  rw [direct05_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct08_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot05_eval mask, dot08_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubex111x0.Member mask) :
    weightedDenomAtRank
      (⟨rank955, hlt⟩ : Fin numPairWords) mask weights6_9 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubex111x0.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank955, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank955, hlt⟩ : Fin numPairWords) mask weights6_9 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights6_9_nonnegative
      weights6_9_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cubex111x0.Member mask) :
    TranslationGoodCaseKilled (⟨rank955, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx88Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
