import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

/-!
DU.9AD bounded descriptor-coverage smoke.

This module validates the exact open target named in `SYMMETRY_PLAN.md`:
`SourceIndexStateDescriptorGoodCoverageOnRange`.  It only proves tiny bounded
ranges where existing DU.9P compact membership facts already provide
GoodDirection membership.  It is not a production coverage backend.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorDU9ADCoverageSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership

theorem descriptorCoverage_of_selectorPositiveCase
    {rank : Nat} {mask : SignMask}
    (hcase : SelectorPositiveCase rank mask) :
    exists desc : SourceIndexStateFamilyDescriptor,
      desc.Applies rank mask := by
  rcases selectorPositiveSourceRowFacts hcase with ⟨key, hsource, hrows⟩
  exact ⟨key.toDescriptor, key.matches_of_source_row hsource hrows⟩

theorem descriptorCoverage0_1 :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 1 := by
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  exact descriptorCoverage_of_selectorPositiveCase
    (rank0_selectorPositive_of_GoodDirection hlt hgood)

theorem descriptorCoverage2_3 :
    SourceIndexStateDescriptorGoodCoverageOnRange 2 3 := by
  intro rank mask hlt hlo hhi _hM hgood
  have hrank : rank = 2 := by omega
  subst rank
  exact descriptorCoverage_of_selectorPositiveCase
    (rank2_selectorPositive_of_GoodDirection hlt hgood)

theorem descriptorCoverage3_4 :
    SourceIndexStateDescriptorGoodCoverageOnRange 3 4 := by
  intro rank mask hlt hlo hhi _hM hgood
  have hrank : rank = 3 := by omega
  subst rank
  exact descriptorCoverage_of_selectorPositiveCase
    (rank3_selectorPositive_of_GoodDirection hlt hgood)

theorem allGoodCoverage0_1 :
    AllTranslationGoodCoverageOnRange 0 1 :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    descriptorCoverage0_1

theorem allGoodCoverage2_3 :
    AllTranslationGoodCoverageOnRange 2 3 :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    descriptorCoverage2_3

theorem allGoodCoverage3_4 :
    AllTranslationGoodCoverageOnRange 3 4 :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    descriptorCoverage3_4

theorem descriptorCoverageSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorDU9ADCoverageSmoke
