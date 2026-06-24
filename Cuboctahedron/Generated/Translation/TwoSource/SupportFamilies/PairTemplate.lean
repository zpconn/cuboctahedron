import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage

/-!
Generic source-pair theorem for two-source translation support families.

`RowShape` fixes exact line coefficients and multipliers.  This module is the
next looser layer: a generated family can keep only the two constraint sources
fixed, then prove the small `TwoSourceFarkasSupport.Checked` facts
parametrically for every rank/mask case satisfying its predicate.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies

namespace SupportPair

def firstLineAt
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  support.firstLine
    (translationSeqAtRankMask ⟨r, hlt⟩ mask)
    (translationBAtRankMask ⟨r, hlt⟩ mask)

def secondLineAt
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  support.secondLine
    (translationSeqAtRankMask ⟨r, hlt⟩ mask)
    (translationBAtRankMask ⟨r, hlt⟩ mask)

def multipliersAt
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : Rat × Rat :=
  support.multipliers
    (translationSeqAtRankMask ⟨r, hlt⟩ mask)
    (translationBAtRankMask ⟨r, hlt⟩ mask)

/-- Proof-relevant facts needed to turn a source-pair family into a checked
two-source Farkas contradiction.  This deliberately avoids fixing exact row
coefficients in the public predicate. -/
def Applies
    (support : TwoSourceFarkasSupport)
    (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    checkTranslationConstraintSource
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        support.first = true /\
      checkTranslationConstraintSource
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          support.second = true /\
        0 <= (multipliersAt support r hlt mask).1 /\
          0 <= (multipliersAt support r hlt mask).2 /\
            (0 < (multipliersAt support r hlt mask).1 \/
              0 < (multipliersAt support r hlt mask).2) /\
              (multipliersAt support r hlt mask).1 *
                  (firstLineAt support r hlt mask).a +
                (multipliersAt support r hlt mask).2 *
                  (secondLineAt support r hlt mask).a = 0 /\
                (multipliersAt support r hlt mask).1 *
                    (firstLineAt support r hlt mask).b +
                  (multipliersAt support r hlt mask).2 *
                    (secondLineAt support r hlt mask).b = 0 /\
                  (multipliersAt support r hlt mask).1 *
                      (firstLineAt support r hlt mask).c +
                    (multipliersAt support r hlt mask).2 *
                      (secondLineAt support r hlt mask).c <= 0

theorem checked_of_applies
    {support : TwoSourceFarkasSupport}
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (happlies : Applies support r mask) :
    support.Checked
      (translationSeqAtRankMask ⟨r, hlt⟩ mask)
      (translationBAtRankMask ⟨r, hlt⟩ mask) := by
  rcases happlies hlt with
    ⟨hfirstSource, hsecondSource, hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine
    { first_source_ok := hfirstSource
      second_source_ok := hsecondSource
      first_multiplier_nonneg := ?_
      second_multiplier_nonneg := ?_
      multiplier_positive := ?_
      weighted_a_zero := ?_
      weighted_b_zero := ?_
      weighted_c_nonpos := ?_ }
  · simpa [multipliersAt] using hw1
  · simpa [multipliersAt] using hw2
  · simpa [multipliersAt] using hpos
  · simpa [multipliersAt, firstLineAt, secondLineAt] using hwa
  · simpa [multipliersAt, firstLineAt, secondLineAt] using hwb
  · simpa [multipliersAt, firstLineAt, secondLineAt] using hwc

theorem checkedOn
    (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (Applies support) := by
  intro r hlt mask happlies
  exact checked_of_applies happlies

theorem killsOn
    (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (Applies support) :=
  SupportFamilyCheckedOn.kills (checkedOn support)

theorem pairTemplate_builds : True := by
  trivial

end SupportPair

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
