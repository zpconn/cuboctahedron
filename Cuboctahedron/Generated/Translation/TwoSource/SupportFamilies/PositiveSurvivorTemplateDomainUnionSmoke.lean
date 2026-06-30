import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated template-domain union smoke for Phase 6Z.6K.8AP.16DU.9FM.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json`.
It groups a few positive candidate domains and proves a union-domain member
bridge without emitting rank/mask tables.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorTemplateDomainUnionSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke

private inductive GeneratedCandidate
  | c000
  | c001
  | c002
  | c003
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
  | .c000 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c001 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmp 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c002 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.tmpp 8
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c003 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }

private def generatedKey : GeneratedCandidate -> SourceIndexStateKey
  | .c000 => {
      firstIndex := (generatedSpec .c000).first.index
      secondIndex := (generatedSpec .c000).second.index
      support := (generatedSpec .c000).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c001 => {
      firstIndex := (generatedSpec .c001).first.index
      secondIndex := (generatedSpec .c001).second.index
      support := (generatedSpec .c001).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c002 => {
      firstIndex := (generatedSpec .c002).first.index
      secondIndex := (generatedSpec .c002).second.index
      support := (generatedSpec .c002).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c003 => {
      firstIndex := (generatedSpec .c003).first.index
      secondIndex := (generatedSpec .c003).second.index
      support := (generatedSpec .c003).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }

private def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
  | .c000 => {
      Applies := fun key rank mask =>
        key = generatedKey .c000 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c001 => {
      Applies := fun key rank mask =>
        key = generatedKey .c001 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c002 => {
      Applies := fun key rank mask =>
        key = generatedKey .c002 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c003 => {
      Applies := fun key rank mask =>
        key = generatedKey .c003 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }


private def generatedCandidateDomain
    (candidate : GeneratedCandidate) : TemplateLanguageDomain :=
  fun rank mask =>
    (generatedSpec candidate).Predicate rank mask /\
      (generatedRowProducer candidate).Applies
        (generatedKey candidate) rank mask

private theorem generatedCandidateDomainMemberBridge
    (candidate : GeneratedCandidate) :
    TemplateLanguageMemberBridgeOnDomain
      (generatedCandidateDomain candidate) := by
  intro rank mask hlt hmem hM hgood
  have hfirst :
      (generatedKey candidate).firstIndex =
        (generatedSpec candidate).first.index := by
    cases candidate <;> rfl
  have hsecond :
      (generatedKey candidate).secondIndex =
        (generatedSpec candidate).second.index := by
    cases candidate <;> rfl
  have hsupport :
      (generatedKey candidate).support =
        (generatedSpec candidate).support := by
    cases candidate <;> rfl
  have hsource :
      SourceIndexStateSourceFacts
        (generatedKey candidate) rank mask :=
    (generatedSpec candidate).sourceFacts
      hfirst hsecond hsupport hmem.1
  have hrows :
      SourceIndexStateRowFacts
        (generatedKey candidate) rank mask :=
    (generatedRowProducer candidate).rowFacts hmem.2
  exact TemplateLanguageMember.of_sourceIndexState_source_row hsource hrows

private def generatedUnionTemplateDomain : TemplateLanguageDomain :=
  fun rank mask =>
    exists candidate : GeneratedCandidate,
      generatedCandidateDomain candidate rank mask

private theorem generatedUnionTemplateDomainMemberBridge :
    TemplateLanguageMemberBridgeOnDomain
      generatedUnionTemplateDomain := by
  intro rank mask hlt hmem hM hgood
  rcases hmem with ⟨candidate, hcandidate⟩
  exact generatedCandidateDomainMemberBridge candidate hlt hcandidate hM hgood

/--
Union-domain smoke over the first bounded profile range `0..5000`.

Candidate domains:
- `c000`: `ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac`, cases `1316`
- `c001`: `e122fdae7b6cf3e4661bae8897bba294cb9acf17b3cff26996c3567dcaa54568`, cases `547`
- `c002`: `196ef355e130da5d1edd2529a31a15029688e0bba063d7894534bc7256ac484e`, cases `497`
- `c003`: `c17ae884e7cf2fc8dbdede249f6a8af7a2ebaa4bf1838348f135d5ca40146a40`, cases `339`

The `hcover` premise is intentionally the remaining production obligation:
future generated state/signature coverage must route every identity-linear
GoodDirection case into one of these reusable domains or another compressed
domain family.
-/
theorem generatedUnionTemplateDomainCovers
    (hcover :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageDomainCoversIdentityRange
      generatedUnionTemplateDomain 0 5000 := by
  intro rank mask hlt hlo hhi hM hgood
  exact hcover hlt hlo hhi hM hgood

theorem generatedUnionTemplateMemberBridgeViaDomain
    (hcover :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageMemberBridgeOnRange 0 5000 :=
  TemplateLanguageMemberBridgeOnDomain.to_range
    (generatedUnionTemplateDomainCovers hcover)
    generatedUnionTemplateDomainMemberBridge

theorem generatedUnionTemplateCoverageViaDomain
    (hcover :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageCoverageOnIdentityRange 0 5000 :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (generatedUnionTemplateMemberBridgeViaDomain hcover)

theorem generatedTemplateDomainUnionSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorTemplateDomainUnionSmoke
