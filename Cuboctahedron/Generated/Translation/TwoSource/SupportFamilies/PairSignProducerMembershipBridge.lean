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

theorem SourceRowFactsBridge.to_killedBridge
    (bridge : SourceRowFactsBridge) :
    Translation.KilledBridge := by
  intro r mask hclass hM
  rcases r with ⟨rank, hlt⟩
  rcases bridge hclass hM with ⟨key, hsource, hrows⟩
  exact TranslationGoodCaseKilled.killed
    (key.goodKilled_of_source_row hsource hrows)

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

theorem SourceRowPredicateBridge.to_killedBridge
    (bridge : SourceRowPredicateBridge) :
    Translation.KilledBridge :=
  SourceRowFactsBridge.to_killedBridge
    (SourceRowPredicateBridge.to_factsBridge bridge)

theorem pairSignProducerMembershipBridge_builds : True := by
  trivial

end PairSignProducerMembershipBridge
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
