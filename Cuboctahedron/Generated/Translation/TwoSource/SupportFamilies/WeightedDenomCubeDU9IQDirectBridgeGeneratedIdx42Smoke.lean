import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ReducedWalshQuadraticBound
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticObstruction
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke

/-!
Generated DU9IQ traced direct bridge smoke.

This file supplies the direct weighted Walsh-dot equality premise for a
single reduced-bound weighted cube.  It composes already checked vector
and normal traces instead of unfolding rank-local normal recurrences.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke

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

abbrev generatedNormal06 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke.generatedNormal06

abbrev generatedNormal07 : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke.generatedNormal07

def rank903 : Nat := 903

def cubex10x0x : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d111 => some false
    | SignBit.d1m1 => some false
    | _ => none

def weights7_8 : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 5
  w8 := 3
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

private theorem weights7_8_nonnegative :
    weights7_8.Nonnegative := by
  norm_num [weights7_8, InternalImpactWeights.Nonnegative]

private theorem weights7_8_positive :
    weights7_8.PositiveSome := by
  norm_num [weights7_8, InternalImpactWeights.PositiveSome]

def poly903_7_8 : WalshQuadratic where
  c := 64
  y := 0
  z := 0
  d111 := -28/3
  d11m := 0
  d1m1 := 100/3
  dm11 := 0
  yz := 0
  y_d111 := 20/3
  y_d11m := 0
  y_d1m1 := -20/3
  y_dm11 := 0
  z_d111 := 52/3
  z_d11m := 0
  z_d1m1 := 20/3
  z_dm11 := 0
  d111_d11m := -40/3
  d111_d1m1 := -64/3
  d111_dm11 := 200/9
  d11m_d1m1 := 40/3
  d11m_dm11 := 0
  d1m1_dm11 := -200/9

private def reduced903_7_8 : WalshQuadratic where
  c := -16/3
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

private theorem poly903_7_8_eq_reduced_on_cube
    {mask : SignMask} (hmask : cubex10x0x.Member mask) :
    poly903_7_8.coeffEval mask = reduced903_7_8.coeffEval mask := by
  have hz : maskBitForPair mask SignBit.z.toPairId = true := by
    simpa [cubex10x0x, MaskSubcube.Member] using hmask SignBit.z
  have hd111 : maskBitForPair mask SignBit.d111.toPairId = false := by
    simpa [cubex10x0x, MaskSubcube.Member] using hmask SignBit.d111
  have hd1m1 : maskBitForPair mask SignBit.d1m1.toPairId = false := by
    simpa [cubex10x0x, MaskSubcube.Member] using hmask SignBit.d1m1
  by_cases hy : maskBitForPair mask SignBit.y.toPairId
  all_goals
    by_cases hd11m : maskBitForPair mask SignBit.d11m.toPairId
    all_goals
      by_cases hdm11 : maskBitForPair mask SignBit.dm11.toPairId
      all_goals
        simp [poly903_7_8, reduced903_7_8, WalshQuadratic.coeffEval, SignBit.value, hz, hd111, hd1m1, hy, hd11m, hdm11]
        norm_num

private def reducedBound903_7_8 :
    WalshQuadraticReducedAbsBound cubex10x0x poly903_7_8 where
  reduced := reduced903_7_8
  eq_on_cube := by
    intro mask hmask
    exact poly903_7_8_eq_reduced_on_cube hmask
  abs_bound_nonpos := by
    norm_num [reduced903_7_8, WalshQuadratic.absBoundSum]

private def cubeBound903_7_8 :
    WalshQuadraticCubeBound cubex10x0x poly903_7_8 :=
  WalshQuadraticCubeBound.leaf reducedBound903_7_8

private theorem poly903_7_8_nonpos
    {mask : SignMask} (hmask : cubex10x0x.Member mask) :
    poly903_7_8.coeffEval mask <= 0 :=
  cubeBound903_7_8.coeffEval_nonpos hmask

def reducedObstruction903_7_8
    (direct_eq :
      forall {mask : SignMask} (hlt : rank903 < numPairWords),
        cubex10x0x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank903, hlt⟩ : Fin numPairWords) mask weights7_8 =
            poly903_7_8.coeffEval mask) :
    WeightedWalshQuadraticNonposObstruction rank903 cubex10x0x.Member where
  weights := weights7_8
  nonnegative := weights7_8_nonnegative
  positive_some := weights7_8_positive
  poly := poly903_7_8
  direct_eq := by
    intro mask hlt hmember
    exact direct_eq hlt hmember
  poly_nonpos := by
    intro mask hmember
    exact poly903_7_8_nonpos hmember

theorem weightedDenom_nonpos_of_reduced_bound
    (direct_eq :
      forall {mask : SignMask} (hlt : rank903 < numPairWords),
        cubex10x0x.Member mask ->
          weightedDirectWalshDotAtRank
            (⟨rank903, hlt⟩ : Fin numPairWords) mask weights7_8 =
            poly903_7_8.coeffEval mask)
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex10x0x.Member mask) :
    weightedDenomAtRank
      (⟨rank903, hlt⟩ : Fin numPairWords) mask weights7_8 <= 0 :=
  (reducedObstruction903_7_8 direct_eq).nonpos hlt hmember

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
  d1m1_dm11 := -40/9

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
  d111_dm11 := 200/27
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

private theorem dot06_eq :
    WalshAffineVec3.dot generatedNormal06 generatedVector = dot06 := by
  norm_num [dot06, generatedNormal06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke.generatedNormal06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke.generatedNormal06_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke.generatedNormal06_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke.generatedNormal06_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot06_eval
    (mask : SignMask) :
    dot (generatedNormal06.eval mask) (generatedVector.eval mask) =
      dot06.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal06 generatedVector mask
  rw [dot06_eq] at h
  exact h.symm

private theorem direct06_eq
    (mask : SignMask) (hlt : rank903 < numPairWords) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask (6 : WordIndex) =
      dot (generatedNormal06.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke.generatedNormal06_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct06_eq_of_val
    (mask : SignMask) (hlt : rank903 < numPairWords)
    {i : WordIndex} (hi : i.val = 6) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal06.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank903, hlt⟩ : Fin numPairWords) mask (j := (6 : WordIndex)) hi]
  exact direct06_eq mask hlt

private theorem dot07_eq :
    WalshAffineVec3.dot generatedNormal07 generatedVector = dot07 := by
  norm_num [dot07, generatedNormal07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke.generatedNormal07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke.generatedNormal07_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke.generatedNormal07_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke.generatedNormal07_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_z, WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul]

private theorem dot07_eval
    (mask : SignMask) :
    dot (generatedNormal07.eval mask) (generatedVector.eval mask) =
      dot07.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal07 generatedVector mask
  rw [dot07_eq] at h
  exact h.symm

private theorem direct07_eq
    (mask : SignMask) (hlt : rank903 < numPairWords) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask (7 : WordIndex) =
      dot (generatedNormal07.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedUnrank_builds]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke.generatedNormal07_eq]
  rw [← Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct07_eq_of_val
    (mask : SignMask) (hlt : rank903 < numPairWords)
    {i : WordIndex} (hi : i.val = 7) :
    directWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal07.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank903, hlt⟩ : Fin numPairWords) mask (j := (7 : WordIndex)) hi]
  exact direct07_eq mask hlt

private theorem dot_sum_eval
    (mask : SignMask) :
    5 * dot06.coeffEval mask + 3 * dot07.coeffEval mask =
      poly903_7_8.coeffEval mask := by
  simp [dot06, dot07, poly903_7_8,
    WalshQuadratic.coeffEval]
  try ring_nf

theorem direct_eq
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (_hmember : cubex10x0x.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank903, hlt⟩ : Fin numPairWords) mask weights7_8 =
      poly903_7_8.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights7_8]
  rw [direct06_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), direct07_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl), dot06_eval mask, dot07_eval mask]
  exact dot_sum_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex10x0x.Member mask) :
    weightedDenomAtRank
      (⟨rank903, hlt⟩ : Fin numPairWords) mask weights7_8 <= 0 :=
  weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem notGoodDirection
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex10x0x.Member mask) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hpos :
      0 <
        weightedDenomAtRank
          (⟨rank903, hlt⟩ : Fin numPairWords) mask weights7_8 :=
    weightedDenomAtRank_pos_of_goodDirection hlt weights7_8_nonnegative
      weights7_8_positive hgood
  exact (not_lt_of_ge (weightedDenom_nonpos hlt hmember)) hpos

theorem translationGoodCaseKilled_of_member
    {mask : SignMask} (hlt : rank903 < numPairWords)
    (hmember : cubex10x0x.Member mask) :
    TranslationGoodCaseKilled (⟨rank903, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  exact False.elim ((notGoodDirection hlt hmember) hgood)

theorem tracedDirectBridgeGeneratedSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
