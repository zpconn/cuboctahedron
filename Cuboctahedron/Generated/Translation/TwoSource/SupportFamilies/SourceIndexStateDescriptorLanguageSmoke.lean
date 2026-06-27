import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

/-!
Smoke test for the descriptor-level AP.15 language bridge.

This is intentionally empty-range bridge validation only.  It proves that a
descriptor language erases to the existing source/row predicate bridge and
all-Good coverage surface; it does not claim nonempty generated coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace SourceIndexStateDescriptorLanguageSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

def emptyDescriptorLanguage :
    SourceIndexStateDescriptorGoodLanguageOnRange 0 0 where
  Language := fun _ _ _ => False
  applies := by
    intro desc rank mask hmem
    cases hmem
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact False.elim (Nat.not_lt_zero rank hhi)

theorem emptyDirectDescriptorCoverage :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 0 := by
  intro rank mask hlt hlo hhi hM hgood
  exact False.elim (Nat.not_lt_zero rank hhi)

def emptyDescriptorLanguageOfCoverage :
    SourceIndexStateDescriptorGoodLanguageOnRange 0 0 :=
  SourceIndexStateDescriptorGoodLanguageOnRange.of_coverage
    emptyDirectDescriptorCoverage

def emptyPredicateLanguage :
    SourceRowPredicateGoodLanguageOnRange 0 0 :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_predicateLanguage
    emptyDescriptorLanguage

def emptyDescriptorLanguageViaConstructor :
    SourceIndexStateDescriptorGoodLanguageOnRange 5 3 :=
  SourceIndexStateDescriptorGoodLanguageOnRange.empty (by decide)

def concatEmptyDescriptorLanguage :
    SourceIndexStateDescriptorGoodLanguageOnRange 0 0 :=
  SourceIndexStateDescriptorGoodLanguageOnRange.concat
    emptyDescriptorLanguage emptyDescriptorLanguage

theorem emptyDescriptorBridge :
    SourceRowPredicateGoodBridgeOnRange 0 0 :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_bridge
    emptyDescriptorLanguage

theorem emptyDirectDescriptorBridge :
    SourceRowPredicateGoodBridgeOnRange 0 0 :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_bridge
    emptyDirectDescriptorCoverage

theorem emptyDescriptorAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourceIndexStateDescriptorGoodLanguageOnRange.to_allGoodCoverage
    emptyDescriptorLanguage

theorem emptyDirectDescriptorAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    emptyDirectDescriptorCoverage

theorem sourceIndexStateDescriptorLanguageSmoke_builds : True := by
  trivial

end SourceIndexStateDescriptorLanguageSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
