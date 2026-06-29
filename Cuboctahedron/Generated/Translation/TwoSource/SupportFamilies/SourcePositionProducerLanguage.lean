import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

/-!
Source-position plus row-producer language bridge.

`SourceRowProducerGoodLanguageOnRange` is the public AP.10 target for generated
translation chunks, but generated source producers are most naturally described
by source positions (`xpStart`, ordering, or interior slots).  This module
packages that intermediate form: prove a language over a source-position spec,
a row producer, and a key, then erase it to the producer-level AP target.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace SourcePositionProducerLanguage

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/--
GoodDirection survivor language expressed by source positions and row
producers.

Generated modules should aim to prove this kind of statement over nonempty
ranges: every identity-linear GoodDirection survivor belongs to one semantic
source-position spec and one row producer, with the key tying the two together.
-/
structure SourcePositionRowProducerGoodLanguageOnRange (lo hi : Nat) where
  Language :
    SourcePairPositionSpec ->
      SourceIndexStateRowProducer ->
        SourceIndexStateKey -> Nat -> SignMask -> Prop
  firstIndex :
    forall {spec : SourcePairPositionSpec}
      {rowProducer : SourceIndexStateRowProducer}
      {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
        Language spec rowProducer key rank mask ->
          key.firstIndex = spec.first.index
  secondIndex :
    forall {spec : SourcePairPositionSpec}
      {rowProducer : SourceIndexStateRowProducer}
      {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
        Language spec rowProducer key rank mask ->
          key.secondIndex = spec.second.index
  support :
    forall {spec : SourcePairPositionSpec}
      {rowProducer : SourceIndexStateRowProducer}
      {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
        Language spec rowProducer key rank mask ->
          key.support = spec.support
  source :
    forall {spec : SourcePairPositionSpec}
      {rowProducer : SourceIndexStateRowProducer}
      {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
        Language spec rowProducer key rank mask ->
          spec.Predicate rank mask
  rows :
    forall {spec : SourcePairPositionSpec}
      {rowProducer : SourceIndexStateRowProducer}
      {key : SourceIndexStateKey} {rank : Nat} {mask : SignMask},
        Language spec rowProducer key rank mask ->
          rowProducer.Applies key rank mask
  complete :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              exists spec : SourcePairPositionSpec,
                exists rowProducer : SourceIndexStateRowProducer,
                  exists key : SourceIndexStateKey,
                    Language spec rowProducer key rank mask

/--
Direct source-position plus row-producer coverage for a rank range.

This is a smaller generator target than the full language structure above:
generated chunks only need to produce one source-position spec, one row
producer, and one key for each arbitrary identity-linear GoodDirection
survivor.  The generic `of_coverage` adapter below packages that existential
coverage as a `SourcePositionRowProducerGoodLanguageOnRange`.
-/
def SourcePositionRowProducerGoodCoverageOnRange (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            exists spec : SourcePairPositionSpec,
              exists rowProducer : SourceIndexStateRowProducer,
                exists key : SourceIndexStateKey,
                  key.firstIndex = spec.first.index /\
                    key.secondIndex = spec.second.index /\
                      key.support = spec.support /\
                        spec.Predicate rank mask /\
                          rowProducer.Applies key rank mask

theorem SourcePositionRowProducerGoodCoverageOnRange.empty
    {lo hi : Nat} (h : hi <= lo) :
    SourcePositionRowProducerGoodCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  exact False.elim ((Nat.not_lt_of_ge h) (lt_of_le_of_lt hlo hhi))

theorem SourcePositionRowProducerGoodCoverageOnRange.concat
    {lo mid hi : Nat}
    (left : SourcePositionRowProducerGoodCoverageOnRange lo mid)
    (right : SourcePositionRowProducerGoodCoverageOnRange mid hi) :
    SourcePositionRowProducerGoodCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  by_cases hmid : rank < mid
  · exact left hlt hlo hmid hM hgood
  · exact right hlt (Nat.le_of_not_lt hmid) hhi hM hgood

theorem SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate
    {lo hi : Nat}
    (spec : SourcePairPositionSpec)
    (rowProducer : SourceIndexStateRowProducer)
    (key : SourceIndexStateKey)
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (hsource :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                spec.Predicate rank mask)
    (hrows :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                rowProducer.Applies key rank mask) :
    SourcePositionRowProducerGoodCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  exact ⟨spec, rowProducer, key,
    ⟨hfirst, ⟨hsecond, ⟨hsupport,
      ⟨hsource hlt hlo hhi hM hgood,
        hrows hlt hlo hhi hM hgood⟩⟩⟩⟩⟩

def SourcePositionRowProducerGoodLanguageOnRange.of_coverage
    {lo hi : Nat}
    (coverage : SourcePositionRowProducerGoodCoverageOnRange lo hi) :
    SourcePositionRowProducerGoodLanguageOnRange lo hi where
  Language := fun spec rowProducer key rank mask =>
    key.firstIndex = spec.first.index /\
      key.secondIndex = spec.second.index /\
        key.support = spec.support /\
          spec.Predicate rank mask /\
            rowProducer.Applies key rank mask
  firstIndex := by
    intro spec rowProducer key rank mask hmem
    exact hmem.1
  secondIndex := by
    intro spec rowProducer key rank mask hmem
    exact hmem.2.1
  support := by
    intro spec rowProducer key rank mask hmem
    exact hmem.2.2.1
  source := by
    intro spec rowProducer key rank mask hmem
    exact hmem.2.2.2.1
  rows := by
    intro spec rowProducer key rank mask hmem
    exact hmem.2.2.2.2
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    rcases coverage hlt hlo hhi hM hgood with
      ⟨spec, rowProducer, key, hmem⟩
    exact ⟨spec, rowProducer, key, hmem⟩

def SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage
    {lo hi : Nat}
    (language : SourcePositionRowProducerGoodLanguageOnRange lo hi) :
    SourceRowProducerGoodLanguageOnRange lo hi where
  Language := fun sourceProducer rowProducer key rank mask =>
    exists spec : SourcePairPositionSpec,
      sourceProducer = spec.sourceProducer /\
        language.Language spec rowProducer key rank mask
  source := by
    intro sourceProducer rowProducer key rank mask hmem
    rcases hmem with ⟨spec, hsourceProducer, hmem⟩
    subst sourceProducer
    exact ⟨language.firstIndex hmem,
      ⟨language.secondIndex hmem,
        ⟨language.support hmem, language.source hmem⟩⟩⟩
  rows := by
    intro sourceProducer rowProducer key rank mask hmem
    rcases hmem with ⟨spec, hsourceProducer, hmem⟩
    exact language.rows hmem
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    rcases language.complete hlt hlo hhi hM hgood with
      ⟨spec, rowProducer, key, hmem⟩
    exact ⟨spec.sourceProducer, rowProducer, key, ⟨spec, rfl, hmem⟩⟩

def SourcePositionRowProducerGoodLanguageOnRange.to_factsLanguage
    {lo hi : Nat}
    (language : SourcePositionRowProducerGoodLanguageOnRange lo hi) :
    SourceRowFactsGoodLanguageOnRange lo hi :=
  SourceRowProducerGoodLanguageOnRange.to_factsLanguage
    (SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage language)

theorem SourcePositionRowProducerGoodLanguageOnRange.to_bridge
    {lo hi : Nat}
    (language : SourcePositionRowProducerGoodLanguageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi :=
  SourceRowProducerGoodLanguageOnRange.to_bridge
    (SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage language)

theorem SourcePositionRowProducerGoodLanguageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (language : SourcePositionRowProducerGoodLanguageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourceRowProducerGoodLanguageOnRange.to_allGoodCoverage
    (SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage language)

theorem SourcePositionRowProducerGoodLanguageOnRange.to_killedBridge_of_fullRange
    (language : SourcePositionRowProducerGoodLanguageOnRange 0 numPairWords) :
    Cuboctahedron.Generated.Translation.KilledBridge :=
  SourceRowProducerGoodLanguageOnRange.to_killedBridge_of_fullRange
    (SourcePositionRowProducerGoodLanguageOnRange.to_producerLanguage language)

theorem SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (coverage : SourcePositionRowProducerGoodCoverageOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourcePositionRowProducerGoodLanguageOnRange.to_allGoodCoverage
    (SourcePositionRowProducerGoodLanguageOnRange.of_coverage coverage)

theorem SourcePositionRowProducerGoodCoverageOnRange.to_bridge
    {lo hi : Nat}
    (coverage : SourcePositionRowProducerGoodCoverageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi :=
  SourcePositionRowProducerGoodLanguageOnRange.to_bridge
    (SourcePositionRowProducerGoodLanguageOnRange.of_coverage coverage)

theorem SourcePositionRowProducerGoodCoverageOnRange.to_killedBridge_of_fullRange
    (coverage : SourcePositionRowProducerGoodCoverageOnRange 0 numPairWords) :
    Cuboctahedron.Generated.Translation.KilledBridge :=
  SourcePositionRowProducerGoodLanguageOnRange.to_killedBridge_of_fullRange
    (SourcePositionRowProducerGoodLanguageOnRange.of_coverage coverage)

theorem sourcePositionProducerLanguage_builds : True := by
  trivial

end SourcePositionProducerLanguage
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
