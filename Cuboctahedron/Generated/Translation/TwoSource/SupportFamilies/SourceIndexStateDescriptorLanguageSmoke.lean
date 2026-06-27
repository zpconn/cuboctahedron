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
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage

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

theorem emptyFactsGoodBridge :
    SourceRowFactsGoodBridgeOnRange 0 0 := by
  intro rank mask hlt hlo hhi hM hgood
  exact False.elim (Nat.not_lt_zero rank hhi)

theorem emptyPredicateGoodBridge :
    SourceRowPredicateGoodBridgeOnRange 0 0 := by
  intro rank mask hlt hlo hhi hM hgood
  exact False.elim (Nat.not_lt_zero rank hhi)

theorem emptyDescriptorCoverageOfFactsBridge :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 0 :=
  SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage
    emptyFactsGoodBridge

theorem emptyDescriptorCoverageOfPredicateBridge :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 0 :=
  SourceRowPredicateGoodBridgeOnRange.to_descriptorCoverage
    emptyPredicateGoodBridge

private def emptySourcePositionRowProducerLanguage :
    SourcePositionRowProducerGoodLanguageOnRange 0 0 where
  Language := fun _ _ _ _ _ => False
  firstIndex := by
    intro spec rowProducer key rank mask hmem
    exact False.elim hmem
  secondIndex := by
    intro spec rowProducer key rank mask hmem
    exact False.elim hmem
  support := by
    intro spec rowProducer key rank mask hmem
    exact False.elim hmem
  source := by
    intro spec rowProducer key rank mask hmem
    exact False.elim hmem
  rows := by
    intro spec rowProducer key rank mask hmem
    exact False.elim hmem
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact False.elim (Nat.not_lt_zero rank hhi)

private theorem emptySourcePositionRowProducerCoverage :
    SourcePositionRowProducerGoodCoverageOnRange 0 0 := by
  intro rank mask hlt hlo hhi hM hgood
  exact False.elim (Nat.not_lt_zero rank hhi)

theorem emptyDescriptorCoverageOfSourcePositionProducerLanguage :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_descriptorCoverage
    emptySourcePositionRowProducerLanguage

theorem emptyDescriptorCoverageOfSourcePositionProducerCoverage :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_descriptorCoverage
    emptySourcePositionRowProducerCoverage

theorem sourceIndexStateDescriptorLanguageSmoke_builds : True := by
  trivial

end SourceIndexStateDescriptorLanguageSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
