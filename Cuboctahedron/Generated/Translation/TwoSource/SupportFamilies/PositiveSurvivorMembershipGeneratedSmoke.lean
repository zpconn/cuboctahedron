import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated positive-survivor membership smoke for AP.16I.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json` and
contains one representative positive source-position/row candidate group.
It assumes a `GoodDirectionAtRank` survivor and does not enumerate masks that
fail GoodDirection.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke

private def generatedSpec : SourcePairPositionSpec where
  first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
  second := SourcePositionSpec.xpStart ⟨0, by decide⟩

private def generatedKey : SourceIndexStateKey where
  firstIndex := generatedSpec.first.index
  secondIndex := generatedSpec.second.index
  support := generatedSpec.support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def generatedRowProducer : SourceIndexStateRowProducer where
  Applies := fun key rank mask =>
    key = generatedKey /\
      key.template.Rows key.support rank mask
  rowFacts := by
    intro key rank mask h
    exact SourceIndexStateRowFacts.of_rows h.2

private def generatedCandidate (rank : Nat) (mask : SignMask) : Prop :=
  generatedSpec.Predicate rank mask /\
    generatedRowProducer.Applies generatedKey rank mask

private def generatedCandidateTemplateDomain : TemplateLanguageDomain :=
  generatedCandidate

private theorem generatedCandidateTemplateDomainMemberBridge :
    TemplateLanguageMemberBridgeOnDomain
      generatedCandidateTemplateDomain := by
  intro rank mask hlt hmem hM hgood
  have hsource : SourceIndexStateSourceFacts generatedKey rank mask :=
    generatedSpec.sourceFacts rfl rfl rfl hmem.1
  have hrows : SourceIndexStateRowFacts generatedKey rank mask :=
    generatedRowProducer.rowFacts hmem.2
  exact TemplateLanguageMember.of_sourceIndexState_source_row hsource hrows

/--
Representative generated AP.16I theorem for candidate group `ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac`.

Observed bounded cases in the profile: `1316`.
This is a theorem-surface smoke only; future production chunks must prove
the `hclass` classifier from semantic positive-survivor signatures.
-/
theorem generatedGroupSourcePositionCoverage
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    SourcePositionRowProducerGoodCoverageOnRange 0 5000 :=
  SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate
    generatedSpec generatedRowProducer generatedKey rfl rfl rfl
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact (hclass hlt hlo hhi hM hgood).1)
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact (hclass hlt hlo hhi hM hgood).2)

theorem generatedGroupAllGoodCoverage
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    (generatedGroupSourcePositionCoverage hclass)

theorem generatedGroupTemplateMemberBridge
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    TemplateLanguageMemberBridgeOnRange 0 5000 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_templateMemberBridge
    (generatedGroupSourcePositionCoverage hclass)

theorem generatedGroupTemplateDomainCovers
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    TemplateLanguageDomainCoversIdentityRange
      generatedCandidateTemplateDomain 0 5000 := by
  intro rank mask hlt hlo hhi hM hgood
  exact hclass hlt hlo hhi hM hgood

theorem generatedGroupTemplateMemberBridgeViaDomain
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    TemplateLanguageMemberBridgeOnRange 0 5000 :=
  TemplateLanguageMemberBridgeOnDomain.to_range
    (generatedGroupTemplateDomainCovers hclass)
    generatedCandidateTemplateDomainMemberBridge

theorem generatedGroupTemplateCoverage
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    TemplateLanguageCoverageOnIdentityRange 0 5000 :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (generatedGroupTemplateMemberBridge hclass)

theorem generatedPositiveSurvivorMembershipSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipGeneratedSmoke
