import Cuboctahedron.Generated.Translation.Complete
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Semantic bridge target for the pair-sign producer coverage backend.

The split producer smokes already show how a concrete source predicate and row
predicate compose to `TranslationGoodCaseKilled`.  This module packages the
remaining production obligation in the shape needed by
`Generated.Translation.KilledBridge`: generated membership evidence should
classify each residual GoodDirection translation case into one source/row
producer key, and this small hand-written theorem turns that into the public
translation killed bridge.

No rank/mask tables or generated certificates live here.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PairSignProducerMembershipBridge

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/--
Proof-producing membership surface after generated source and row producers
have already converted their predicates into facts.

This is the most compact final bridge target for a generated membership root.
-/
abbrev SourceRowFactsBridge : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    translationEarlyFamilyClassOfChoice r mask =
        TranslationFamilyClass.needsFarkas ->
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        exists key : SourceIndexStateKey,
          SourceIndexStateSourceFacts key r.val mask /\
            SourceIndexStateRowFacts key r.val mask

/-- Rank-range version of `SourceRowFactsBridge` for generated chunk modules. -/
abbrev SourceRowFactsBridgeOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        translationEarlyFamilyClassOfChoice ⟨rank, hlt⟩ mask =
            TranslationFamilyClass.needsFarkas ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            exists key : SourceIndexStateKey,
              SourceIndexStateSourceFacts key rank mask /\
                SourceIndexStateRowFacts key rank mask

/--
Predicate-level membership surface matching the current split producer chunks.

Generated membership evidence may prove the source predicate and row predicate
directly; this adapter turns those predicates into the facts required by
`SourceRowFactsBridge`.
-/
abbrev SourceRowPredicateBridge : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    translationEarlyFamilyClassOfChoice r mask =
        TranslationFamilyClass.needsFarkas ->
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        exists key : SourceIndexStateKey,
          SourceIndexStateSourcePredicate
            key.firstIndex key.secondIndex key.support r.val mask /\
            key.template.Rows key.support r.val mask

/-- Rank-range version of `SourceRowPredicateBridge` for generated chunk modules. -/
abbrev SourceRowPredicateBridgeOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        translationEarlyFamilyClassOfChoice ⟨rank, hlt⟩ mask =
            TranslationFamilyClass.needsFarkas ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            exists key : SourceIndexStateKey,
              SourceIndexStateSourcePredicate
                key.firstIndex key.secondIndex key.support rank mask /\
                key.template.Rows key.support rank mask

/--
Semantic residual killed predicate for one rank.  This is deliberately weaker
than full `TranslationCaseKilled`: early translation families are handled by
`Generated.Translation.complete_killed_of_bridge`; this predicate is only the
remaining `needsFarkas` branch.
-/
def ResidualTranslationRankKilled (rank : Nat) : Prop :=
  forall hlt : rank < numPairWords,
    forall mask : SignMask,
      translationEarlyFamilyClassOfChoice ⟨rank, hlt⟩ mask =
          TranslationFamilyClass.needsFarkas ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          TranslationCaseKilled ⟨rank, hlt⟩ mask

abbrev ResidualTranslationCoverageOnRange (lo hi : Nat) : Prop :=
  CoversInterval ResidualTranslationRankKilled lo hi

/--
GoodDirection-survivor version of `ResidualTranslationRankKilled`.

This is the preferred generated-chunk target: source/row producer membership
proves the survivor contradiction, while `TranslationGoodCaseKilled.killed`
keeps the feasibility-to-GoodDirection argument in one small hand-written
theorem.
-/
def ResidualTranslationGoodRankKilled (rank : Nat) : Prop :=
  forall hlt : rank < numPairWords,
    forall mask : SignMask,
      translationEarlyFamilyClassOfChoice ⟨rank, hlt⟩ mask =
          TranslationFamilyClass.needsFarkas ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          TranslationGoodCaseKilled ⟨rank, hlt⟩ mask

abbrev ResidualTranslationGoodCoverageOnRange (lo hi : Nat) : Prop :=
  CoversInterval ResidualTranslationGoodRankKilled lo hi

theorem SourceRowFactsBridge.to_killedBridge
    (bridge : SourceRowFactsBridge) :
    Translation.KilledBridge := by
  intro r mask hclass hM
  rcases r with ⟨rank, hlt⟩
  rcases bridge hclass hM with ⟨key, hsource, hrows⟩
  exact TranslationGoodCaseKilled.killed
    (key.goodKilled_of_source_row hsource hrows)

theorem SourceRowFactsBridge.of_rangeAll
    (bridge : SourceRowFactsBridgeOnRange 0 numPairWords) :
    SourceRowFactsBridge := by
  intro r mask hclass hM
  rcases r with ⟨rank, hlt⟩
  exact bridge hlt (Nat.zero_le rank) hlt hclass hM

theorem SourceRowFactsBridgeOnRange.to_residualCoverage
    {lo hi : Nat}
    (bridge : SourceRowFactsBridgeOnRange lo hi) :
    ResidualTranslationCoverageOnRange lo hi := by
  intro rank hlo hhi hlt mask hclass hM
  rcases bridge hlt hlo hhi hclass hM with ⟨key, hsource, hrows⟩
  exact TranslationGoodCaseKilled.killed
    (key.goodKilled_of_source_row hsource hrows)

theorem SourceRowFactsBridgeOnRange.to_residualGoodCoverage
    {lo hi : Nat}
    (bridge : SourceRowFactsBridgeOnRange lo hi) :
    ResidualTranslationGoodCoverageOnRange lo hi := by
  intro rank hlo hhi hlt mask hclass hM
  rcases bridge hlt hlo hhi hclass hM with ⟨key, hsource, hrows⟩
  exact key.goodKilled_of_source_row hsource hrows

theorem ResidualTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (coverage : ResidualTranslationGoodCoverageOnRange 0 numPairWords) :
    Translation.KilledBridge := by
  intro r mask hclass hM
  exact
    TranslationGoodCaseKilled.killed
      (coverage r.val (Nat.zero_le r.val) r.isLt r.isLt mask hclass hM)

theorem SourceRowPredicateBridge.to_factsBridge
    (bridge : SourceRowPredicateBridge) :
    SourceRowFactsBridge := by
  intro r mask hclass hM
  rcases r with ⟨rank, hlt⟩
  rcases bridge hclass hM with ⟨key, hsource, hrows⟩
  exact ⟨key,
    SourceIndexStateSourceFacts.of_sourcePredicate
      (key := key) rfl rfl rfl hsource,
    SourceIndexStateRowFacts.of_rows hrows⟩

theorem SourceRowPredicateBridgeOnRange.to_factsBridgeOnRange
    {lo hi : Nat}
    (bridge : SourceRowPredicateBridgeOnRange lo hi) :
    SourceRowFactsBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hclass hM
  rcases bridge hlt hlo hhi hclass hM with ⟨key, hsource, hrows⟩
  exact ⟨key,
    SourceIndexStateSourceFacts.of_sourcePredicate
      (key := key) rfl rfl rfl hsource,
    SourceIndexStateRowFacts.of_rows hrows⟩

theorem SourceRowPredicateBridge.of_rangeAll
    (bridge : SourceRowPredicateBridgeOnRange 0 numPairWords) :
    SourceRowPredicateBridge := by
  intro r mask hclass hM
  rcases r with ⟨rank, hlt⟩
  exact bridge hlt (Nat.zero_le rank) hlt hclass hM

theorem SourceRowPredicateBridgeOnRange.to_residualCoverage
    {lo hi : Nat}
    (bridge : SourceRowPredicateBridgeOnRange lo hi) :
    ResidualTranslationCoverageOnRange lo hi :=
  SourceRowFactsBridgeOnRange.to_residualCoverage
    (SourceRowPredicateBridgeOnRange.to_factsBridgeOnRange bridge)

theorem SourceRowPredicateBridgeOnRange.to_residualGoodCoverage
    {lo hi : Nat}
    (bridge : SourceRowPredicateBridgeOnRange lo hi) :
    ResidualTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsBridgeOnRange.to_residualGoodCoverage
    (SourceRowPredicateBridgeOnRange.to_factsBridgeOnRange bridge)

theorem SourceRowPredicateBridge.to_killedBridge
    (bridge : SourceRowPredicateBridge) :
    Translation.KilledBridge :=
  SourceRowFactsBridge.to_killedBridge
    (SourceRowPredicateBridge.to_factsBridge bridge)

theorem SourceRowPredicateBridgeOnRange.to_killedBridge_of_fullRange
    (bridge : SourceRowPredicateBridgeOnRange 0 numPairWords) :
    Translation.KilledBridge :=
  SourceRowPredicateBridge.to_killedBridge
    (SourceRowPredicateBridge.of_rangeAll bridge)

theorem SourceRowPredicateBridgeOnRange.to_killedBridge_of_fullGoodRange
    (bridge : SourceRowPredicateBridgeOnRange 0 numPairWords) :
    Translation.KilledBridge :=
  ResidualTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (SourceRowPredicateBridgeOnRange.to_residualGoodCoverage bridge)

theorem pairSignProducerMembershipBridge_builds : True := by
  trivial

end PairSignProducerMembershipBridge
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
