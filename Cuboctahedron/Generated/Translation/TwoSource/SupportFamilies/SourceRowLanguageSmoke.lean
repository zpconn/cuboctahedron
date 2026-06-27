import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/-!
Tiny source/row language smoke for the AP bridge.

This checks the relation-based theorem surface that should replace finite
catalog dispatch: generated code may define a semantic language over
`SourceIndexStateKey`, prove source/row facts for members of that language,
and prove that every identity-linear GoodDirection case in a range belongs to
some language member.  The range here is empty; nonempty coverage still needs a
real generated language theorem.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowLanguageSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def emptyPredicateLanguage :
    SourceRowPredicateGoodLanguageOnRange 0 0 where
  Language := fun _ _ _ => False
  source := by
    intro _ _ _ h
    exact False.elim h
  rows := by
    intro _ _ _ h
    exact False.elim h
  complete := by
    intro rank _mask _hlt _hlo hhi _hM _hgood
    exact False.elim (Nat.not_lt_zero rank hhi)

theorem smokePredicateBridge :
    SourceRowPredicateGoodBridgeOnRange 0 0 :=
  SourceRowPredicateGoodLanguageOnRange.to_bridge emptyPredicateLanguage

theorem smokeAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourceRowPredicateGoodLanguageOnRange.to_allGoodCoverage emptyPredicateLanguage

theorem sourceRowLanguageSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceRowLanguageSmoke
