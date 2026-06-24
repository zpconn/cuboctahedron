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

def SupportFamilyCoverageOnRange (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        GoodDirectionAtRank ⟨r, hlt⟩ mask ->
          exists support : TwoSourceFarkasSupport,
            support.Checked
              (translationSeqAtRankMask ⟨r, hlt⟩ mask)
              (translationBAtRankMask ⟨r, hlt⟩ mask)

theorem TranslationGoodCoverageOnRange.of_supportFamily
    {lo hi : Nat}
    (hfamily : SupportFamilyCoverageOnRange lo hi) :
    TranslationGoodCoverageOnRange lo hi := by
  intro r hlo hhi hlt mask hgood
  rcases hfamily r hlt mask hlo hhi hgood with ⟨support, hchecked⟩
  exact goodCaseKilled_of_checked hchecked hgood

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
