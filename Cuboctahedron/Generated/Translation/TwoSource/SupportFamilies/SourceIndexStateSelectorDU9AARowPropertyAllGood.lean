import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002

/-!
DU.9AA bounded row-property all-Good root for `[0,4)`.

This smoke root repeats the bounded DU.9P `[0,4)` all-Good result through the
row-property erasure path.  The important check is that selector-positive
membership can be consumed as existential source/row facts, without exposing a
deterministic selector key table or replaying certificate-shaped data at the
public boundary.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9AARowPropertyAllGood

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

theorem rowPropertyCoverage0_1 :
    RowPropertyParametricCoverageOnIdentityRange 0 1 := by
  apply RowPropertyParametricCoverageOnIdentityRange.of_exists_source_row
  intro rank mask hlt _hlo hhi _hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  exact
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.selectorPositiveSourceRowFacts
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank0_selectorPositive_of_GoodDirection
        hlt hgood)

theorem rowPropertyCoverage2_3 :
    RowPropertyParametricCoverageOnIdentityRange 2 3 := by
  apply RowPropertyParametricCoverageOnIdentityRange.of_exists_source_row
  intro rank mask hlt hlo hhi _hM hgood
  have hrank : rank = 2 := by omega
  subst rank
  exact
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.selectorPositiveSourceRowFacts
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank2_selectorPositive_of_GoodDirection
        hlt hgood)

theorem rowPropertyCoverage3_4 :
    RowPropertyParametricCoverageOnIdentityRange 3 4 := by
  apply RowPropertyParametricCoverageOnIdentityRange.of_exists_source_row
  intro rank mask hlt hlo hhi _hM hgood
  have hrank : rank = 3 := by omega
  subst rank
  exact
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9LMicro.selectorPositiveSourceRowFacts
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9PCompactMembership.rank3_selectorPositive_of_GoodDirection
        hlt hgood)

theorem allGoodCoverage0_1 :
    AllTranslationGoodCoverageOnRange 0 1 :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    rowPropertyCoverage0_1

theorem rank1_allGoodKilled :
    AllTranslationGoodRankKilled 1 := by
  intro hlt mask _hM
  exact
    Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002.rowRelationClassifierGoodCoverage
      1 (Nat.le_refl 1) (by decide) hlt mask

theorem allGoodCoverage2_3 :
    AllTranslationGoodCoverageOnRange 2 3 :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    rowPropertyCoverage2_3

theorem allGoodCoverage3_4 :
    AllTranslationGoodCoverageOnRange 3 4 :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    rowPropertyCoverage3_4

theorem allGoodCoverage0_4 :
    AllTranslationGoodCoverageOnRange 0 4 :=
  CoversInterval.concat
    allGoodCoverage0_1
    (CoversInterval.concat
      (CoversInterval.single rank1_allGoodKilled)
      (CoversInterval.concat allGoodCoverage2_3 allGoodCoverage3_4))

theorem rowPropertyAllGoodRoot_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9AARowPropertyAllGood
