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

/--
Build a singleton semantic signature classifier for the AP16DJ rank-6000480
fixture from compact Walsh good-mask evidence plus abstract source/row facts.

The only membership premise discharged here is the GoodDirection-to-good-mask
direction.  Source-position and row-producer facts stay explicit because the
next generated layer should provide them from source/row language producers,
not by replaying mask cases.
-/
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
  PositiveSurvivorSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    6000480
    BaseCandidate
    candidateOfMask
    rank6000480GoodMaskMember
    Facts
    spec
    rowProducer
    key
    hfirst
    hsecond
    hsupport
    (by
      intro mask hlt hgood
      exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke.rank6000480_goodMaskMember_of_GoodDirection hlt hgood)
    hfacts
    hsource
    hrows

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

theorem compactWalshBatchClassifierSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke
