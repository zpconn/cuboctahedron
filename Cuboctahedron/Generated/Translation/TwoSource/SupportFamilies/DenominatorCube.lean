import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.BadMaskCover

/-!
AP.16BG denominator-cube obstruction core.

`BadMaskCover` gives the erased interface for proving that every mask outside a
positive survivor set contradicts `GoodDirectionAtRank`.  This file adds the
first reusable denominator-level contradiction: if a nonnegative weighted sum
of the 13 internal impact denominators is nonpositive on a mask family, then no
member of that family can satisfy `GoodDirectionAtRank`.

Generated code should prove the `nonpos` field by a cube-level sign-form,
pseudo-Boolean, or Farkas certificate.  This module deliberately contains no
generated data and does not enumerate masks.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace DenominatorCube

/-- Weights for the 13 internal impact denominators. -/
structure InternalImpactWeights where
  w1 : Rat
  w2 : Rat
  w3 : Rat
  w4 : Rat
  w5 : Rat
  w6 : Rat
  w7 : Rat
  w8 : Rat
  w9 : Rat
  w10 : Rat
  w11 : Rat
  w12 : Rat
  w13 : Rat

def weightedDenomAtRank
    (r : Fin numPairWords) (mask : SignMask)
    (weights : InternalImpactWeights) : Rat :=
  let d1 := impactDenomAtRank r mask ⟨1, by decide⟩
  let d2 := impactDenomAtRank r mask ⟨2, by decide⟩
  let d3 := impactDenomAtRank r mask ⟨3, by decide⟩
  let d4 := impactDenomAtRank r mask ⟨4, by decide⟩
  let d5 := impactDenomAtRank r mask ⟨5, by decide⟩
  let d6 := impactDenomAtRank r mask ⟨6, by decide⟩
  let d7 := impactDenomAtRank r mask ⟨7, by decide⟩
  let d8 := impactDenomAtRank r mask ⟨8, by decide⟩
  let d9 := impactDenomAtRank r mask ⟨9, by decide⟩
  let d10 := impactDenomAtRank r mask ⟨10, by decide⟩
  let d11 := impactDenomAtRank r mask ⟨11, by decide⟩
  let d12 := impactDenomAtRank r mask ⟨12, by decide⟩
  let d13 := impactDenomAtRank r mask ⟨13, by decide⟩
  weights.w1 * d1 + weights.w2 * d2 + weights.w3 * d3 +
    weights.w4 * d4 + weights.w5 * d5 + weights.w6 * d6 +
      weights.w7 * d7 + weights.w8 * d8 + weights.w9 * d9 +
        weights.w10 * d10 + weights.w11 * d11 + weights.w12 * d12 +
          weights.w13 * d13

def InternalImpactWeights.Nonnegative (weights : InternalImpactWeights) : Prop :=
  0 <= weights.w1 ∧
    0 <= weights.w2 ∧
      0 <= weights.w3 ∧
        0 <= weights.w4 ∧
          0 <= weights.w5 ∧
            0 <= weights.w6 ∧
              0 <= weights.w7 ∧
                0 <= weights.w8 ∧
                  0 <= weights.w9 ∧
                    0 <= weights.w10 ∧
                      0 <= weights.w11 ∧
                        0 <= weights.w12 ∧
                          0 <= weights.w13

def InternalImpactWeights.PositiveSome (weights : InternalImpactWeights) : Prop :=
  0 < weights.w1 ∨
    0 < weights.w2 ∨
      0 < weights.w3 ∨
        0 < weights.w4 ∨
          0 < weights.w5 ∨
            0 < weights.w6 ∨
              0 < weights.w7 ∨
                0 < weights.w8 ∨
                  0 < weights.w9 ∨
                    0 < weights.w10 ∨
                      0 < weights.w11 ∨
                        0 < weights.w12 ∨
                          0 < weights.w13

/--
A cube/family-level obstruction supplied by generated evidence.

The `Member` predicate can be a Boolean mask cube, a state language, or any
other generated family.  The only arithmetic obligation is `nonpos`: on every
member, the weighted sum of denominators is nonpositive.
-/
structure WeightedDenomCubeObstruction
    (rank : Nat) (Member : SignMask -> Prop) where
  weights : InternalImpactWeights
  positive_of_good :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      Member mask ->
        GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask ->
          0 <
            weightedDenomAtRank
              (⟨rank, hlt⟩ : Fin numPairWords) mask weights
  nonpos :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      Member mask ->
        weightedDenomAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask weights <= 0

theorem WeightedDenomCubeObstruction.notGood
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WeightedDenomCubeObstruction rank Member)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hmember : Member mask) :
    ¬ GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask := by
  intro hgood
  have hweighted_pos :
      0 <
        weightedDenomAtRank
          (⟨rank, hlt⟩ : Fin numPairWords) mask obstruction.weights :=
    obstruction.positive_of_good hlt hmember hgood
  exact (not_lt_of_ge (obstruction.nonpos hlt hmember)) hweighted_pos

/--
A proof-valued cover of all masks outside a positive survivor set by weighted
denominator obstructions.

This is the denominator-Farkas analogue of `ImpactSubcubeCover`, but its leaves
can prove a whole mask family impossible by a nonnegative linear combination of
internal impact denominators instead of selecting one common bad impact.
-/
structure WeightedDenomCubeCover
    (rank : Nat) (GoodMaskMember : SignMask -> Prop) where
  Family : Type
  Member : Family -> SignMask -> Prop
  obstruction :
    forall family : Family,
      WeightedDenomCubeObstruction rank (Member family)
  complete :
    forall {mask : SignMask},
      ¬ GoodMaskMember mask ->
        exists family : Family, Member family mask

def WeightedDenomCubeCover.toBadMaskCover
    {rank : Nat} {GoodMaskMember : SignMask -> Prop}
    (cover : WeightedDenomCubeCover rank GoodMaskMember) :
    PositiveSurvivorClassifier.BadMaskCover rank GoodMaskMember where
  BadFamily := cover.Family
  Member := cover.Member
  notGood := by
    intro family mask hlt hmember
    exact (cover.obstruction family).notGood hlt hmember
  complete := by
    intro mask hnot
    exact cover.complete hnot

theorem WeightedDenomCubeCover.goodMaskMember_of_goodDirection
    {rank : Nat} {GoodMaskMember : SignMask -> Prop}
    (cover : WeightedDenomCubeCover rank GoodMaskMember)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask) :
    GoodMaskMember mask :=
  cover.toBadMaskCover.goodMaskMember_of_goodDirection hlt hgood

theorem denominatorCube_builds : True := by
  trivial

end DenominatorCube
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
