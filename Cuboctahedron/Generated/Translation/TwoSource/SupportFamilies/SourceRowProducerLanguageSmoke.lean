import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/-!
Smoke check for the producer-level AP language bridge.

The production goal is for generated chunks to prove nonempty
`SourceRowProducerGoodLanguageOnRange` statements from semantic
source-position and row-template predicates.  This file keeps the interval
empty, so it validates the erasure path without replaying any ranks or masks.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowProducerLanguageSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def emptyProducerLanguage :
    SourceRowProducerGoodLanguageOnRange 0 0 where
  Language := fun _ _ _ _ _ => False
  source := by
    intro sourceProducer rowProducer key rank mask h
    exact False.elim h
  rows := by
    intro sourceProducer rowProducer key rank mask h
    exact False.elim h
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact False.elim (Nat.not_lt_zero rank hhi)

def smokeFactsLanguage :
    SourceRowFactsGoodLanguageOnRange 0 0 :=
  SourceRowProducerGoodLanguageOnRange.to_factsLanguage emptyProducerLanguage

theorem smokeFactsBridge :
    SourceRowFactsGoodBridgeOnRange 0 0 :=
  SourceRowProducerGoodLanguageOnRange.to_bridge emptyProducerLanguage

theorem smokeAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourceRowProducerGoodLanguageOnRange.to_allGoodCoverage emptyProducerLanguage

theorem sourceRowProducerLanguageSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowProducerLanguageSmoke
