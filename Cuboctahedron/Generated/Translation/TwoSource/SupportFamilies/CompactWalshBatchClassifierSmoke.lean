import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
AP16DM compact-Walsh positive-survivor classifier adapter smoke.

AP16DL made each compact Walsh cover's rank-local good-mask predicate public.
This module checks that such a predicate can be consumed by the AP16J semantic
signature classifier surface without finite replay over masks that fail
`GoodDirectionAtRank`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

abbrev rank6000480GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000480Smoke.generatedGoodMaskMember mask

abbrev rank6000745GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000745Smoke.generatedGoodMaskMember mask

abbrev rank6000625GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000625Smoke.generatedGoodMaskMember mask

abbrev rank6000720GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000720Smoke.generatedGoodMaskMember mask

abbrev rank6000662GoodMaskMember (mask : SignMask) : Prop :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank6000662Smoke.generatedGoodMaskMember mask

/--
Build a singleton semantic signature classifier from compact Walsh good-mask
evidence plus abstract source/row facts.

The only membership premise discharged here is the GoodDirection-to-good-mask
direction.  Source-position and row-producer facts stay explicit because the
next generated layer should provide them from source/row language producers,
not by replaying mask cases.
-/
def classifierOfFactsAtRank
    (rank : Nat)
    (GoodMaskMember : SignMask -> Prop)
    (hgoodToMember :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask ->
          GoodMaskMember mask)
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate rank mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) rank mask) :
    PositiveSurvivorSignatureClassifierOnRange rank (rank + 1) :=
  PositiveSurvivorSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    rank
    BaseCandidate
    candidateOfMask
    GoodMaskMember
    Facts
    spec
    rowProducer
    key
    hfirst
    hsecond
    hsupport
    hgoodToMember
    hfacts
    hsource
    hrows

theorem allGoodCoverageOfFactsAtRank
    (rank : Nat)
    (GoodMaskMember : SignMask -> Prop)
    (hgoodToMember :
      forall {mask : SignMask} (hlt : rank < numPairWords),
        GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask ->
          GoodMaskMember mask)
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate rank mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) rank mask) :
    AllTranslationGoodCoverageOnRange rank (rank + 1) :=
  (classifierOfFactsAtRank
    rank GoodMaskMember hgoodToMember
    BaseCandidate candidateOfMask Facts spec rowProducer key
    hfirst hsecond hsupport hfacts hsource hrows).to_allGoodCoverage

def rank6000480ClassifierOfFacts
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        rank6000480GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate 6000480 mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) 6000480 mask) :
    PositiveSurvivorSignatureClassifierOnRange 6000480 (6000480 + 1) :=
  classifierOfFactsAtRank
    6000480 rank6000480GoodMaskMember
    (by
      intro mask hlt hgood
      exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke.rank6000480_goodMaskMember_of_GoodDirection hlt hgood)
    BaseCandidate candidateOfMask Facts spec rowProducer key
    hfirst hsecond hsupport hfacts hsource hrows

theorem rank6000480AllGoodCoverageOfFacts
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        rank6000480GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate 6000480 mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) 6000480 mask) :
    AllTranslationGoodCoverageOnRange 6000480 (6000480 + 1) :=
  (rank6000480ClassifierOfFacts
    BaseCandidate candidateOfMask Facts spec rowProducer key
    hfirst hsecond hsupport hfacts hsource hrows).to_allGoodCoverage

theorem rank6000745AllGoodCoverageOfFacts
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        rank6000745GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate 6000745 mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) 6000745 mask) :
    AllTranslationGoodCoverageOnRange 6000745 (6000745 + 1) :=
  allGoodCoverageOfFactsAtRank
    6000745 rank6000745GoodMaskMember
    (by
      intro mask hlt hgood
      exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke.rank6000745_goodMaskMember_of_GoodDirection hlt hgood)
    BaseCandidate candidateOfMask Facts spec rowProducer key
    hfirst hsecond hsupport hfacts hsource hrows

theorem rank6000625AllGoodCoverageOfFacts
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        rank6000625GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate 6000625 mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) 6000625 mask) :
    AllTranslationGoodCoverageOnRange 6000625 (6000625 + 1) :=
  allGoodCoverageOfFactsAtRank
    6000625 rank6000625GoodMaskMember
    (by
      intro mask hlt hgood
      exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke.rank6000625_goodMaskMember_of_GoodDirection hlt hgood)
    BaseCandidate candidateOfMask Facts spec rowProducer key
    hfirst hsecond hsupport hfacts hsource hrows

theorem rank6000720AllGoodCoverageOfFacts
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        rank6000720GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate 6000720 mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) 6000720 mask) :
    AllTranslationGoodCoverageOnRange 6000720 (6000720 + 1) :=
  allGoodCoverageOfFactsAtRank
    6000720 rank6000720GoodMaskMember
    (by
      intro mask hlt hgood
      exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke.rank6000720_goodMaskMember_of_GoodDirection hlt hgood)
    BaseCandidate candidateOfMask Facts spec rowProducer key
    hfirst hsecond hsupport hfacts hsource hrows

theorem rank6000662AllGoodCoverageOfFacts
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (Facts : SignMask -> Prop)
    (spec : BaseCandidate -> SourcePairPositionSpec)
    (rowProducer : BaseCandidate -> SourceIndexStateRowProducer)
    (key : BaseCandidate -> SourceIndexStateKey)
    (hfirst :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).firstIndex =
          (spec (candidateOfMask mask)).first.index)
    (hsecond :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).secondIndex =
          (spec (candidateOfMask mask)).second.index)
    (hsupport :
      forall {mask : SignMask},
        (key (candidateOfMask mask)).support =
          (spec (candidateOfMask mask)).support)
    (hfacts :
      forall {mask : SignMask},
        rank6000662GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate 6000662 mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) 6000662 mask) :
    AllTranslationGoodCoverageOnRange 6000662 (6000662 + 1) :=
  allGoodCoverageOfFactsAtRank
    6000662 rank6000662GoodMaskMember
    (by
      intro mask hlt hgood
      exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke.rank6000662_goodMaskMember_of_GoodDirection hlt hgood)
    BaseCandidate candidateOfMask Facts spec rowProducer key
    hfirst hsecond hsupport hfacts hsource hrows

theorem compactWalshBatchClassifierSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
