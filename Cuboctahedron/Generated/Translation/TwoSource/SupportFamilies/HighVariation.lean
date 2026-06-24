import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairTemplate

/-!
Parametric source-pair pilot for a high-variation support family.

The source-pair profile found that the pair
`interior impact 4 face xp` with `xpStart 0` has 1,016 GoodDirection cases and
273 exact row/multiplier variants in the first 100,000 ranks.  This module
proves the row contradiction for that whole shape parametrically: if the first
row is `(a, a, c)` with `a < 0` and `c <= a`, then the deterministic
two-source multipliers are `(1, -a)` and the weighted RHS is nonpositive.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.HighVariation

def highVariationSupport : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior
    ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

def highVariationFirstLineAt
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  highVariationSupport.firstLine
    (translationSeqAtRankMask ⟨r, hlt⟩ mask)
    (translationBAtRankMask ⟨r, hlt⟩ mask)

def HighVariationSupportShape (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    checkTranslationConstraintSource
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        highVariationSupport.first = true /\
      (highVariationFirstLineAt r hlt mask).a =
          (highVariationFirstLineAt r hlt mask).b /\
        (highVariationFirstLineAt r hlt mask).a < 0 /\
          (highVariationFirstLineAt r hlt mask).c <=
            (highVariationFirstLineAt r hlt mask).a

theorem highVariationSecondLine_eq
    (seq : Step14 -> Face) (b : Vec3 Rat) :
    highVariationSupport.secondLine seq b =
      ({ a := 1, b := 1, c := 1 } : StrictLin2) := by
  rfl

theorem highVariationMultipliers_eq_of_first_negative
    {seq : Step14 -> Face} {b : Vec3 Rat}
    (ha_neg : (highVariationSupport.firstLine seq b).a < 0) :
    highVariationSupport.multipliers seq b =
      (1, -(highVariationSupport.firstLine seq b).a) := by
  have hnonneg :
      0 <= -(highVariationSupport.firstLine seq b).a := by
    linarith
  rw [TwoSourceFarkasSupport.multipliers, highVariationSecondLine_eq seq b]
  simp [TwoSourceFarkasSupport.multipliersForLines,
    TwoSourceFarkasSupport.orientNonnegative, hnonneg]

theorem highVariationSupport_applies_of_shape
    {r : Nat} {mask : SignMask}
    (hshape : HighVariationSupportShape r mask) :
    SupportPair.Applies highVariationSupport r mask := by
  intro hlt
  rcases hshape hlt with ⟨hsource, hab, ha_neg, hc⟩
  have hab' :
      (highVariationSupport.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).a =
      (highVariationSupport.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).b := by
    simpa [highVariationFirstLineAt] using hab
  have ha_neg' :
      (highVariationSupport.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).a < 0 := by
    simpa [highVariationFirstLineAt] using ha_neg
  have hc' :
      (highVariationSupport.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).c <=
      (highVariationSupport.firstLine
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)).a := by
    simpa [highVariationFirstLineAt] using hc
  have hm :
      highVariationSupport.multipliers
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask) =
      (1,
        -(highVariationSupport.firstLine
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          (translationBAtRankMask ⟨r, hlt⟩ mask)).a) :=
    highVariationMultipliers_eq_of_first_negative ha_neg'
  have hsecond_nonneg :
      0 <=
        -(highVariationSupport.firstLine
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          (translationBAtRankMask ⟨r, hlt⟩ mask)).a := by
    linarith
  refine ⟨hsource, rfl, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [SupportPair.multipliersAt, hm]
    norm_num
  · rw [SupportPair.multipliersAt, hm]
    exact hsecond_nonneg
  · rw [SupportPair.multipliersAt, hm]
    left
    norm_num
  · rw [SupportPair.multipliersAt, SupportPair.firstLineAt,
      SupportPair.secondLineAt, hm, highVariationSecondLine_eq]
    ring
  · rw [SupportPair.multipliersAt, SupportPair.firstLineAt,
      SupportPair.secondLineAt, hm, highVariationSecondLine_eq]
    linarith
  · rw [SupportPair.multipliersAt, SupportPair.firstLineAt,
      SupportPair.secondLineAt, hm, highVariationSecondLine_eq]
    linarith

theorem highVariationSupport_checked_of_shape
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hshape : HighVariationSupportShape r mask) :
    highVariationSupport.Checked
      (translationSeqAtRankMask ⟨r, hlt⟩ mask)
      (translationBAtRankMask ⟨r, hlt⟩ mask) :=
  SupportPair.checked_of_applies
    (highVariationSupport_applies_of_shape hshape)

theorem highVariationSupport_shape_checkedOn :
    SupportFamilyCheckedOn highVariationSupport
      HighVariationSupportShape := by
  intro r hlt mask hshape
  exact highVariationSupport_checked_of_shape hshape

theorem highVariationSupport_shape_killsOn :
    SupportFamilyKillsOn highVariationSupport
      HighVariationSupportShape :=
  SupportFamilyCheckedOn.kills highVariationSupport_shape_checkedOn

theorem highVariationSupport_shape_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.HighVariation
