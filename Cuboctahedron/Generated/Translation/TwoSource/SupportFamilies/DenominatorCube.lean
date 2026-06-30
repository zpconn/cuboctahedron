import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.BadMaskCover
import Mathlib.Tactic.Linarith

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

theorem weightedDenomAtRank_pos_of_goodDirection
    {rank : Nat} {mask : SignMask} {weights : InternalImpactWeights}
    (hlt : rank < numPairWords)
    (hNonneg : weights.Nonnegative)
    (hPos : weights.PositiveSome)
    (hgood : GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask) :
    0 <
      weightedDenomAtRank
        (⟨rank, hlt⟩ : Fin numPairWords) mask weights := by
  let r : Fin numPairWords := ⟨rank, hlt⟩
  have hd1 : 0 < impactDenomAtRank r mask ⟨1, by decide⟩ :=
    hgood ⟨⟨1, by decide⟩, by constructor <;> decide⟩
  have hd2 : 0 < impactDenomAtRank r mask ⟨2, by decide⟩ :=
    hgood ⟨⟨2, by decide⟩, by constructor <;> decide⟩
  have hd3 : 0 < impactDenomAtRank r mask ⟨3, by decide⟩ :=
    hgood ⟨⟨3, by decide⟩, by constructor <;> decide⟩
  have hd4 : 0 < impactDenomAtRank r mask ⟨4, by decide⟩ :=
    hgood ⟨⟨4, by decide⟩, by constructor <;> decide⟩
  have hd5 : 0 < impactDenomAtRank r mask ⟨5, by decide⟩ :=
    hgood ⟨⟨5, by decide⟩, by constructor <;> decide⟩
  have hd6 : 0 < impactDenomAtRank r mask ⟨6, by decide⟩ :=
    hgood ⟨⟨6, by decide⟩, by constructor <;> decide⟩
  have hd7 : 0 < impactDenomAtRank r mask ⟨7, by decide⟩ :=
    hgood ⟨⟨7, by decide⟩, by constructor <;> decide⟩
  have hd8 : 0 < impactDenomAtRank r mask ⟨8, by decide⟩ :=
    hgood ⟨⟨8, by decide⟩, by constructor <;> decide⟩
  have hd9 : 0 < impactDenomAtRank r mask ⟨9, by decide⟩ :=
    hgood ⟨⟨9, by decide⟩, by constructor <;> decide⟩
  have hd10 : 0 < impactDenomAtRank r mask ⟨10, by decide⟩ :=
    hgood ⟨⟨10, by decide⟩, by constructor <;> decide⟩
  have hd11 : 0 < impactDenomAtRank r mask ⟨11, by decide⟩ :=
    hgood ⟨⟨11, by decide⟩, by constructor <;> decide⟩
  have hd12 : 0 < impactDenomAtRank r mask ⟨12, by decide⟩ :=
    hgood ⟨⟨12, by decide⟩, by constructor <;> decide⟩
  have hd13 : 0 < impactDenomAtRank r mask ⟨13, by decide⟩ :=
    hgood ⟨⟨13, by decide⟩, by constructor <;> decide⟩
  rcases hNonneg with
    ⟨hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9, hw10, hw11, hw12, hw13⟩
  have ht1_nonneg :
      0 <= weights.w1 * impactDenomAtRank r mask ⟨1, by decide⟩ :=
    mul_nonneg hw1 (le_of_lt hd1)
  have ht2_nonneg :
      0 <= weights.w2 * impactDenomAtRank r mask ⟨2, by decide⟩ :=
    mul_nonneg hw2 (le_of_lt hd2)
  have ht3_nonneg :
      0 <= weights.w3 * impactDenomAtRank r mask ⟨3, by decide⟩ :=
    mul_nonneg hw3 (le_of_lt hd3)
  have ht4_nonneg :
      0 <= weights.w4 * impactDenomAtRank r mask ⟨4, by decide⟩ :=
    mul_nonneg hw4 (le_of_lt hd4)
  have ht5_nonneg :
      0 <= weights.w5 * impactDenomAtRank r mask ⟨5, by decide⟩ :=
    mul_nonneg hw5 (le_of_lt hd5)
  have ht6_nonneg :
      0 <= weights.w6 * impactDenomAtRank r mask ⟨6, by decide⟩ :=
    mul_nonneg hw6 (le_of_lt hd6)
  have ht7_nonneg :
      0 <= weights.w7 * impactDenomAtRank r mask ⟨7, by decide⟩ :=
    mul_nonneg hw7 (le_of_lt hd7)
  have ht8_nonneg :
      0 <= weights.w8 * impactDenomAtRank r mask ⟨8, by decide⟩ :=
    mul_nonneg hw8 (le_of_lt hd8)
  have ht9_nonneg :
      0 <= weights.w9 * impactDenomAtRank r mask ⟨9, by decide⟩ :=
    mul_nonneg hw9 (le_of_lt hd9)
  have ht10_nonneg :
      0 <= weights.w10 * impactDenomAtRank r mask ⟨10, by decide⟩ :=
    mul_nonneg hw10 (le_of_lt hd10)
  have ht11_nonneg :
      0 <= weights.w11 * impactDenomAtRank r mask ⟨11, by decide⟩ :=
    mul_nonneg hw11 (le_of_lt hd11)
  have ht12_nonneg :
      0 <= weights.w12 * impactDenomAtRank r mask ⟨12, by decide⟩ :=
    mul_nonneg hw12 (le_of_lt hd12)
  have ht13_nonneg :
      0 <= weights.w13 * impactDenomAtRank r mask ⟨13, by decide⟩ :=
    mul_nonneg hw13 (le_of_lt hd13)
  unfold weightedDenomAtRank
  rcases hPos with hp1 | hp2 | hp3 | hp4 | hp5 | hp6 | hp7 |
    hp8 | hp9 | hp10 | hp11 | hp12 | hp13
  · have ht1_pos :
        0 < weights.w1 * impactDenomAtRank r mask ⟨1, by decide⟩ :=
      mul_pos hp1 hd1
    linarith
  · have ht2_pos :
        0 < weights.w2 * impactDenomAtRank r mask ⟨2, by decide⟩ :=
      mul_pos hp2 hd2
    linarith
  · have ht3_pos :
        0 < weights.w3 * impactDenomAtRank r mask ⟨3, by decide⟩ :=
      mul_pos hp3 hd3
    linarith
  · have ht4_pos :
        0 < weights.w4 * impactDenomAtRank r mask ⟨4, by decide⟩ :=
      mul_pos hp4 hd4
    linarith
  · have ht5_pos :
        0 < weights.w5 * impactDenomAtRank r mask ⟨5, by decide⟩ :=
      mul_pos hp5 hd5
    linarith
  · have ht6_pos :
        0 < weights.w6 * impactDenomAtRank r mask ⟨6, by decide⟩ :=
      mul_pos hp6 hd6
    linarith
  · have ht7_pos :
        0 < weights.w7 * impactDenomAtRank r mask ⟨7, by decide⟩ :=
      mul_pos hp7 hd7
    linarith
  · have ht8_pos :
        0 < weights.w8 * impactDenomAtRank r mask ⟨8, by decide⟩ :=
      mul_pos hp8 hd8
    linarith
  · have ht9_pos :
        0 < weights.w9 * impactDenomAtRank r mask ⟨9, by decide⟩ :=
      mul_pos hp9 hd9
    linarith
  · have ht10_pos :
        0 < weights.w10 * impactDenomAtRank r mask ⟨10, by decide⟩ :=
      mul_pos hp10 hd10
    linarith
  · have ht11_pos :
        0 < weights.w11 * impactDenomAtRank r mask ⟨11, by decide⟩ :=
      mul_pos hp11 hd11
    linarith
  · have ht12_pos :
        0 < weights.w12 * impactDenomAtRank r mask ⟨12, by decide⟩ :=
      mul_pos hp12 hd12
    linarith
  · have ht13_pos :
        0 < weights.w13 * impactDenomAtRank r mask ⟨13, by decide⟩ :=
      mul_pos hp13 hd13
    linarith

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

def WeightedDenomCubeObstruction.ofNonnegative
    {rank : Nat} {Member : SignMask -> Prop}
    (weights : InternalImpactWeights)
    (hNonneg : weights.Nonnegative)
    (hPos : weights.PositiveSome)
    (hNonpos :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        Member mask ->
          weightedDenomAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask weights <= 0) :
    WeightedDenomCubeObstruction rank Member where
  weights := weights
  positive_of_good := by
    intro mask hlt _hmember hgood
    exact weightedDenomAtRank_pos_of_goodDirection hlt hNonneg hPos hgood
  nonpos := hNonpos

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
