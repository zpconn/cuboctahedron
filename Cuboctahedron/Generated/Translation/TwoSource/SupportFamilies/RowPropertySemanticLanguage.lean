import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

/-!
Range language bridge for semantic row-property membership.

Generated AP16DU chunks can now target this small Prop-level interface:
for each identity-linear `GoodDirectionAtRank` survivor in a range, produce a
source-index/state key, two semantic row roles, and proof that the key's source
facts plus the row-role facts hold.  This module erases that language to the
existing descriptor/all-Good coverage surfaces.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

structure SemanticRowMembershipLanguageOnRange (lo hi : Nat) where
  Language :
    SourceIndexStateKey -> RowRole -> RowRole -> Nat -> SignMask -> Prop
  sourceFacts :
    forall {key : SourceIndexStateKey} {firstRole secondRole : RowRole}
      {rank : Nat} {mask : SignMask},
        Language key firstRole secondRole rank mask ->
          SourceIndexStateSourceFacts key rank mask
  compatible :
    forall {key : SourceIndexStateKey} {firstRole secondRole : RowRole}
      {rank : Nat} {mask : SignMask},
        Language key firstRole secondRole rank mask ->
          RowTemplateSemantic key.template firstRole secondRole
  rowSemantic :
    forall {key : SourceIndexStateKey} {firstRole secondRole : RowRole}
      {rank : Nat} {mask : SignMask},
        Language key firstRole secondRole rank mask ->
          RowPairSemantic firstRole secondRole key.support rank mask
  complete :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              exists key : SourceIndexStateKey,
                exists firstRole secondRole : RowRole,
                  Language key firstRole secondRole rank mask

theorem SemanticRowMembershipLanguageOnRange.to_descriptorCoverage
    {lo hi : Nat}
    (language : SemanticRowMembershipLanguageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases language.complete hlt hlo hhi hM hgood with
    ⟨key, firstRole, secondRole, hmem⟩
  have hsource := language.sourceFacts hmem
  have hcompat := language.compatible hmem
  have hsem := language.rowSemantic hmem
  exact ⟨key.toDescriptor,
    SourceIndexStateKey.matches_of_source_semantic hsource hcompat hsem⟩

theorem SemanticRowMembershipLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SemanticRowMembershipLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    (SemanticRowMembershipLanguageOnRange.to_descriptorCoverage language)

theorem rowPropertySemanticLanguage_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticLanguage
