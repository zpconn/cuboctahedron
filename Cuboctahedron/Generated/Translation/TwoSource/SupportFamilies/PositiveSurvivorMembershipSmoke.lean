import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage

/-!
Positive-survivor membership smoke for AP.16I.

AP.16H failed because a singleton rank proof still discharged every
non-GoodDirection mask by generated denominator witnesses.  This smoke checks
the replacement theorem surface: generated chunks should assume/prove
membership only for an arbitrary `GoodDirectionAtRank` survivor, then erase the
source-position plus row-producer candidate directly to all-Good coverage.

There is no finite `mask` split here and no bad-direction evidence.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

theorem allGoodCoverage_of_positiveSingleCandidate
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
    AllTranslationGoodCoverageOnRange lo hi :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    (SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate
      spec rowProducer key hfirst hsecond hsupport hsource hrows)

/--
Classifier-shaped variant of `allGoodCoverage_of_positiveSingleCandidate`.

This is the production-facing AP.16I surface.  A generated chunk should first
prove that every identity-linear GoodDirection survivor in the range belongs
to a semantic positive-survivor candidate predicate, then prove source and row
facts from that predicate.  This keeps bad-direction masks out of the generated
evidence path.
-/
theorem allGoodCoverage_of_positiveSingleCandidateClassifier
    {lo hi : Nat}
    (candidate : Nat -> SignMask -> Prop)
    (spec : SourcePairPositionSpec)
    (rowProducer : SourceIndexStateRowProducer)
    (key : SourceIndexStateKey)
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                candidate rank mask)
    (hsource :
      forall {rank : Nat} {mask : SignMask},
        candidate rank mask ->
          spec.Predicate rank mask)
    (hrows :
      forall {rank : Nat} {mask : SignMask},
        candidate rank mask ->
          rowProducer.Applies key rank mask) :
    AllTranslationGoodCoverageOnRange lo hi :=
  allGoodCoverage_of_positiveSingleCandidate
    spec rowProducer key hfirst hsecond hsupport
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact hsource (hclass hlt hlo hhi hM hgood))
    (by
      intro rank mask hlt hlo hhi hM hgood
      exact hrows (hclass hlt hlo hhi hM hgood))

private def sampleSpec : SourcePairPositionSpec where
  first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
  second := SourcePositionSpec.xpStart ⟨0, by decide⟩

private def sampleKey : SourceIndexStateKey where
  firstIndex := sampleSpec.first.index
  secondIndex := sampleSpec.second.index
  support := sampleSpec.support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def sampleRowProducer : SourceIndexStateRowProducer where
  Applies := fun key rank mask =>
    key = sampleKey /\
      key.template.Rows key.support rank mask
  rowFacts := by
    intro key rank mask h
    exact SourceIndexStateRowFacts.of_rows h.2

/--
Nonempty-range surface for the rank selected by the rejected AP.16H smoke.

The hypotheses are exactly the positive-membership facts that a generated
AP.16I chunk must prove from semantic source-language/signature data.  The
theorem itself does not enumerate masks and does not mention masks that fail
GoodDirection.
-/
theorem sampleSingletonAllGoodCoverage
    (hsource :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        101105 <= rank ->
          rank < 101106 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                sampleSpec.Predicate rank mask)
    (hrows :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        101105 <= rank ->
          rank < 101106 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                sampleRowProducer.Applies sampleKey rank mask) :
    AllTranslationGoodCoverageOnRange 101105 101106 :=
  allGoodCoverage_of_positiveSingleCandidate
    sampleSpec sampleRowProducer sampleKey rfl rfl rfl hsource hrows

theorem positiveSurvivorMembershipSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke
