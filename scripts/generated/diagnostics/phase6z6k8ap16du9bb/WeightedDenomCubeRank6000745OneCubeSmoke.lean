import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.DenominatorCube
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank6000745Impact04Smoke

/-!
DU.9BB one-cube weighted-denominator smoke.

This bounded diagnostic exercises the new `WeightedDenomCubeCover` surface on
one selected witnessable cube from the DU.9BA profile for rank `6000745`.

It intentionally proves only a local complement predicate for this one cube.
That keeps the test honest but tiny: the module checks the denominator
obstruction path without importing rank-level compact-Walsh membership roots or
claiming full coverage of rank `6000745`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeRank6000745OneCubeSmoke

namespace Denom := DenominatorCube
namespace Impact04 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank6000745Impact04Smoke
namespace Trace :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745SplitSmoke

open DenominatorCube
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRankNat : Nat := 6000745

private theorem generatedRank_lt : generatedRankNat < numPairWords := by
  decide

abbrev generatedRank : Fin numPairWords :=
  ⟨generatedRankNat, generatedRank_lt⟩

private theorem generatedRank_eq_imported :
    generatedRank = Impact04.generatedRank := by
  ext
  rfl

private def selectedWeights : InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 1
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

private theorem selectedWeights_nonnegative :
    selectedWeights.Nonnegative := by
  norm_num [selectedWeights, InternalImpactWeights.Nonnegative]

private theorem selectedWeights_positive :
    selectedWeights.PositiveSome := by
  norm_num [selectedWeights, InternalImpactWeights.PositiveSome]

private def m24 : SignMask := ⟨24, by decide⟩
private def m25 : SignMask := ⟨25, by decide⟩
private def m26 : SignMask := ⟨26, by decide⟩
private def m27 : SignMask := ⟨27, by decide⟩
private def m56 : SignMask := ⟨56, by decide⟩
private def m57 : SignMask := ⟨57, by decide⟩
private def m58 : SignMask := ⟨58, by decide⟩
private def m59 : SignMask := ⟨59, by decide⟩

/-- The DU.9BA selected cube `**011*`. -/
private def selectedCubeMember (mask : SignMask) : Prop :=
  mask = m24 ∨ mask = m25 ∨ mask = m26 ∨ mask = m27 ∨
    mask = m56 ∨ mask = m57 ∨ mask = m58 ∨ mask = m59

private def selectedGoodMaskMember (mask : SignMask) : Prop :=
  ¬ selectedCubeMember mask

private theorem selectedCube_complete
    {mask : SignMask} :
    ¬ selectedGoodMaskMember mask ->
      exists _family : Unit, selectedCubeMember mask := by
  intro hnot
  by_cases hcube : selectedCubeMember mask
  · exact ⟨(), hcube⟩
  · exact False.elim (hnot hcube)

private theorem selectedWeighted_nonpos_of_mask
    (mask : SignMask)
    (hval :
      mask = m24 ∨ mask = m25 ∨ mask = m26 ∨ mask = m27 ∨
        mask = m56 ∨ mask = m57 ∨ mask = m58 ∨ mask = m59) :
    weightedDenomAtRank Impact04.generatedRank mask selectedWeights <= 0 := by
  have hImpact :
      (⟨5, by decide⟩ : Impact15) =
        wordImpact Impact04.firstWordImpactIndex := by
    rfl
  rcases hval with hmask | hmask | hmask | hmask | hmask | hmask | hmask | hmask
  all_goals
    subst mask
    simp [weightedDenomAtRank, selectedWeights, hImpact]
    rw [Impact04.generatedDenomDotCompact]
    norm_num [Impact04.generatedNormal, Impact04.generatedNormal_x,
      Impact04.generatedNormal_y, Impact04.generatedNormal_z,
      Impact04.generatedVector, Trace.generatedVector, Trace.generatedVector_x,
      Trace.generatedVector_y, Trace.generatedVector_z,
      WalshAffineVec3.eval, WalshAffine.eval, SignBit.value,
      maskBitForPair, Cuboctahedron.dot]

private def selectedObstruction :
    WeightedDenomCubeObstruction generatedRankNat selectedCubeMember where
  weights := selectedWeights
  positive_of_good := by
    intro mask hlt hmember hgood
    exact weightedDenomAtRank_pos_of_goodDirection
      hlt selectedWeights_nonnegative selectedWeights_positive hgood
  nonpos := by
    intro mask hlt hmember
    have hr :
        (⟨generatedRankNat, hlt⟩ : Fin numPairWords) =
          Impact04.generatedRank := by
      ext
      rfl
    rw [hr]
    exact selectedWeighted_nonpos_of_mask mask hmember

def selectedCover :
    WeightedDenomCubeCover generatedRankNat selectedGoodMaskMember where
  Family := Unit
  Member := fun _ mask => selectedCubeMember mask
  obstruction := fun _ => selectedObstruction
  complete := by
    intro mask hnot
    exact selectedCube_complete hnot

theorem selectedGoodMaskMember_of_goodDirection
    {mask : SignMask}
    (hgood : GoodDirectionAtRank generatedRank mask) :
    selectedGoodMaskMember mask := by
  have hlt : generatedRankNat < numPairWords := generatedRank_lt
  simpa [generatedRank] using
    selectedCover.goodMaskMember_of_goodDirection hlt hgood

theorem weightedDenomCubeRank6000745OneCubeSmoke_builds : True := by
  trivial

end WeightedDenomCubeRank6000745OneCubeSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
