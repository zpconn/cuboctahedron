import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
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
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage

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

/--
Boolean-GoodDirection variant of descriptor coverage.

This is a generator-facing target for chunks whose membership proof is most
naturally phrased from `goodDirectionAtRankBool = true`.  The adapter below
keeps the public theorem semantic by using
`goodDirectionAtRankBool_eq_true_of_goodDirection`; generated modules should
not reduce `goodDirectionAtRankBool` over large rank/mask sets in this bridge.
-/
def SourceIndexStateDescriptorBoolCoverageOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
            exists desc : SourceIndexStateFamilyDescriptor,
              desc.Applies rank mask

/--
Descriptor language with a Boolean-GoodDirection completeness premise.

This mirrors `SourceIndexStateDescriptorGoodLanguageOnRange`, but lets a
generated shard prove membership from the Boolean GoodDirection theorem surface
and then erase immediately to the semantic coverage bridge.
-/
structure SourceIndexStateDescriptorBoolLanguageOnRange (lo hi : Nat) where
  Language : SourceIndexStateFamilyDescriptor -> Nat -> SignMask -> Prop
  applies :
    forall {desc : SourceIndexStateFamilyDescriptor}
      {rank : Nat} {mask : SignMask},
        Language desc rank mask -> desc.Applies rank mask
  completeBool :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
              exists desc : SourceIndexStateFamilyDescriptor,
                Language desc rank mask

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

def SourceIndexStateDescriptorBoolLanguageOnRange.of_coverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorBoolCoverageOnRange lo hi) :
    SourceIndexStateDescriptorBoolLanguageOnRange lo hi where
  Language := fun desc rank mask => desc.Applies rank mask
  applies := by
    intro desc rank mask hmem
    exact hmem
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
    exact coverage hlt hlo hhi hM hgoodBool

theorem SourceIndexStateDescriptorBoolCoverageOnRange.of_sourceRowFacts
    {lo hi : Nat}
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : SourceIndexStateKey,
                  SourceIndexStateSourceFacts key rank mask /\
                    SourceIndexStateRowFacts key rank mask) :
    SourceIndexStateDescriptorBoolCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgoodBool
  rcases hcomplete hlt hlo hhi hM hgoodBool with ⟨key, hsource, hrows⟩
  exact ⟨key.toDescriptor, key.matches_of_source_row hsource hrows⟩

theorem SourceIndexStateDescriptorBoolCoverageOnRange.of_sourcePredicateRows
    {lo hi : Nat}
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : SourceIndexStateKey,
                  SourceIndexStateSourcePredicate
                    key.firstIndex key.secondIndex key.support rank mask /\
                    key.template.Rows key.support rank mask) :
    SourceIndexStateDescriptorBoolCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgoodBool
  rcases hcomplete hlt hlo hhi hM hgoodBool with ⟨key, hsource, hrows⟩
  have hsourceMatches : key.toDescriptor.SourceMatches rank mask := by
    intro hlt'
    exact hsource hlt'
  exact ⟨key.toDescriptor, ⟨hsourceMatches, hrows⟩⟩

def SourceIndexStateDescriptorBoolLanguageOnRange.to_goodLanguage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorBoolLanguageOnRange lo hi) :
    SourceIndexStateDescriptorGoodLanguageOnRange lo hi where
  Language := language.Language
  applies := language.applies
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact language.completeBool hlt hlo hhi hM
      (goodDirectionAtRankBool_eq_true_of_goodDirection hgood)

def SourceIndexStateDescriptorGoodLanguageOnRange.to_boolLanguage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    SourceIndexStateDescriptorBoolLanguageOnRange lo hi where
  Language := language.Language
  applies := language.applies
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
    exact language.complete hlt hlo hhi hM
      (goodDirection_of_goodDirectionAtRankBool_eq_true hgoodBool)

theorem SourceIndexStateDescriptorBoolCoverageOnRange.to_goodCoverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorBoolCoverageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  exact coverage hlt hlo hhi hM
    (goodDirectionAtRankBool_eq_true_of_goodDirection hgood)

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_boolCoverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    SourceIndexStateDescriptorBoolCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgoodBool
  exact coverage hlt hlo hhi hM
    (goodDirection_of_goodDirectionAtRankBool_eq_true hgoodBool)

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

def SourceIndexStateDescriptorBoolLanguageOnRange.empty
    {lo hi : Nat} (h : hi <= lo) :
    SourceIndexStateDescriptorBoolLanguageOnRange lo hi where
  Language := fun _ _ _ => False
  applies := by
    intro desc rank mask hmem
    cases hmem
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
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

def SourceIndexStateDescriptorBoolLanguageOnRange.concat
    {lo mid hi : Nat}
    (left : SourceIndexStateDescriptorBoolLanguageOnRange lo mid)
    (right : SourceIndexStateDescriptorBoolLanguageOnRange mid hi) :
    SourceIndexStateDescriptorBoolLanguageOnRange lo hi where
  Language := fun desc rank mask =>
    left.Language desc rank mask \/ right.Language desc rank mask
  applies := by
    intro desc rank mask hmem
    cases hmem with
    | inl hleft => exact left.applies hleft
    | inr hright => exact right.applies hright
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
    by_cases hmid : rank < mid
    · rcases left.completeBool hlt hlo hmid hM hgoodBool with ⟨desc, hmem⟩
      exact ⟨desc, Or.inl hmem⟩
    · have hmid_le : mid <= rank := Nat.le_of_not_lt hmid
      rcases right.completeBool hlt hmid_le hhi hM hgoodBool with
        ⟨desc, hmem⟩
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

theorem SourceIndexStateDescriptorGoodLanguageOnRange.to_factsBridge
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi :=
  SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange
    (SourceIndexStateDescriptorGoodLanguageOnRange.to_bridge language)

theorem SourceIndexStateDescriptorBoolLanguageOnRange.to_factsBridge
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorBoolLanguageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_factsBridge
    (SourceIndexStateDescriptorBoolLanguageOnRange.to_goodLanguage language)

theorem SourceIndexStateDescriptorGoodLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowPredicateGoodLanguageOnRange.to_allGoodCoverage
    (SourceIndexStateDescriptorGoodLanguageOnRange.to_predicateLanguage language)

theorem SourceIndexStateDescriptorBoolLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorBoolLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_allGoodCoverage
    (SourceIndexStateDescriptorBoolLanguageOnRange.to_goodLanguage language)

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_bridge
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    SourceRowPredicateGoodBridgeOnRange lo hi :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_bridge
    (SourceIndexStateDescriptorGoodLanguageOnRange.of_coverage coverage)

theorem SourceIndexStateDescriptorBoolCoverageOnRange.to_bridge
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorBoolCoverageOnRange lo hi) :
    SourceRowPredicateGoodBridgeOnRange lo hi :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_bridge
    (SourceIndexStateDescriptorBoolCoverageOnRange.to_goodCoverage coverage)

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_factsBridge
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_factsBridge
    (SourceIndexStateDescriptorGoodLanguageOnRange.of_coverage coverage)

theorem SourceIndexStateDescriptorBoolCoverageOnRange.to_factsBridge
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorBoolCoverageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_factsBridge
    (SourceIndexStateDescriptorBoolCoverageOnRange.to_goodCoverage coverage)

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_allGoodCoverage
    (SourceIndexStateDescriptorGoodLanguageOnRange.of_coverage coverage)

theorem SourceIndexStateDescriptorBoolCoverageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorBoolCoverageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    (SourceIndexStateDescriptorBoolCoverageOnRange.to_goodCoverage coverage)

theorem SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (bridge : SourceRowFactsGoodBridgeOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases bridge hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩
  exact ⟨key.toDescriptor, key.matches_of_source_row hsource hrows⟩

theorem SourceRowPredicateGoodBridgeOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (bridge : SourceRowPredicateGoodBridgeOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage
    (SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange bridge)

theorem SourceRowFactsGoodLanguageOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (language : SourceRowFactsGoodLanguageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage
    (SourceRowFactsGoodLanguageOnRange.to_bridge language)

theorem SourceRowPredicateGoodLanguageOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (language : SourceRowPredicateGoodLanguageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi :=
  SourceRowPredicateGoodBridgeOnRange.to_descriptorCoverage
    (SourceRowPredicateGoodLanguageOnRange.to_bridge language)

theorem SourceRowProducerGoodLanguageOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (language : SourceRowProducerGoodLanguageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodLanguageOnRange.to_descriptorCoverage
    (SourceRowProducerGoodLanguageOnRange.to_factsLanguage language)

theorem SourcePositionRowProducerGoodLanguageOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (language : SourcePositionRowProducerGoodLanguageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi :=
  SourceRowProducerGoodLanguageOnRange.to_descriptorCoverage
    (SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage language)

theorem SourcePositionRowProducerGoodCoverageOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (coverage : SourcePositionRowProducerGoodCoverageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi :=
  SourcePositionRowProducerGoodLanguageOnRange.to_descriptorCoverage
    (SourcePositionRowProducerGoodLanguageOnRange.of_coverage coverage)

theorem sourceIndexStateDescriptorLanguage_builds : True := by
  trivial

end SourceIndexStateDescriptorLanguage
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
