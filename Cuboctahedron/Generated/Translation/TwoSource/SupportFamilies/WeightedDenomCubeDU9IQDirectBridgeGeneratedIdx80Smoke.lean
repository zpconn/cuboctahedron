import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx01Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke

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

abbrev generatedNormal00 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Smoke.generatedNormal00

abbrev generatedNormal01 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx01Smoke.generatedNormal01

def rank955 : Nat := 955

def cube1xx0x0 : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d11m => some false
    | SignBit.dm11 => some false
    | _ => none

def weights1_2 : InternalImpactWeights where
  w1 := 1
  w2 := 2
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

private theorem weights1_2_nonnegative :
    weights1_2.Nonnegative := by
  norm_num [weights1_2, InternalImpactWeights.Nonnegative]

private theorem weights1_2_positive :
    weights1_2.PositiveSome := by
  norm_num [weights1_2, InternalImpactWeights.PositiveSome]

def poly955_1_2 : WalshQuadratic where
  c := 12
  y := 0
  z := 0
  d111 := -56/27
  d11m := 8/3
  d1m1 := 40/9
  dm11 := 280/81
  yz := 0
  y_d111 := 80/27
  y_d11m := 16/3
  y_d1m1 := -16/9
  y_dm11 := 464/81
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

private def reduced955_1_2 : WalshQuadratic where
  c := -140/27
  y := 0
  z := 0
  d111 := 8/9
  d11m := 0
  d1m1 := 8/3
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

private theorem poly955_1_2_eq_reduced_on_cube
    {mask : SignMask} (hmask : cube1xx0x0.Member mask) :
    poly955_1_2.coeffEval mask = reduced955_1_2.coeffEval mask := by
  have hy : maskBitForPair mask SignBit.y.toPairId = true := by
    simpa [cube1xx0x0, MaskSubcube.Member] using hmask SignBit.y
  have hd11m : maskBitForPair mask SignBit.d11m.toPairId = false := by
    simpa [cube1xx0x0, MaskSubcube.Member] using hmask SignBit.d11m
  have hdm11 : maskBitForPair mask SignBit.dm11.toPairId = false := by
    simpa [cube1xx0x0, MaskSubcube.Member] using hmask SignBit.dm11
  by_cases hz : maskBitForPair mask SignBit.z.toPairId
  all_goals
    by_cases hd111 : maskBitForPair mask SignBit.d111.toPairId
    all_goals
      by_cases hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId
      all_goals
        simp [poly955_1_2, reduced955_1_2, WalshQuadratic.coeffEval, SignBit.value, hy, hd11m, hdm11, hz, hd111, hd1m1]
        norm_num

private def reducedBound955_1_2 :
    WalshQuadraticReducedAbsBound cube1xx0x0 poly955_1_2 where
  reduced := reduced955_1_2
  eq_on_cube := by
    intro mask hmask
    exact poly955_1_2_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced955_1_2, WalshQuadratic.absBoundSum]

private def cubeBound955_1_2 :
    WalshQuadraticCubeBound cube1xx0x0 poly955_1_2 :=
  WalshQuadraticCubeBound.leaf reducedBound955_1_2

private theorem poly955_1_2_nonpos
    {mask : SignMask} (hmask : cube1xx0x0.Member mask) :
    poly955_1_2.coeffEval mask <= 0 :=
  cubeBound955_1_2.coeffEval_nonpos hmask

def reducedObstruction955_1_2
    (direct_eq :
      forall {mask : SignMask} (hlt : rank955 < numPairWords),
        cube1xx0x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank955, hlt⟩ : Fin numPairWords) mask weights1_2 =
            poly955_1_2.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank955 cube1xx0x0.Member where
  weights := weights1_2
  nonnegative := weights1_2_nonnegative
  positive_some := weights1_2_positive
  poly := poly955_1_2
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly955_1_2_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank955 < numPairWords),
        cube1xx0x0.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank955, hlt⟩ : Fin numPairWords) mask weights1_2 =
            poly955_1_2.coeffEval mask)
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cube1xx0x0.Member mask) :
    weightedDenomAtRank
      (⟨rank955, hlt⟩ : Fin numPairWords) mask weights1_2 <= 0 :=
  (reducedObstruction955_1_2 direct_eq).nonpos hlt hmember

private def dot00 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := -56/27
  d11m := 8/3
  d1m1 := 40/9
  dm11 := 280/81
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
  y_dm11 := 232/81
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

private theorem dot00_eq :
    WalshAffineVec3.dot generatedNormal00 generatedVector = dot00 := by
  norm_num [dot00, generatedNormal00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Smoke.generatedNormal00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Smoke.generatedNormal00_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Smoke.generatedNormal00_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Smoke.generatedNormal00_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot00_eval
    (mask : SignMask) :
    dot (generatedNormal00.eval mask) (generatedVector.eval mask) =
      dot00.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal00 generatedVector mask
  rw [dot00_eq] at h
  exact h.symm

private theorem direct00_eq
    (mask : SignMask) (hlt : rank955 < numPairWords) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask (0 : WordIndex) =
      dot (generatedNormal00.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Smoke.generatedNormal00_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct00_eq_of_val
    (mask : SignMask) (hlt : rank955 < numPairWords)
    {i : WordIndex} (hi : i.val = 0) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal00.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank955, hlt⟩ : Fin numPairWords) mask (j := (0 : WordIndex)) hi]
  exact direct00_eq mask hlt

private theorem dot01_eq :
    WalshAffineVec3.dot generatedNormal01 generatedVector = dot01 := by
  norm_num [dot01, generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx01Smoke.generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx01Smoke.generatedNormal01_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx01Smoke.generatedNormal01_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx01Smoke.generatedNormal01_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot01_eval
    (mask : SignMask) :
    dot (generatedNormal01.eval mask) (generatedVector.eval mask) =
      dot01.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal01 generatedVector mask
  rw [dot01_eq] at h
  exact h.symm

private theorem direct01_eq
    (mask : SignMask) (hlt : rank955 < numPairWords) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask (1 : WordIndex) =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx01Smoke.generatedNormal01_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct01_eq_of_val
    (mask : SignMask) (hlt : rank955 < numPairWords)
    {i : WordIndex} (hi : i.val = 1) :
    directWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank955, hlt⟩ : Fin numPairWords) mask (j := (1 : WordIndex)) hi]
  exact direct01_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    dot00.coeffEval mask + 2 * dot01.coeffEval mask =
      poly955_1_2.coeffEval mask := by
  simp [dot00, dot01, poly955_1_2,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (_hmember : cube1xx0x0.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank955, hlt⟩ : Fin numPairWords) mask weights1_2 =
      poly955_1_2.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights1_2]
  rw [direct00_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct01_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot00_eval mask, dot01_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cube1xx0x0.Member mask) :
    weightedDenomAtRank
      (⟨rank955, hlt⟩ : Fin numPairWords) mask weights1_2 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cube1xx0x0.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank955, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank955, hlt⟩ : Fin numPairWords) mask weights1_2 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights1_2_nonnegative
      weights1_2_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank955 < numPairWords)
    (hmember : cube1xx0x0.Member mask) :
    TranslationGoodCaseKilled (⟨rank955, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx80Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
