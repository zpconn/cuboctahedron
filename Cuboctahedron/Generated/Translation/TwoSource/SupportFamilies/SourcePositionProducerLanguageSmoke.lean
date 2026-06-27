import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage

/-!
Smoke check for the source-position plus row-producer AP language bridge.

This validates the hand-written erasure path from semantic source-position
membership plus row-producer membership to public all-Good coverage.  The range
is empty by design; nonempty coverage must be supplied by generated language
membership, not by bounded rank/mask replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguageSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage

private def emptySourcePositionRowProducerLanguage :
    SourcePositionRowProducerGoodLanguageOnRange 0 0 where
  Language := fun _ _ _ _ _ => False
  firstIndex := by
    intro spec rowProducer key rank mask h
    exact False.elim h
  secondIndex := by
    intro spec rowProducer key rank mask h
    exact False.elim h
  support := by
    intro spec rowProducer key rank mask h
    exact False.elim h
  source := by
    intro spec rowProducer key rank mask h
    exact False.elim h
  rows := by
    intro spec rowProducer key rank mask h
    exact False.elim h
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact False.elim (Nat.not_lt_zero rank hhi)

def smokeProducerLanguage :
    SourceRowProducerGoodLanguageOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage
    emptySourcePositionRowProducerLanguage

def smokeFactsLanguage :
    SourceRowFactsGoodLanguageOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_factsLanguage
    emptySourcePositionRowProducerLanguage

theorem smokeFactsBridge :
    SourceRowFactsGoodBridgeOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_bridge
    emptySourcePositionRowProducerLanguage

theorem smokeAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_allGoodCoverage
    emptySourcePositionRowProducerLanguage

theorem sourcePositionProducerLanguageSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguageSmoke
