import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/-!
Tiny catalog-membership smoke for the AP source/row bridge.

This file checks the theorem surface introduced in Phase 6Z.6K.8AP.5:
generated modules may keep a finite key catalog private, prove a catalog
membership theorem, and export only the erased AP range theorem.  The covered
range here is empty on purpose; this smoke is about the catalog-erasure API,
not about generated membership coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CatalogMembershipSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

private def smokeSupport : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private def smokeKey : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := smokeSupport
  template := SourceIndexTemplate.eqEqPosVarFirst

private def smokeCatalog : Fin 1 -> SourceIndexStateKey
  | _ => smokeKey

private theorem smokeCatalogMembership :
    SourceRowPredicateGoodCatalogOnRange smokeCatalog 0 0 := by
  intro rank _mask _hlt _hlo hhi _hM _hgood
  exact False.elim (Nat.not_lt_zero rank hhi)

theorem smokePredicateBridge :
    SourceRowPredicateGoodBridgeOnRange 0 0 :=
  SourceRowPredicateGoodCatalogOnRange.to_bridge smokeCatalogMembership

theorem smokeAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourceRowPredicateGoodCatalogOnRange.to_allGoodCoverage smokeCatalogMembership

theorem catalogMembershipSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CatalogMembershipSmoke
