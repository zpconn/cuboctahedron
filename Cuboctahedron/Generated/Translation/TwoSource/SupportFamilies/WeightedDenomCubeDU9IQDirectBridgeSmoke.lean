import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQReducedBoundSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke

/-!
DU.9IQ direct bridge smoke.

This file supplies the `direct_eq` premise required by
`WeightedDenomCubeDU9IQReducedBoundSmoke` for rank `896`, support `[2,6]`.
It intentionally reuses traced normal facts and the traced translation vector
instead of proving `impactNormalWalshAt` locally.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeDU9IQDirectBridgeSmoke

open PositiveSurvivorClassifier
open PositiveSurvivorClassifier.ImpactSubcube
open DenominatorCube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

abbrev generatedRank : Fin numPairWords :=
  WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector

abbrev generatedNormal01 : WalshAffineVec3 :=
  WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01

abbrev generatedNormal05 : WalshAffineVec3 :=
  WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke.generatedNormal05

abbrev rank896 : Nat :=
  WeightedDenomCubeDU9IQReducedBoundSmoke.rank896

abbrev cube1xx0x0 : MaskSubcube :=
  WeightedDenomCubeDU9IQReducedBoundSmoke.cube1xx0x0

abbrev weights2_6 : InternalImpactWeights :=
  WeightedDenomCubeDU9IQReducedBoundSmoke.weights2_6

abbrev poly896_2_6 : WalshQuadratic :=
  WeightedDenomCubeDU9IQReducedBoundSmoke.poly896_2_6

private def dot01 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8 / 3
  y_d11m := 8 / 3
  y_d1m1 := -40 / 9
  y_dm11 := 8 / 3
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
  d111_d11m := 8 / 3
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := -40 / 9
  d11m_dm11 := -8 / 3
  d1m1_dm11 := 0

private theorem dot01_eq :
    WalshAffineVec3.dot generatedNormal01 generatedVector = dot01 := by
  simp [
    dot01,
    generatedNormal01,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_x,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_y,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_z,
    generatedVector,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_x,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_y,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_z,
    WalshAffineVec3.dot,
    WalshQuadratic.add,
    WalshAffine.mul,
  ]

private theorem dot05_eq :
    WalshAffineVec3.dot generatedNormal05 generatedVector = dot05 := by
  simp [
    dot05,
    generatedNormal05,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke.generatedNormal05,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke.generatedNormal05_x,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke.generatedNormal05_y,
    WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke.generatedNormal05_z,
    generatedVector,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_x,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_y,
    WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_z,
    WalshAffineVec3.dot,
    WalshQuadratic.add,
    WalshAffine.mul,
  ]
  norm_num

private theorem dot01_eval
    (mask : SignMask) :
    dot (generatedNormal01.eval mask) (generatedVector.eval mask) =
      dot01.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal01 generatedVector mask
  rw [dot01_eq] at h
  exact h.symm

private theorem dot05_eval
    (mask : SignMask) :
    dot (generatedNormal05.eval mask) (generatedVector.eval mask) =
      dot05.coeffEval mask := by
  have h := WalshAffineVec3.dot_coeffEval generatedNormal05 generatedVector mask
  rw [dot05_eq] at h
  exact h.symm

private theorem dot01_add_dot05_eval
    (mask : SignMask) :
    dot01.coeffEval mask + dot05.coeffEval mask =
      poly896_2_6.coeffEval mask := by
  simp [dot01, dot05, poly896_2_6,
    WeightedDenomCubeDU9IQReducedBoundSmoke.poly896_2_6,
    WalshQuadratic.coeffEval]
  ring_nf

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

private theorem direct01_eq
    (mask : SignMask) (hlt : rank896 < numPairWords) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask (1 : WordIndex) =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedUnrank_builds]
  rw [← WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke.generatedNormal01_eq]
  rw [← WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct05_eq
    (mask : SignMask) (hlt : rank896 < numPairWords) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask (5 : WordIndex) =
      dot (generatedNormal05.eval mask) (generatedVector.eval mask) := by
  rw [generatedRank_eq hlt]
  unfold directWalshDotAtRank
  rw [WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedUnrank_builds]
  rw [← WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke.generatedNormal05_eq]
  rw [← WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedVector_eq_translationVectorWalsh]

private theorem direct01_eq_of_val
    (mask : SignMask) (hlt : rank896 < numPairWords)
    {i : WordIndex} (hi : i.val = 1) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal01.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank896, hlt⟩ : Fin numPairWords) mask (j := (1 : WordIndex)) hi]
  exact direct01_eq mask hlt

private theorem direct05_eq_of_val
    (mask : SignMask) (hlt : rank896 < numPairWords)
    {i : WordIndex} (hi : i.val = 5) :
    directWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask i =
      dot (generatedNormal05.eval mask) (generatedVector.eval mask) := by
  rw [directWalshDotAtRank_eq_of_val
    (⟨rank896, hlt⟩ : Fin numPairWords) mask (j := (5 : WordIndex)) hi]
  exact direct05_eq mask hlt

theorem direct_eq
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (_hmember : cube1xx0x0.Member mask) :
    weightedDirectWalshDotAtRank
        (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 =
      poly896_2_6.coeffEval mask := by
  unfold weightedDirectWalshDotAtRank
  norm_num [weights2_6, WeightedDenomCubeDU9IQReducedBoundSmoke.weights2_6]
  rw [direct01_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl),
    direct05_eq_of_val (mask := mask) (hlt := hlt) (hi := rfl),
    dot01_eval mask, dot05_eval mask]
  exact dot01_add_dot05_eval mask

theorem weightedDenom_nonpos
    {mask : SignMask} (hlt : rank896 < numPairWords)
    (hmember : cube1xx0x0.Member mask) :
    weightedDenomAtRank
      (⟨rank896, hlt⟩ : Fin numPairWords) mask weights2_6 <= 0 :=
  WeightedDenomCubeDU9IQReducedBoundSmoke.weightedDenom_nonpos_of_reduced_bound
    (fun hlt hmember => direct_eq hlt hmember)
    hlt hmember

theorem directBridgeSmoke_builds : True := by
  trivial

end WeightedDenomCubeDU9IQDirectBridgeSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
