import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Smoke check for the source-position plus row-producer AP language bridge.

This validates the hand-written erasure path from semantic source-position
membership plus row-producer membership to public all-Good coverage.  The range
is empty by design; nonempty coverage must be supplied by generated language
membership, not by bounded rank/mask replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguageSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

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

private theorem emptySourcePositionRowProducerCoverage :
    SourcePositionRowProducerGoodCoverageOnRange 0 0 := by
  intro rank mask hlt hlo hhi hM hgood
  exact False.elim (Nat.not_lt_zero rank hhi)

private theorem emptySourcePositionRowProducerCoverageByEmpty :
    SourcePositionRowProducerGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.empty (Nat.le_refl 0)

private theorem emptySourcePositionRowProducerCoverageByConcat :
    SourcePositionRowProducerGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.concat
    emptySourcePositionRowProducerCoverageByEmpty
    emptySourcePositionRowProducerCoverageByEmpty

private def smokeSpec : SourcePairPositionSpec where
  first := SourcePositionSpec.xpStart ⟨0, by decide⟩
  second := SourcePositionSpec.xpStart ⟨1, by decide⟩

private def smokeRowProducer : SourceIndexStateRowProducer where
  Applies := fun _ _ _ => False
  rowFacts := by
    intro key rank mask h
    cases h

private def smokeKey : SourceIndexStateKey where
  firstIndex := smokeSpec.first.index
  secondIndex := smokeSpec.second.index
  support := smokeSpec.support
  template := SourceIndexTemplate.eqEqPosVarFirst

private theorem emptySourcePositionRowProducerCoverageBySingleCandidate :
    SourcePositionRowProducerGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate
    smokeSpec smokeRowProducer smokeKey rfl rfl rfl
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact False.elim (Nat.not_lt_zero rank hhi))
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact False.elim (Nat.not_lt_zero rank hhi))

def smokeLanguageOfCoverage :
    SourcePositionRowProducerGoodLanguageOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.of_coverage
    emptySourcePositionRowProducerCoverage

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

theorem smokeTemplateMemberBridge :
    TemplateLanguageMemberBridgeOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_templateMemberBridge
    emptySourcePositionRowProducerLanguage

theorem smokeTemplateCoverage :
    TemplateLanguageCoverageOnIdentityRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_templateCoverage
    emptySourcePositionRowProducerLanguage

theorem smokeTemplateMemberBridgeOfDirectCoverage :
    TemplateLanguageMemberBridgeOnRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_templateMemberBridge
    emptySourcePositionRowProducerCoverage

theorem smokeTemplateCoverageOfDirectCoverage :
    TemplateLanguageCoverageOnIdentityRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_templateCoverage
    emptySourcePositionRowProducerCoverage

theorem smokeAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodLanguageOnRange.to_allGoodCoverage
    emptySourcePositionRowProducerLanguage

theorem smokeAllGoodCoverageOfDirectCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    emptySourcePositionRowProducerCoverage

theorem smokeAllGoodCoverageOfSingleCandidateCoverage :
    AllTranslationGoodCoverageOnRange 0 0 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    emptySourcePositionRowProducerCoverageBySingleCandidate

theorem sourcePositionProducerLanguageSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguageSmoke
