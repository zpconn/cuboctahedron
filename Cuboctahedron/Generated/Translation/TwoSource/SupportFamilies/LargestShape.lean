import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage

/-!
Generic row-shape theorem for the largest observed two-source support family.

The finite `Largest` pilot proves that sampled cases from the largest support
family are Lean-checkable.  This file proves the reusable algebraic core: if
the first row has coefficients `(-1, -1, c)` with `c + 1 <= 0`, then pairing it
with the `xpStart 0` row gives a valid two-source Farkas contradiction using
multipliers `(1, 1)`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.LargestShape

open Cuboctahedron.Generated.Coverage

def largestObservedFirstLineAt
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  largestObservedSupport.firstLine
    (translationSeqAtRankMask ⟨r, hlt⟩ mask)
    (translationBAtRankMask ⟨r, hlt⟩ mask)

def LargestObservedSupportShape (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    checkTranslationConstraintSource
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        largestObservedSupport.first = true /\
      (largestObservedFirstLineAt r hlt mask).a = -1 /\
        (largestObservedFirstLineAt r hlt mask).b = -1 /\
          (largestObservedFirstLineAt r hlt mask).c + 1 <= 0

theorem largestObservedSecondLine_eq
    (seq : Step14 -> Face) (b : Vec3 Rat) :
    largestObservedSupport.secondLine seq b =
      ({ a := 1, b := 1, c := 1 } : StrictLin2) := by
  rfl

theorem largestObservedMultipliers_eq_of_first_a
    {seq : Step14 -> Face} {b : Vec3 Rat}
    (ha : (largestObservedSupport.firstLine seq b).a = -1) :
    largestObservedSupport.multipliers seq b = (1, 1) := by
  rw [TwoSourceFarkasSupport.multipliers, largestObservedSecondLine_eq seq b]
  simp [TwoSourceFarkasSupport.multipliersForLines,
    TwoSourceFarkasSupport.orientNonnegative, ha]

theorem largestObservedSupport_checked_of_shape
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hshape : LargestObservedSupportShape r mask) :
    largestObservedSupport.Checked
      (translationSeqAtRankMask ⟨r, hlt⟩ mask)
      (translationBAtRankMask ⟨r, hlt⟩ mask) := by
  rcases hshape hlt with ⟨hsource, ha, hb, hc⟩
  have hm :
      largestObservedSupport.multipliers
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask) = (1, 1) := by
    exact largestObservedMultipliers_eq_of_first_a (by
      simpa [largestObservedFirstLineAt] using ha)
  refine
    { first_source_ok := hsource
      second_source_ok := ?_
      first_multiplier_nonneg := ?_
      second_multiplier_nonneg := ?_
      multiplier_positive := ?_
      weighted_a_zero := ?_
      weighted_b_zero := ?_
      weighted_c_nonpos := ?_ }
  · rfl
  · rw [hm]
    norm_num
  · rw [hm]
    norm_num
  · rw [hm]
    norm_num
  · rw [hm]
    rw [show
      (largestObservedSupport.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).a = -1 by
          simpa [largestObservedFirstLineAt] using ha]
    norm_num [largestObservedSupport, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt]
  · rw [hm]
    rw [show
      (largestObservedSupport.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).b = -1 by
          simpa [largestObservedFirstLineAt] using hb]
    norm_num [largestObservedSupport, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt]
  · rw [hm]
    simpa [largestObservedFirstLineAt, largestObservedSupport,
      TwoSourceFarkasSupport.secondLine, translationConstraintSourceLine,
      xpStartConstraintAt] using hc

theorem largestObservedSupport_shape_checkedOn :
    SupportFamilyCheckedOn largestObservedSupport
      LargestObservedSupportShape := by
  intro r hlt mask hshape
  exact largestObservedSupport_checked_of_shape hshape

theorem largestObservedSupport_shape_killsOn :
    SupportFamilyKillsOn largestObservedSupport
      LargestObservedSupportShape :=
  SupportFamilyCheckedOn.kills largestObservedSupport_shape_checkedOn

theorem largestObservedSupport_shape_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.LargestShape
