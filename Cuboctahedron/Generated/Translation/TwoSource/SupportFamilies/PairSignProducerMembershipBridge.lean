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

/--
Classifier-free GoodDirection target for one rank.

This is the strongest preferred generated target for the translation branch:
under the identity-linear premise, prove that every GoodDirection survivor is
killed.  The ordinary feasibility contradiction is recovered by the generic
`TranslationGoodCaseKilled.killed` theorem, so generated files do not have to
classify bad-direction masks or reason about the old noncomputable early
family classifier.
-/
def AllTranslationGoodRankKilled (rank : Nat) : Prop :=
  forall hlt : rank < numPairWords,
    forall mask : SignMask,
      totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
          (matId : Mat3 Rat) ->
        TranslationGoodCaseKilled ⟨rank, hlt⟩ mask

abbrev AllTranslationGoodCoverageOnRange (lo hi : Nat) : Prop :=
  CoversInterval AllTranslationGoodRankKilled lo hi

/--
Classifier-free source/row facts bridge for GoodDirection survivors.

Generated membership chunks should prefer this surface if they can derive the
source and row facts from `GoodDirectionAtRank` plus the identity-linear
premise.  It avoids both raw bad-direction mask evidence and the old
`translationEarlyFamilyClassOfChoice` condition.
-/
abbrev SourceRowFactsGoodBridge : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
      GoodDirectionAtRank r mask ->
        exists key : SourceIndexStateKey,
          SourceIndexStateSourceFacts key r.val mask /\
            SourceIndexStateRowFacts key r.val mask

/-- Rank-range version of `SourceRowFactsGoodBridge`. -/
abbrev SourceRowFactsGoodBridgeOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            exists key : SourceIndexStateKey,
              SourceIndexStateSourceFacts key rank mask /\
                SourceIndexStateRowFacts key rank mask

/--
Classifier-free predicate bridge matching the current split producer chunks.
-/
abbrev SourceRowPredicateGoodBridge : Prop :=
  forall {r : Fin numPairWords} {mask : SignMask},
    totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
      GoodDirectionAtRank r mask ->
        exists key : SourceIndexStateKey,
          SourceIndexStateSourcePredicate
            key.firstIndex key.secondIndex key.support r.val mask /\
            key.template.Rows key.support r.val mask

/-- Rank-range version of `SourceRowPredicateGoodBridge`. -/
abbrev SourceRowPredicateGoodBridgeOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            exists key : SourceIndexStateKey,
              SourceIndexStateSourcePredicate
                key.firstIndex key.secondIndex key.support rank mask /\
                key.template.Rows key.support rank mask

/--
Finite-catalog variant of `SourceRowFactsGoodBridgeOnRange`.

Generated modules may keep the actual catalog private, prove this catalog
membership statement, and export only
`SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage` after applying
`SourceRowFactsGoodCatalogOnRange.to_bridge`.  This keeps large key catalogs
out of public theorem statements.
-/
abbrev SourceRowFactsGoodCatalogOnRange {n : Nat}
    (keyAt : Fin n -> SourceIndexStateKey) (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            exists i : Fin n,
              SourceIndexStateSourceFacts (keyAt i) rank mask /\
                SourceIndexStateRowFacts (keyAt i) rank mask

/--
Finite-catalog variant of `SourceRowPredicateGoodBridgeOnRange`.

This is the preferred generated production surface when source and row
predicates are still cheaper than constructing their fact records directly.
The exported theorem should immediately erase the private catalog through
`SourceRowPredicateGoodCatalogOnRange.to_bridge`.
-/
abbrev SourceRowPredicateGoodCatalogOnRange {n : Nat}
    (keyAt : Fin n -> SourceIndexStateKey) (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            exists i : Fin n,
              SourceIndexStateSourcePredicate
                (keyAt i).firstIndex (keyAt i).secondIndex
                (keyAt i).support rank mask /\
                (keyAt i).template.Rows (keyAt i).support rank mask

/--
Semantic source/row facts language for a rank range.

Unlike a finite catalog, this does not prescribe how keys are enumerated.
Generated code can define `Language` as a state/prefix/source-position
predicate, prove the three fields below, keep the structure private, and export
only the erased bridge theorem.
-/
structure SourceRowFactsGoodLanguageOnRange (lo hi : Nat) where
  Language : SourceIndexStateKey -> Nat -> SignMask -> Prop
  source :
    forall {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
      Language key rank mask -> SourceIndexStateSourceFacts key rank mask
  rows :
    forall {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
      Language key rank mask -> SourceIndexStateRowFacts key rank mask
  complete :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              exists key : SourceIndexStateKey, Language key rank mask

/--
Semantic source/row predicate language for a rank range.

This is the predicate-level analogue of `SourceRowFactsGoodLanguageOnRange`.
It is the preferred future production target: prove a reusable language
membership theorem, then erase it to `SourceRowPredicateGoodBridgeOnRange`.
-/
structure SourceRowPredicateGoodLanguageOnRange (lo hi : Nat) where
  Language : SourceIndexStateKey -> Nat -> SignMask -> Prop
  source :
    forall {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
      Language key rank mask ->
        SourceIndexStateSourcePredicate
          key.firstIndex key.secondIndex key.support rank mask
  rows :
    forall {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
      Language key rank mask ->
        key.template.Rows key.support rank mask
  complete :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              exists key : SourceIndexStateKey, Language key rank mask

/--
Producer-level source/row language for a rank range.

This is the surface closest to the split producer hierarchy.  A generated
module can keep its source/row producer definitions private, prove that every
GoodDirection survivor belongs to one producer pair, and export only the
erased facts-language or all-Good coverage theorem.
-/
structure SourceRowProducerGoodLanguageOnRange (lo hi : Nat) where
  Language :
    SourceIndexStateSourceProducer ->
      SourceIndexStateRowProducer ->
        SourceIndexStateKey -> Nat -> SignMask -> Prop
  source :
    forall {sourceProducer : SourceIndexStateSourceProducer}
      {rowProducer : SourceIndexStateRowProducer}
      {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
        Language sourceProducer rowProducer key rank mask ->
          sourceProducer.Applies key rank mask
  rows :
    forall {sourceProducer : SourceIndexStateSourceProducer}
      {rowProducer : SourceIndexStateRowProducer}
      {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
        Language sourceProducer rowProducer key rank mask ->
          rowProducer.Applies key rank mask
  complete :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              exists sourceProducer : SourceIndexStateSourceProducer,
                exists rowProducer : SourceIndexStateRowProducer,
                  exists key : SourceIndexStateKey,
                    Language sourceProducer rowProducer key rank mask

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

theorem SourceRowFactsGoodBridge.to_allGoodCoverage
    (bridge : SourceRowFactsGoodBridge) :
    AllTranslationGoodCoverageOnRange 0 numPairWords := by
  intro rank hlo hhi hlt mask hM hgood
  rcases bridge hM hgood with ⟨key, hsource, hrows⟩
  exact (key.goodKilled_of_source_row hsource hrows) hgood

theorem SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (bridge : SourceRowFactsGoodBridgeOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi := by
  intro rank hlo hhi hlt mask hM hgood
  rcases bridge hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩
  exact (key.goodKilled_of_source_row hsource hrows) hgood

theorem AllTranslationGoodCoverageOnRange.to_caseKilled_of_fullRange
    (coverage : AllTranslationGoodCoverageOnRange 0 numPairWords)
    (r : Fin numPairWords) (mask : SignMask) :
    TranslationCaseKilled r mask := by
  intro hM
  exact
    TranslationGoodCaseKilled.killed
      (coverage r.val (Nat.zero_le r.val) r.isLt r.isLt mask hM) hM

theorem AllTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (coverage : AllTranslationGoodCoverageOnRange 0 numPairWords) :
    Translation.KilledBridge := by
  intro r mask _hclass _hM
  exact AllTranslationGoodCoverageOnRange.to_caseKilled_of_fullRange coverage r mask

theorem SourceRowFactsGoodBridge.to_caseKilled
    (bridge : SourceRowFactsGoodBridge)
    (r : Fin numPairWords) (mask : SignMask) :
    TranslationCaseKilled r mask :=
  AllTranslationGoodCoverageOnRange.to_caseKilled_of_fullRange
    (SourceRowFactsGoodBridge.to_allGoodCoverage bridge) r mask

theorem SourceRowFactsGoodBridgeOnRange.to_caseKilled_of_fullRange
    (bridge : SourceRowFactsGoodBridgeOnRange 0 numPairWords)
    (r : Fin numPairWords) (mask : SignMask) :
    TranslationCaseKilled r mask :=
  AllTranslationGoodCoverageOnRange.to_caseKilled_of_fullRange
    (SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage bridge) r mask

theorem SourceRowFactsGoodBridgeOnRange.to_killedBridge_of_fullRange
    (bridge : SourceRowFactsGoodBridgeOnRange 0 numPairWords) :
    Translation.KilledBridge :=
  AllTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage bridge)

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

theorem SourceRowPredicateGoodBridge.to_factsGoodBridge
    (bridge : SourceRowPredicateGoodBridge) :
    SourceRowFactsGoodBridge := by
  intro r mask hM hgood
  rcases r with ⟨rank, hlt⟩
  rcases bridge hM hgood with ⟨key, hsource, hrows⟩
  exact ⟨key,
    SourceIndexStateSourceFacts.of_sourcePredicate
      (key := key) rfl rfl rfl hsource,
    SourceIndexStateRowFacts.of_rows hrows⟩

theorem SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange
    {lo hi : Nat}
    (bridge : SourceRowPredicateGoodBridgeOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases bridge hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩
  exact ⟨key,
    SourceIndexStateSourceFacts.of_sourcePredicate
      (key := key) rfl rfl rfl hsource,
    SourceIndexStateRowFacts.of_rows hrows⟩

theorem SourceRowFactsGoodCatalogOnRange.to_bridge
    {n lo hi : Nat} {keyAt : Fin n -> SourceIndexStateKey}
    (catalog : SourceRowFactsGoodCatalogOnRange keyAt lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases catalog hlt hlo hhi hM hgood with ⟨i, hsource, hrows⟩
  exact ⟨keyAt i, hsource, hrows⟩

theorem SourceRowPredicateGoodCatalogOnRange.to_bridge
    {n lo hi : Nat} {keyAt : Fin n -> SourceIndexStateKey}
    (catalog : SourceRowPredicateGoodCatalogOnRange keyAt lo hi) :
    SourceRowPredicateGoodBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases catalog hlt hlo hhi hM hgood with ⟨i, hsource, hrows⟩
  exact ⟨keyAt i, hsource, hrows⟩

theorem SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage
    {n lo hi : Nat} {keyAt : Fin n -> SourceIndexStateKey}
    (catalog : SourceRowFactsGoodCatalogOnRange keyAt lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage
    (SourceRowFactsGoodCatalogOnRange.to_bridge catalog)

theorem SourceRowPredicateGoodCatalogOnRange.to_allGoodCoverage
    {n lo hi : Nat} {keyAt : Fin n -> SourceIndexStateKey}
    (catalog : SourceRowPredicateGoodCatalogOnRange keyAt lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage
    (SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange
      (SourceRowPredicateGoodCatalogOnRange.to_bridge catalog))

theorem SourceRowFactsGoodLanguageOnRange.to_bridge
    {lo hi : Nat}
    (language : SourceRowFactsGoodLanguageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases language.complete hlt hlo hhi hM hgood with ⟨key, hmem⟩
  exact ⟨key, language.source hmem, language.rows hmem⟩

theorem SourceRowPredicateGoodLanguageOnRange.to_bridge
    {lo hi : Nat}
    (language : SourceRowPredicateGoodLanguageOnRange lo hi) :
    SourceRowPredicateGoodBridgeOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases language.complete hlt hlo hhi hM hgood with ⟨key, hmem⟩
  exact ⟨key, language.source hmem, language.rows hmem⟩

theorem SourceRowFactsGoodLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SourceRowFactsGoodLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage
    (SourceRowFactsGoodLanguageOnRange.to_bridge language)

theorem SourceRowPredicateGoodLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SourceRowPredicateGoodLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage
    (SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange
      (SourceRowPredicateGoodLanguageOnRange.to_bridge language))

def SourceRowProducerGoodLanguageOnRange.to_factsLanguage
    {lo hi : Nat}
    (language : SourceRowProducerGoodLanguageOnRange lo hi) :
    SourceRowFactsGoodLanguageOnRange lo hi where
  Language := fun key rank mask =>
    exists sourceProducer : SourceIndexStateSourceProducer,
      exists rowProducer : SourceIndexStateRowProducer,
        language.Language sourceProducer rowProducer key rank mask
  source := by
    intro key rank mask hmem
    rcases hmem with ⟨sourceProducer, rowProducer, hmem⟩
    exact sourceProducer.sourceFacts (language.source hmem)
  rows := by
    intro key rank mask hmem
    rcases hmem with ⟨sourceProducer, rowProducer, hmem⟩
    exact rowProducer.rowFacts (language.rows hmem)
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    rcases language.complete hlt hlo hhi hM hgood with
      ⟨sourceProducer, rowProducer, key, hmem⟩
    exact ⟨key, sourceProducer, rowProducer, hmem⟩

theorem SourceRowProducerGoodLanguageOnRange.to_bridge
    {lo hi : Nat}
    (language : SourceRowProducerGoodLanguageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi :=
  SourceRowFactsGoodLanguageOnRange.to_bridge
    (SourceRowProducerGoodLanguageOnRange.to_factsLanguage language)

theorem SourceRowProducerGoodLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SourceRowProducerGoodLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodLanguageOnRange.to_allGoodCoverage
    (SourceRowProducerGoodLanguageOnRange.to_factsLanguage language)

theorem SourceRowPredicateGoodBridge.to_allGoodCoverage
    (bridge : SourceRowPredicateGoodBridge) :
    AllTranslationGoodCoverageOnRange 0 numPairWords :=
  SourceRowFactsGoodBridge.to_allGoodCoverage
    (SourceRowPredicateGoodBridge.to_factsGoodBridge bridge)

theorem SourceRowPredicateGoodBridgeOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (bridge : SourceRowPredicateGoodBridgeOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage
    (SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange bridge)

theorem SourceRowPredicateGoodBridge.to_caseKilled
    (bridge : SourceRowPredicateGoodBridge)
    (r : Fin numPairWords) (mask : SignMask) :
    TranslationCaseKilled r mask :=
  SourceRowFactsGoodBridge.to_caseKilled
    (SourceRowPredicateGoodBridge.to_factsGoodBridge bridge) r mask

theorem SourceRowPredicateGoodBridgeOnRange.to_caseKilled_of_fullRange
    (bridge : SourceRowPredicateGoodBridgeOnRange 0 numPairWords)
    (r : Fin numPairWords) (mask : SignMask) :
    TranslationCaseKilled r mask :=
  SourceRowFactsGoodBridgeOnRange.to_caseKilled_of_fullRange
    (SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange bridge) r mask

theorem SourceRowPredicateGoodBridgeOnRange.to_killedBridge_of_fullRange
    (bridge : SourceRowPredicateGoodBridgeOnRange 0 numPairWords) :
    Translation.KilledBridge :=
  AllTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (SourceRowPredicateGoodBridgeOnRange.to_allGoodCoverage bridge)

theorem SourceRowFactsGoodLanguageOnRange.to_killedBridge_of_fullRange
    (language : SourceRowFactsGoodLanguageOnRange 0 numPairWords) :
    Translation.KilledBridge :=
  AllTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (SourceRowFactsGoodLanguageOnRange.to_allGoodCoverage language)

theorem SourceRowPredicateGoodLanguageOnRange.to_killedBridge_of_fullRange
    (language : SourceRowPredicateGoodLanguageOnRange 0 numPairWords) :
    Translation.KilledBridge :=
  AllTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (SourceRowPredicateGoodLanguageOnRange.to_allGoodCoverage language)

theorem SourceRowProducerGoodLanguageOnRange.to_killedBridge_of_fullRange
    (language : SourceRowProducerGoodLanguageOnRange 0 numPairWords) :
    Translation.KilledBridge :=
  AllTranslationGoodCoverageOnRange.to_killedBridge_of_fullRange
    (SourceRowProducerGoodLanguageOnRange.to_allGoodCoverage language)

theorem pairSignProducerMembershipBridge_builds : True := by
  trivial

end PairSignProducerMembershipBridge
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
