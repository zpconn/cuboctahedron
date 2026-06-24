import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage

/-!
Generic row-shape theorem for two-source translation support families.

Generated support-family modules should avoid listing rank/mask members.
Instead, they can define small semantic predicates proving that a rank/mask
case has a particular pair of source rows, deterministic multipliers, row
coefficients, and a nonpositive weighted RHS.  This module turns those facts
into the existing `TwoSourceFarkasSupport.Checked` evidence.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies

structure RowShape where
  support : TwoSourceFarkasSupport
  w1 : Rat
  w2 : Rat
  firstA : Rat
  firstB : Rat
  secondA : Rat
  secondB : Rat
deriving DecidableEq, Repr

namespace RowShape

def firstLineAt
    (shape : RowShape)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  shape.support.firstLine
    (translationSeqAtRankMask ⟨r, hlt⟩ mask)
    (translationBAtRankMask ⟨r, hlt⟩ mask)

def secondLineAt
    (shape : RowShape)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  shape.support.secondLine
    (translationSeqAtRankMask ⟨r, hlt⟩ mask)
    (translationBAtRankMask ⟨r, hlt⟩ mask)

def Valid (shape : RowShape) : Prop :=
  0 <= shape.w1 /\
    0 <= shape.w2 /\
      (0 < shape.w1 \/ 0 < shape.w2) /\
        shape.w1 * shape.firstA + shape.w2 * shape.secondA = 0 /\
          shape.w1 * shape.firstB + shape.w2 * shape.secondB = 0

def Applies (shape : RowShape) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    checkTranslationConstraintSource
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        shape.support.first = true /\
      checkTranslationConstraintSource
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          shape.support.second = true /\
        shape.support.multipliers
            (translationSeqAtRankMask ⟨r, hlt⟩ mask)
            (translationBAtRankMask ⟨r, hlt⟩ mask) =
          (shape.w1, shape.w2) /\
          (shape.firstLineAt r hlt mask).a = shape.firstA /\
            (shape.firstLineAt r hlt mask).b = shape.firstB /\
              (shape.secondLineAt r hlt mask).a = shape.secondA /\
                (shape.secondLineAt r hlt mask).b = shape.secondB /\
                  shape.w1 * (shape.firstLineAt r hlt mask).c +
                      shape.w2 * (shape.secondLineAt r hlt mask).c <= 0

theorem checked_of_valid_applies
    {shape : RowShape}
    (hvalid : shape.Valid)
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (happlies : shape.Applies r mask) :
    shape.support.Checked
      (translationSeqAtRankMask ⟨r, hlt⟩ mask)
      (translationBAtRankMask ⟨r, hlt⟩ mask) := by
  rcases hvalid with ⟨hw1, hw2, hpos, hwa, hwb⟩
  rcases happlies hlt with
    ⟨hfirstSource, hsecondSource, hm, hfirstA, hfirstB,
      hsecondA, hsecondB, hc⟩
  have hfirstA' :
      (shape.support.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).a = shape.firstA := by
    simpa [firstLineAt] using hfirstA
  have hfirstB' :
      (shape.support.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).b = shape.firstB := by
    simpa [firstLineAt] using hfirstB
  have hsecondA' :
      (shape.support.secondLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).a = shape.secondA := by
    simpa [secondLineAt] using hsecondA
  have hsecondB' :
      (shape.support.secondLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).b = shape.secondB := by
    simpa [secondLineAt] using hsecondB
  have hc' :
      shape.w1 *
          (shape.support.firstLine
            (translationSeqAtRankMask ⟨r, hlt⟩ mask)
            (translationBAtRankMask ⟨r, hlt⟩ mask)).c +
        shape.w2 *
          (shape.support.secondLine
            (translationSeqAtRankMask ⟨r, hlt⟩ mask)
            (translationBAtRankMask ⟨r, hlt⟩ mask)).c <= 0 := by
    simpa [firstLineAt, secondLineAt] using hc
  refine
    { first_source_ok := hfirstSource
      second_source_ok := hsecondSource
      first_multiplier_nonneg := ?_
      second_multiplier_nonneg := ?_
      multiplier_positive := ?_
      weighted_a_zero := ?_
      weighted_b_zero := ?_
      weighted_c_nonpos := ?_ }
  · rw [hm]
    exact hw1
  · rw [hm]
    exact hw2
  · rw [hm]
    exact hpos
  · rw [hm]
    rw [hfirstA', hsecondA']
    exact hwa
  · rw [hm]
    rw [hfirstB', hsecondB']
    exact hwb
  · rw [hm]
    exact hc'

theorem checkedOn_of_valid
    {shape : RowShape}
    (hvalid : shape.Valid) :
    SupportFamilyCheckedOn shape.support shape.Applies := by
  intro r hlt mask happlies
  exact checked_of_valid_applies hvalid happlies

theorem killsOn_of_valid
    {shape : RowShape}
    (hvalid : shape.Valid) :
    SupportFamilyKillsOn shape.support shape.Applies :=
  SupportFamilyCheckedOn.kills (checkedOn_of_valid hvalid)

theorem shapeTemplate_builds : True := by
  trivial

end RowShape

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
