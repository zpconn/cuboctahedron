import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Generated.Translation.TwoSource.Core

/-!
Semantic support-family interfaces for two-source translation coverage.

The per-case `Coverage10k` shards proved that concrete two-source checks are
Lean-checkable, but importing many heavy shard `.olean`s is not a viable public
root.  This module defines the small Prop-level target for the next backend:
generated family modules should prove range coverage through support-family
theorems, and public roots should compose only those small semantic facts.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource

open Cuboctahedron.Generated.Coverage

def TranslationGoodRankCovered (r : Nat) : Prop :=
  forall hlt : r < numPairWords,
    forall mask : SignMask,
      TranslationGoodCaseKilled ⟨r, hlt⟩ mask

abbrev TranslationGoodCoverageOnRange (lo hi : Nat) : Prop :=
  CoversInterval TranslationGoodRankCovered lo hi

def SupportFamilyCheckedOn
    (support : TwoSourceFarkasSupport)
    (Applies : Nat -> SignMask -> Prop) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    Applies r mask ->
      support.Checked
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        (translationBAtRankMask ⟨r, hlt⟩ mask)

def SupportFamilyKillsOn
    (_support : TwoSourceFarkasSupport)
    (Applies : Nat -> SignMask -> Prop) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    Applies r mask ->
      TranslationGoodCaseKilled ⟨r, hlt⟩ mask

theorem SupportFamilyCheckedOn.kills
    {support : TwoSourceFarkasSupport}
    {Applies : Nat -> SignMask -> Prop}
    (hchecked : SupportFamilyCheckedOn support Applies) :
    SupportFamilyKillsOn support Applies := by
  intro r hlt mask happ
  exact goodCaseKilled_of_checked (hchecked r hlt mask happ)

def SupportFamilyCoverageOnRange (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        GoodDirectionAtRank ⟨r, hlt⟩ mask ->
          exists support : TwoSourceFarkasSupport,
            support.Checked
              (translationSeqAtRankMask ⟨r, hlt⟩ mask)
              (translationBAtRankMask ⟨r, hlt⟩ mask)

def SupportFamilyCoverageOnIdentityRange (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) = (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨r, hlt⟩ mask ->
            exists support : TwoSourceFarkasSupport,
              support.Checked
                (translationSeqAtRankMask ⟨r, hlt⟩ mask)
                (translationBAtRankMask ⟨r, hlt⟩ mask)

theorem SupportFamilyCheckedOn.to_rangeCoverage
    {support : TwoSourceFarkasSupport}
    {Applies : Nat -> SignMask -> Prop}
    {lo hi : Nat}
    (hchecked : SupportFamilyCheckedOn support Applies)
    (hcover :
      forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
        lo <= r ->
          r < hi ->
            GoodDirectionAtRank ⟨r, hlt⟩ mask ->
              Applies r mask) :
    SupportFamilyCoverageOnRange lo hi := by
  intro r hlt mask hlo hhi hgood
  exact ⟨support, hchecked r hlt mask (hcover r hlt mask hlo hhi hgood)⟩

theorem SupportFamilyCheckedOn.to_identityRangeCoverage
    {support : TwoSourceFarkasSupport}
    {Applies : Nat -> SignMask -> Prop}
    {lo hi : Nat}
    (hchecked : SupportFamilyCheckedOn support Applies)
    (hcover :
      forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
        lo <= r ->
          r < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) = (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨r, hlt⟩ mask ->
                Applies r mask) :
    SupportFamilyCoverageOnIdentityRange lo hi := by
  intro r hlt mask hlo hhi hM hgood
  exact ⟨support, hchecked r hlt mask
    (hcover r hlt mask hlo hhi hM hgood)⟩

theorem TranslationGoodCoverageOnRange.of_supportFamily
    {lo hi : Nat}
    (hfamily : SupportFamilyCoverageOnRange lo hi) :
    TranslationGoodCoverageOnRange lo hi := by
  intro r hlo hhi hlt mask hgood
  rcases hfamily r hlt mask hlo hhi hgood with ⟨support, hchecked⟩
  exact goodCaseKilled_of_checked hchecked hgood

theorem TranslationGoodCoverageOnRange.of_identitySupportFamily
    {lo hi : Nat}
    (hfamily : SupportFamilyCoverageOnIdentityRange lo hi) :
    TranslationGoodCoverageOnRange lo hi := by
  intro r hlo hhi hlt mask hgood hM
  rcases hfamily r hlt mask hlo hhi hM hgood with ⟨support, hchecked⟩
  exact goodCaseKilled_of_checked hchecked hgood hM

theorem TranslationGoodCoverageOnRange.apply
    {lo hi r : Nat}
    (hcoverage : TranslationGoodCoverageOnRange lo hi)
    (hlo : lo <= r)
    (hhi : r < hi)
    (hlt : r < numPairWords)
    (mask : SignMask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  hcoverage r hlo hhi hlt mask

def largestObservedSupport : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior
    ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

theorem largestObservedSupport_kills_checked
    {r : Fin numPairWords} {mask : SignMask}
    (hchecked :
      largestObservedSupport.Checked
        (translationSeqAtRankMask r mask)
        (translationBAtRankMask r mask)) :
    TranslationGoodCaseKilled r mask :=
  goodCaseKilled_of_checked hchecked

end Cuboctahedron.Generated.Translation.TwoSource
