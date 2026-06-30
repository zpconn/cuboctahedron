import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated singleton positive-survivor signature-membership smoke for AP.16L.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json`.

It checks the AP.16L singleton-signature constructor: the Boolean classifier's
`completeBool` field is proved from interval bounds and a compact
signature-local mask theorem, not assumed as one monolithic classifier premise.
No denominator-nonpositive witnesses are emitted for masks that fail
GoodDirection.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSignatureMembershipGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

private inductive GeneratedCandidate
  | c000
  | c001
  | c002
  | c003
  | c004
  | c005
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
  | .c000 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c001 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c002 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c003 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c004 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c005 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpp 8
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }

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
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c002 => {
      firstIndex := (generatedSpec .c002).first.index
      secondIndex := (generatedSpec .c002).second.index
      support := (generatedSpec .c002).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c003 => {
      firstIndex := (generatedSpec .c003).first.index
      secondIndex := (generatedSpec .c003).second.index
      support := (generatedSpec .c003).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c004 => {
      firstIndex := (generatedSpec .c004).first.index
      secondIndex := (generatedSpec .c004).second.index
      support := (generatedSpec .c004).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c005 => {
      firstIndex := (generatedSpec .c005).first.index
      secondIndex := (generatedSpec .c005).second.index
      support := (generatedSpec .c005).support
      template := SourceIndexTemplate.eqEqNegVarFirst }

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
  | .c004 => {
      Applies := fun key rank mask =>
        key = generatedKey .c004 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c005 => {
      Applies := fun key rank mask =>
        key = generatedKey .c005 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }


private def generatedCandidateOfNat : Nat -> GeneratedCandidate
  | 4 => .c000
  | 6 => .c000
  | 11 => .c001
  | 22 => .c002
  | 30 => .c003
  | 31 => .c003
  | 59 => .c004
  | 63 => .c005
  | _ => .c000

private def generatedCandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  generatedCandidateOfNat mask.val


private def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 4 \/
    mask.val = 6 \/
    mask.val = 11 \/
    mask.val = 22 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 59 \/
    mask.val = 63

private def generatedSignatureFacts (mask : SignMask) : Prop :=
  (generatedSpec (generatedCandidateOfMask mask)).Predicate 100805 mask /\
    (generatedRowProducer (generatedCandidateOfMask mask)).Applies
      (generatedKey (generatedCandidateOfMask mask)) 100805 mask

private def generatedSignatureClassifier
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 100805 100806 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    100805 GeneratedCandidate generatedCandidateOfMask
    generatedGoodMaskMember generatedSignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    hmask hfacts
    (by
      intro mask h
      exact h.1)
    (by
      intro mask h
      exact h.2)

private def generatedSemanticSignatureClassifier
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        GoodDirectionAtRank ⟨100805, hlt⟩ mask ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    PositiveSurvivorSignatureClassifierOnRange 100805 100806 :=
  PositiveSurvivorSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    100805 GeneratedCandidate generatedCandidateOfMask
    generatedGoodMaskMember generatedSignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    hmask hfacts
    (by
      intro mask h
      exact h.1)
    (by
      intro mask h
      exact h.2)

/--
AP.16L singleton signature-membership coverage theorem.

Candidate group: `ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac`
Positive-survivor signature: `9c8a88567da24f69d8019b8ada2a84b4de847573f9520de337403a261d3d1836`
Anchor rank: `100805`
Catalog positive masks: `4, 6, 11, 22, 30, 31, 59, 63`
Signature catalog cases: `24`
Candidate groups used: `6`

Mask-to-candidate map:
Mask 4: `ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac`
Mask 6: `ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac`
Mask 11: `dd2875dae829e109f43be24b5de1602209e416dd46fe6fc59f0cff3b5323f332`
Mask 22: `ac92b6b8fd7f472110de30bddecd3b143706f725a062b61266effee7f19252f2`
Mask 30: `df498b0adbe30465a7df8b7414b4612965ffa10faefa6a2bc52727fabf971f6d`
Mask 31: `df498b0adbe30465a7df8b7414b4612965ffa10faefa6a2bc52727fabf971f6d`
Mask 59: `c17ae884e7cf2fc8dbdede249f6a8af7a2ebaa4bf1838348f135d5ca40146a40`
Mask 63: `da3aaad2d275ab461a1534b8153394b1d6e09297bd6d321d341701939ce0f602`

The remaining premises are exactly the split AP.16O proof obligations for the
next step: prove positive-mask membership from `goodDirectionAtRankBool = true`,
then prove theorem-valued source/row facts for the mask-selected candidate.
-/
theorem generatedSingletonSignatureSourcePositionCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    SourcePositionRowProducerGoodCoverageOnRange 100805 100806 :=
  (generatedSignatureClassifier hmask hfacts).to_coverage

theorem generatedSingletonSignatureSemanticSourcePositionCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        GoodDirectionAtRank ⟨100805, hlt⟩ mask ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    SourcePositionRowProducerGoodCoverageOnRange 100805 100806 :=
  (generatedSemanticSignatureClassifier hmask hfacts).to_coverage

theorem generatedSingletonSignatureAllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    AllTranslationGoodCoverageOnRange 100805 100806 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    (generatedSingletonSignatureSourcePositionCoverage hmask hfacts)

theorem generatedSingletonSignatureSemanticAllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        GoodDirectionAtRank ⟨100805, hlt⟩ mask ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    AllTranslationGoodCoverageOnRange 100805 100806 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    (generatedSingletonSignatureSemanticSourcePositionCoverage hmask hfacts)

theorem generatedSingletonSignatureTemplateMemberBridge
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    TemplateLanguageMemberBridgeOnRange 100805 100806 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_templateMemberBridge
    (generatedSingletonSignatureSourcePositionCoverage hmask hfacts)

theorem generatedSingletonSignatureTemplateCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    TemplateLanguageCoverageOnIdentityRange 100805 100806 :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (generatedSingletonSignatureTemplateMemberBridge hmask hfacts)

theorem generatedSingletonSignatureSemanticTemplateMemberBridge
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        GoodDirectionAtRank ⟨100805, hlt⟩ mask ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    TemplateLanguageMemberBridgeOnRange 100805 100806 :=
  SourcePositionRowProducerGoodCoverageOnRange.to_templateMemberBridge
    (generatedSingletonSignatureSemanticSourcePositionCoverage hmask hfacts)

theorem generatedSingletonSignatureSemanticTemplateCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 100805 < numPairWords),
        GoodDirectionAtRank ⟨100805, hlt⟩ mask ->
          generatedGoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        generatedGoodMaskMember mask ->
          generatedSignatureFacts mask) :
    TemplateLanguageCoverageOnIdentityRange 100805 100806 :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (generatedSingletonSignatureSemanticTemplateMemberBridge hmask hfacts)

theorem generatedPositiveSurvivorSignatureMembershipSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSignatureMembershipGeneratedSmoke
