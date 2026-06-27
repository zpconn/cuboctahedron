import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Descriptor-level GoodDirection language bridge.

`SourceIndexStateFamilyDescriptor.Applies` is the smallest existing semantic
predicate that bundles both sides of the AP membership problem:

* the selected source indices agree with `translationConstraintSources`, and
* the selected row-template predicate holds.

Generated AP.15 modules can prove a language over these descriptors, then erase
it to the source/row predicate bridge and eventually to
`AllTranslationGoodCoverageOnRange`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace SourceIndexStateDescriptorLanguage

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

def descriptorToKey
    (desc : SourceIndexStateFamilyDescriptor) : SourceIndexStateKey where
  firstIndex := desc.firstIndex
  secondIndex := desc.secondIndex
  support := desc.support
  template := desc.template

@[simp]
theorem descriptorToKey_toDescriptor
    (desc : SourceIndexStateFamilyDescriptor) :
    (descriptorToKey desc).toDescriptor = desc := by
  cases desc
  rfl

theorem sourcePredicate_of_descriptor_applies
    {desc : SourceIndexStateFamilyDescriptor} {rank : Nat} {mask : SignMask}
    (h : desc.Applies rank mask) :
    SourceIndexStateSourcePredicate
      desc.firstIndex desc.secondIndex desc.support rank mask :=
  h.1

theorem rows_of_descriptor_applies
    {desc : SourceIndexStateFamilyDescriptor} {rank : Nat} {mask : SignMask}
    (h : desc.Applies rank mask) :
    desc.template.Rows desc.support rank mask :=
  h.2

/--
GoodDirection survivor language expressed directly through
`SourceIndexStateFamilyDescriptor.Applies`.

This is a generator-facing AP.15 target.  It is still a semantic language:
`Language` may be a state/signature predicate, but the public bridge only needs
to know that each member implies `desc.Applies`, and that every arbitrary
identity-linear `GoodDirectionAtRank` case in the range has some member.
-/
structure SourceIndexStateDescriptorGoodLanguageOnRange (lo hi : Nat) where
  Language : SourceIndexStateFamilyDescriptor -> Nat -> SignMask -> Prop
  applies :
    forall {desc : SourceIndexStateFamilyDescriptor}
      {rank : Nat} {mask : SignMask},
        Language desc rank mask -> desc.Applies rank mask
  complete :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              exists desc : SourceIndexStateFamilyDescriptor,
                Language desc rank mask

/--
Direct descriptor coverage for a range.

This is the simplest AP.16 generator target: for every arbitrary
identity-linear GoodDirection survivor in the range, produce one descriptor
whose broad semantic `Applies` predicate holds.
-/
def SourceIndexStateDescriptorGoodCoverageOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            exists desc : SourceIndexStateFamilyDescriptor,
              desc.Applies rank mask

def SourceIndexStateDescriptorGoodLanguageOnRange.of_coverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    SourceIndexStateDescriptorGoodLanguageOnRange lo hi where
  Language := fun desc rank mask => desc.Applies rank mask
  applies := by
    intro desc rank mask hmem
    exact hmem
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact coverage hlt hlo hhi hM hgood

def SourceIndexStateDescriptorGoodLanguageOnRange.empty
    {lo hi : Nat} (h : hi <= lo) :
    SourceIndexStateDescriptorGoodLanguageOnRange lo hi where
  Language := fun _ _ _ => False
  applies := by
    intro desc rank mask hmem
    cases hmem
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact False.elim ((Nat.not_lt_of_ge h) (lt_of_le_of_lt hlo hhi))

def SourceIndexStateDescriptorGoodLanguageOnRange.concat
    {lo mid hi : Nat}
    (left : SourceIndexStateDescriptorGoodLanguageOnRange lo mid)
    (right : SourceIndexStateDescriptorGoodLanguageOnRange mid hi) :
    SourceIndexStateDescriptorGoodLanguageOnRange lo hi where
  Language := fun desc rank mask =>
    left.Language desc rank mask \/ right.Language desc rank mask
  applies := by
    intro desc rank mask hmem
    cases hmem with
    | inl hleft => exact left.applies hleft
    | inr hright => exact right.applies hright
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    by_cases hmid : rank < mid
    · rcases left.complete hlt hlo hmid hM hgood with ⟨desc, hmem⟩
      exact ⟨desc, Or.inl hmem⟩
    · have hmid_le : mid <= rank := Nat.le_of_not_lt hmid
      rcases right.complete hlt hmid_le hhi hM hgood with ⟨desc, hmem⟩
      exact ⟨desc, Or.inr hmem⟩

def SourceIndexStateDescriptorGoodLanguageOnRange.to_predicateLanguage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    SourceRowPredicateGoodLanguageOnRange lo hi where
  Language := fun key rank mask =>
    exists desc : SourceIndexStateFamilyDescriptor,
      key = descriptorToKey desc /\ language.Language desc rank mask
  source := by
    intro key rank mask hmem
    rcases hmem with ⟨desc, hkey, hmem⟩
    subst key
    exact sourcePredicate_of_descriptor_applies (language.applies hmem)
  rows := by
    intro key rank mask hmem
    rcases hmem with ⟨desc, hkey, hmem⟩
    subst key
    exact rows_of_descriptor_applies (language.applies hmem)
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    rcases language.complete hlt hlo hhi hM hgood with ⟨desc, hmem⟩
    exact ⟨descriptorToKey desc, ⟨desc, rfl, hmem⟩⟩

theorem SourceIndexStateDescriptorGoodLanguageOnRange.to_bridge
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    SourceRowPredicateGoodBridgeOnRange lo hi :=
  SourceRowPredicateGoodLanguageOnRange.to_bridge
    (SourceIndexStateDescriptorGoodLanguageOnRange.to_predicateLanguage language)

theorem SourceIndexStateDescriptorGoodLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowPredicateGoodLanguageOnRange.to_allGoodCoverage
    (SourceIndexStateDescriptorGoodLanguageOnRange.to_predicateLanguage language)

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_bridge
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    SourceRowPredicateGoodBridgeOnRange lo hi :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_bridge
    (SourceIndexStateDescriptorGoodLanguageOnRange.of_coverage coverage)

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_allGoodCoverage
    (SourceIndexStateDescriptorGoodLanguageOnRange.of_coverage coverage)

theorem sourceIndexStateDescriptorLanguage_builds : True := by
  trivial

end SourceIndexStateDescriptorLanguage
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
