import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage

/-!
AP.16J positive-survivor classifier surface.

AP.16I established the cheap theorem surface for a single positive
source-position/row candidate, but left the central premise explicit:
an identity-linear `GoodDirectionAtRank` survivor must belong to one positive
candidate.  This module packages that premise as a reusable classifier object.

The classifier is semantic and theorem-valued.  It does not contain raw
certificate arrays, does not enumerate masks that fail `GoodDirection`, and
erases immediately to the existing all-Good coverage target.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/--
A semantic classifier for identity-linear GoodDirection translation survivors
in a rank range.

Generated chunks should instantiate `Candidate` with a small private type
describing positive survivor signatures or source-position/row families.  The
`complete` field is the AP.16J obligation: every identity-linear
`GoodDirectionAtRank` survivor in the range maps to one candidate.
-/
structure PositiveSurvivorClassifierOnRange (lo hi : Nat) where
  Candidate : Type
  spec : Candidate -> SourcePairPositionSpec
  rowProducer : Candidate -> SourceIndexStateRowProducer
  key : Candidate -> SourceIndexStateKey
  Member : Candidate -> Nat -> SignMask -> Prop
  firstIndex :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (key candidate).firstIndex = (spec candidate).first.index
  secondIndex :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (key candidate).secondIndex = (spec candidate).second.index
  support :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (key candidate).support = (spec candidate).support
  source :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (spec candidate).Predicate rank mask
  rows :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (rowProducer candidate).Applies (key candidate) rank mask
  complete :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
              exists candidate : Candidate, Member candidate rank mask

def PositiveSurvivorClassifierOnRange.to_coverage
    {lo hi : Nat}
    (classifier : PositiveSurvivorClassifierOnRange lo hi) :
    SourcePositionRowProducerGoodCoverageOnRange lo hi := by
  intro rank mask hlt hlo hhi hM hgood
  rcases classifier.complete hlt hlo hhi hM hgood with
    ⟨candidate, hmember⟩
  exact ⟨classifier.spec candidate, classifier.rowProducer candidate,
    classifier.key candidate,
    ⟨classifier.firstIndex hmember,
      ⟨classifier.secondIndex hmember,
        ⟨classifier.support hmember,
          ⟨classifier.source hmember, classifier.rows hmember⟩⟩⟩⟩⟩

theorem PositiveSurvivorClassifierOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (classifier : PositiveSurvivorClassifierOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage
    classifier.to_coverage

theorem PositiveSurvivorClassifierOnRange.to_killedBridge_of_fullRange
    (classifier : PositiveSurvivorClassifierOnRange 0 numPairWords) :
    Cuboctahedron.Generated.Translation.KilledBridge :=
  SourcePositionRowProducerGoodCoverageOnRange.to_killedBridge_of_fullRange
    classifier.to_coverage

def PositiveSurvivorClassifierOnRange.empty
    {lo hi : Nat} (h : hi <= lo) :
    PositiveSurvivorClassifierOnRange lo hi where
  Candidate := Empty
  spec := by
    intro candidate
    cases candidate
  rowProducer := by
    intro candidate
    cases candidate
  key := by
    intro candidate
    cases candidate
  Member := fun candidate _ _ => nomatch candidate
  firstIndex := by
    intro candidate rank mask hmember
    cases candidate
  secondIndex := by
    intro candidate rank mask hmember
    cases candidate
  support := by
    intro candidate rank mask hmember
    cases candidate
  source := by
    intro candidate rank mask hmember
    cases candidate
  rows := by
    intro candidate rank mask hmember
    cases candidate
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact False.elim ((Nat.not_lt_of_ge h) (lt_of_le_of_lt hlo hhi))

def PositiveSurvivorClassifierOnRange.concat
    {lo mid hi : Nat}
    (left : PositiveSurvivorClassifierOnRange lo mid)
    (right : PositiveSurvivorClassifierOnRange mid hi) :
    PositiveSurvivorClassifierOnRange lo hi where
  Candidate := Sum left.Candidate right.Candidate
  spec
    | Sum.inl candidate => left.spec candidate
    | Sum.inr candidate => right.spec candidate
  rowProducer
    | Sum.inl candidate => left.rowProducer candidate
    | Sum.inr candidate => right.rowProducer candidate
  key
    | Sum.inl candidate => left.key candidate
    | Sum.inr candidate => right.key candidate
  Member
    | Sum.inl candidate, rank, mask => left.Member candidate rank mask
    | Sum.inr candidate, rank, mask => right.Member candidate rank mask
  firstIndex := by
    intro candidate rank mask hmember
    cases candidate with
    | inl candidate => exact left.firstIndex hmember
    | inr candidate => exact right.firstIndex hmember
  secondIndex := by
    intro candidate rank mask hmember
    cases candidate with
    | inl candidate => exact left.secondIndex hmember
    | inr candidate => exact right.secondIndex hmember
  support := by
    intro candidate rank mask hmember
    cases candidate with
    | inl candidate => exact left.support hmember
    | inr candidate => exact right.support hmember
  source := by
    intro candidate rank mask hmember
    cases candidate with
    | inl candidate => exact left.source hmember
    | inr candidate => exact right.source hmember
  rows := by
    intro candidate rank mask hmember
    cases candidate with
    | inl candidate => exact left.rows hmember
    | inr candidate => exact right.rows hmember
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    by_cases hmid : rank < mid
    · rcases left.complete hlt hlo hmid hM hgood with
        ⟨candidate, hmember⟩
      exact ⟨Sum.inl candidate, hmember⟩
    · rcases right.complete hlt (Nat.le_of_not_lt hmid) hhi hM hgood with
        ⟨candidate, hmember⟩
      exact ⟨Sum.inr candidate, hmember⟩

def PositiveSurvivorClassifierOnRange.of_singleCandidate
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
    PositiveSurvivorClassifierOnRange lo hi where
  Candidate := Unit
  spec := fun _ => spec
  rowProducer := fun _ => rowProducer
  key := fun _ => key
  Member := fun _ rank mask => candidate rank mask
  firstIndex := by
    intro candidate rank mask hmember
    exact hfirst
  secondIndex := by
    intro candidate rank mask hmember
    exact hsecond
  support := by
    intro candidate rank mask hmember
    exact hsupport
  source := by
    intro candidate rank mask hmember
    exact hsource hmember
  rows := by
    intro candidate rank mask hmember
    exact hrows hmember
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact ⟨(), hclass hlt hlo hhi hM hgood⟩

theorem positiveSurvivorClassifier_builds : True := by
  trivial

/--
Boolean AP.16K classifier surface.

This is the next generated target after AP.16J.  A Boolean classifier proves
membership from `goodDirectionAtRankBool = true`, and the generic theorem
`goodDirectionAtRankBool_eq_true_of_goodDirection` converts the semantic
`GoodDirectionAtRank` premise used by the final proof into that Boolean fact.

Generated files should prefer this surface when the positive-survivor catalog
can be checked by small Boolean membership tests.  It keeps the final theorem
semantic while making the generated membership proof more computable.
-/
structure PositiveSurvivorBoolClassifierOnRange (lo hi : Nat) where
  Candidate : Type
  spec : Candidate -> SourcePairPositionSpec
  rowProducer : Candidate -> SourceIndexStateRowProducer
  key : Candidate -> SourceIndexStateKey
  Member : Candidate -> Nat -> SignMask -> Prop
  firstIndex :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (key candidate).firstIndex = (spec candidate).first.index
  secondIndex :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (key candidate).secondIndex = (spec candidate).second.index
  support :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (key candidate).support = (spec candidate).support
  source :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (spec candidate).Predicate rank mask
  rows :
    forall {candidate : Candidate} {rank : Nat} {mask : SignMask},
      Member candidate rank mask ->
        (rowProducer candidate).Applies (key candidate) rank mask
  completeBool :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
              exists candidate : Candidate, Member candidate rank mask

def PositiveSurvivorBoolClassifierOnRange.to_classifier
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolClassifierOnRange lo hi) :
    PositiveSurvivorClassifierOnRange lo hi where
  Candidate := classifier.Candidate
  spec := classifier.spec
  rowProducer := classifier.rowProducer
  key := classifier.key
  Member := classifier.Member
  firstIndex := classifier.firstIndex
  secondIndex := classifier.secondIndex
  support := classifier.support
  source := classifier.source
  rows := classifier.rows
  complete := by
    intro rank mask hlt hlo hhi hM hgood
    exact classifier.completeBool hlt hlo hhi hM
      (goodDirectionAtRankBool_eq_true_of_goodDirection hgood)

theorem PositiveSurvivorBoolClassifierOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolClassifierOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  classifier.to_classifier.to_allGoodCoverage

def PositiveSurvivorBoolClassifierOnRange.to_coverage
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolClassifierOnRange lo hi) :
    SourcePositionRowProducerGoodCoverageOnRange lo hi :=
  classifier.to_classifier.to_coverage

theorem PositiveSurvivorBoolClassifierOnRange.to_killedBridge_of_fullRange
    (classifier : PositiveSurvivorBoolClassifierOnRange 0 numPairWords) :
    Cuboctahedron.Generated.Translation.KilledBridge :=
  SourcePositionRowProducerGoodCoverageOnRange.to_killedBridge_of_fullRange
    classifier.to_coverage

def PositiveSurvivorBoolClassifierOnRange.of_singleCandidate
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
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                candidate rank mask)
    (hsource :
      forall {rank : Nat} {mask : SignMask},
        candidate rank mask ->
          spec.Predicate rank mask)
    (hrows :
      forall {rank : Nat} {mask : SignMask},
        candidate rank mask ->
          rowProducer.Applies key rank mask) :
    PositiveSurvivorBoolClassifierOnRange lo hi where
  Candidate := Unit
  spec := fun _ => spec
  rowProducer := fun _ => rowProducer
  key := fun _ => key
  Member := fun _ rank mask => candidate rank mask
  firstIndex := by
    intro candidate rank mask hmember
    exact hfirst
  secondIndex := by
    intro candidate rank mask hmember
    exact hsecond
  support := by
    intro candidate rank mask hmember
    exact hsupport
  source := by
    intro candidate rank mask hmember
    exact hsource hmember
  rows := by
    intro candidate rank mask hmember
    exact hrows hmember
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
    exact ⟨(), hclass hlt hlo hhi hM hgoodBool⟩

/-!
AP.16K signature classifier surface.

The AP.16J Boolean classifier still allowed generated files to discharge one
large premise directly:

```
goodDirectionAtRankBool r mask = true -> candidate r mask
```

The signature surface below factors that premise into the intended production
shape.  A generated chunk first assigns a rank to a compact positive-survivor
signature, then proves that a Boolean GoodDirection mask is one of the positive
masks for that signature.  Source-position and row facts are attached to the
signature/mask pair.  The generic adapter erases the signature to the existing
Boolean classifier without mentioning masks that fail GoodDirection.
-/
structure PositiveSurvivorBoolSignatureClassifierOnRange (lo hi : Nat) where
  Signature : Type
  BaseCandidate : Type
  spec : BaseCandidate -> SourcePairPositionSpec
  rowProducer : BaseCandidate -> SourceIndexStateRowProducer
  key : BaseCandidate -> SourceIndexStateKey
  candidateOf : Signature -> SignMask -> BaseCandidate
  RankMember : Signature -> Nat -> Prop
  GoodMaskMember : Signature -> SignMask -> Prop
  firstIndex :
    forall (signature : Signature) (mask : SignMask),
      (key (candidateOf signature mask)).firstIndex =
        (spec (candidateOf signature mask)).first.index
  secondIndex :
    forall (signature : Signature) (mask : SignMask),
      (key (candidateOf signature mask)).secondIndex =
        (spec (candidateOf signature mask)).second.index
  support :
    forall (signature : Signature) (mask : SignMask),
      (key (candidateOf signature mask)).support =
        (spec (candidateOf signature mask)).support
  source :
    forall {signature : Signature} {rank : Nat} {mask : SignMask},
      RankMember signature rank ->
        GoodMaskMember signature mask ->
          (spec (candidateOf signature mask)).Predicate rank mask
  rows :
    forall {signature : Signature} {rank : Nat} {mask : SignMask},
      RankMember signature rank ->
        GoodMaskMember signature mask ->
          (rowProducer (candidateOf signature mask)).Applies
            (key (candidateOf signature mask)) rank mask
  completeBool :
    forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
      lo <= rank ->
        rank < hi ->
          totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
              (matId : Mat3 Rat) ->
            goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
              exists signature : Signature,
                RankMember signature rank /\ GoodMaskMember signature mask

def PositiveSurvivorBoolSignatureClassifierOnRange.to_boolClassifier
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolSignatureClassifierOnRange lo hi) :
    PositiveSurvivorBoolClassifierOnRange lo hi where
  Candidate := classifier.Signature × SignMask
  spec := fun candidate => classifier.spec
    (classifier.candidateOf candidate.1 candidate.2)
  rowProducer := fun candidate => classifier.rowProducer
    (classifier.candidateOf candidate.1 candidate.2)
  key := fun candidate => classifier.key
    (classifier.candidateOf candidate.1 candidate.2)
  Member := fun candidate rank mask =>
    classifier.RankMember candidate.1 rank /\
      candidate.2 = mask /\
        classifier.GoodMaskMember candidate.1 mask
  firstIndex := by
    intro candidate rank mask hmember
    exact classifier.firstIndex candidate.1 candidate.2
  secondIndex := by
    intro candidate rank mask hmember
    exact classifier.secondIndex candidate.1 candidate.2
  support := by
    intro candidate rank mask hmember
    exact classifier.support candidate.1 candidate.2
  source := by
    intro candidate rank mask hmember
    rcases hmember with ⟨hrank, hmaskEq, hmask⟩
    simpa [hmaskEq] using classifier.source hrank hmask
  rows := by
    intro candidate rank mask hmember
    rcases hmember with ⟨hrank, hmaskEq, hmask⟩
    simpa [hmaskEq] using classifier.rows hrank hmask
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
    rcases classifier.completeBool hlt hlo hhi hM hgoodBool with
      ⟨signature, hrank, hmask⟩
    exact ⟨(signature, mask), hrank, rfl, hmask⟩

theorem PositiveSurvivorBoolSignatureClassifierOnRange.to_allGoodCoverage
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolSignatureClassifierOnRange lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  classifier.to_boolClassifier.to_allGoodCoverage

def PositiveSurvivorBoolSignatureClassifierOnRange.to_coverage
    {lo hi : Nat}
    (classifier : PositiveSurvivorBoolSignatureClassifierOnRange lo hi) :
    SourcePositionRowProducerGoodCoverageOnRange lo hi :=
  classifier.to_boolClassifier.to_coverage

theorem PositiveSurvivorBoolSignatureClassifierOnRange.to_killedBridge_of_fullRange
    (classifier : PositiveSurvivorBoolSignatureClassifierOnRange 0 numPairWords) :
    Cuboctahedron.Generated.Translation.KilledBridge :=
  SourcePositionRowProducerGoodCoverageOnRange.to_killedBridge_of_fullRange
    classifier.to_coverage

def PositiveSurvivorBoolSignatureClassifierOnRange.of_singleSignatureCandidate
    {lo hi : Nat}
    (Signature : Type)
    (RankMember : Signature -> Nat -> Prop)
    (GoodMaskMember : Signature -> SignMask -> Prop)
    (spec : SourcePairPositionSpec)
    (rowProducer : SourceIndexStateRowProducer)
    (key : SourceIndexStateKey)
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        lo <= rank ->
          rank < hi ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists signature : Signature,
                  RankMember signature rank /\ GoodMaskMember signature mask)
    (hsource :
      forall {signature : Signature} {rank : Nat} {mask : SignMask},
        RankMember signature rank ->
          GoodMaskMember signature mask ->
            spec.Predicate rank mask)
    (hrows :
      forall {signature : Signature} {rank : Nat} {mask : SignMask},
        RankMember signature rank ->
          GoodMaskMember signature mask ->
            rowProducer.Applies key rank mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange lo hi where
  Signature := Signature
  BaseCandidate := Unit
  spec := fun _ => spec
  rowProducer := fun _ => rowProducer
  key := fun _ => key
  candidateOf := fun _ _ => ()
  RankMember := RankMember
  GoodMaskMember := GoodMaskMember
  firstIndex := by
    intro signature mask
    exact hfirst
  secondIndex := by
    intro signature mask
    exact hsecond
  support := by
    intro signature mask
    exact hsupport
  source := by
    intro signature rank mask hrank hmask
    exact hsource hrank hmask
  rows := by
    intro signature rank mask hrank hmask
    exact hrows hrank hmask
  completeBool := hcomplete

/--
Singleton-range AP.16L constructor for a single positive survivor signature.

This is the first proof-producing step after the AP.16K API.  It proves the
classifier's `completeBool` field from:

* the fact that the queried rank lies in `[anchor, anchor+1)`, hence is the
  anchor rank; and
* a compact signature-local theorem saying that Boolean GoodDirection at the
  anchor rank implies membership in the signature's positive mask set.

Generated chunks still have to prove the signature-local mask theorem and the
source/row facts, but they no longer assume the whole Boolean classifier.
-/
def PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignature
    (anchor : Nat)
    (GoodMaskMember : SignMask -> Prop)
    (spec : SourcePairPositionSpec)
    (rowProducer : SourceIndexStateRowProducer)
    (key : SourceIndexStateKey)
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (hmask :
      forall {mask : SignMask} (hlt : anchor < numPairWords),
        goodDirectionAtRankBool ⟨anchor, hlt⟩ mask = true ->
          GoodMaskMember mask)
    (hsource :
      forall {rank : Nat} {mask : SignMask},
        rank = anchor ->
          GoodMaskMember mask ->
            spec.Predicate rank mask)
    (hrows :
      forall {rank : Nat} {mask : SignMask},
        rank = anchor ->
          GoodMaskMember mask ->
            rowProducer.Applies key rank mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange anchor (anchor + 1) where
  Signature := Unit
  BaseCandidate := Unit
  spec := fun _ => spec
  rowProducer := fun _ => rowProducer
  key := fun _ => key
  candidateOf := fun _ _ => ()
  RankMember := fun _ rank => rank = anchor
  GoodMaskMember := fun _ mask => GoodMaskMember mask
  firstIndex := by
    intro signature mask
    exact hfirst
  secondIndex := by
    intro signature mask
    exact hsecond
  support := by
    intro signature mask
    exact hsupport
  source := by
    intro signature rank mask hrank hgoodMask
    exact hsource hrank hgoodMask
  rows := by
    intro signature rank mask hrank hgoodMask
    exact hrows hrank hgoodMask
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
    have hleAnchor : rank <= anchor := Nat.le_of_lt_succ hhi
    have hrank : rank = anchor := Nat.le_antisymm hleAnchor hlo
    subst hrank
    exact ⟨(), rfl, hmask hlt hgoodBool⟩

/--
Fact-carrying singleton signature constructor.

This AP.16M-facing variant lets the generated membership predicate carry the
source-position and row-producer facts directly.  The classifier then projects
those facts instead of taking separate `hsource`/`hrows` premises.  The only
remaining generated proof obligation is a compact theorem from Boolean
GoodDirection at the anchor rank to this fact-carrying membership predicate.
-/
def PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureFacts
    (anchor : Nat)
    (Membership : SignMask -> Prop)
    (spec : SourcePairPositionSpec)
    (rowProducer : SourceIndexStateRowProducer)
    (key : SourceIndexStateKey)
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (hmask :
      forall {mask : SignMask} (hlt : anchor < numPairWords),
        goodDirectionAtRankBool ⟨anchor, hlt⟩ mask = true ->
          Membership mask)
    (hsource :
      forall {mask : SignMask},
        Membership mask ->
          spec.Predicate anchor mask)
    (hrows :
      forall {mask : SignMask},
        Membership mask ->
          rowProducer.Applies key anchor mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange anchor (anchor + 1) :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignature
    anchor Membership spec rowProducer key hfirst hsecond hsupport
    hmask
    (by
      intro rank mask hrank hmem
      subst hrank
      exact hsource hmem)
    (by
      intro rank mask hrank hmem
      subst hrank
      exact hrows hmem)

/--
AP.16O-facing singleton constructor splitting mask soundness from
theorem-valued source/row facts.

`GoodMaskMember` is the compact positive-mask predicate.  `Facts` is a
theorem-valued predicate carrying source-position and row-producer facts for
positive masks.  Generated chunks should prove:

* `hmask`: Boolean GoodDirection implies `GoodMaskMember`;
* `hfacts`: positive-mask membership implies the source/row `Facts`.

This keeps exact mask soundness independent from source/row proof production.
-/
def PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureFactSplit
    (anchor : Nat)
    (GoodMaskMember Facts : SignMask -> Prop)
    (spec : SourcePairPositionSpec)
    (rowProducer : SourceIndexStateRowProducer)
    (key : SourceIndexStateKey)
    (hfirst : key.firstIndex = spec.first.index)
    (hsecond : key.secondIndex = spec.second.index)
    (hsupport : key.support = spec.support)
    (hmask :
      forall {mask : SignMask} (hlt : anchor < numPairWords),
        goodDirectionAtRankBool ⟨anchor, hlt⟩ mask = true ->
          GoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          spec.Predicate anchor mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          rowProducer.Applies key anchor mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange anchor (anchor + 1) :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignature
    anchor GoodMaskMember spec rowProducer key hfirst hsecond hsupport
    hmask
    (by
      intro rank mask hrank hgoodMask
      subst hrank
      exact hsource (hfacts hgoodMask))
    (by
      intro rank mask hrank hgoodMask
      subst hrank
      exact hrows (hfacts hgoodMask))

/--
AP.16Q-facing singleton constructor for one positive-survivor signature whose
good masks may route to different source/row candidates.

The earlier singleton constructors are useful when every positive mask in the
signature uses the same candidate.  The profiler data shows that real
signatures often use several candidates, so generated chunks should supply a
`candidateOfMask` function and then prove source/row facts for the selected
candidate.  The final theorem surface still has a single `GoodDirection`
premise and never mentions masks that fail GoodDirection.
-/
def PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    (anchor : Nat)
    (BaseCandidate : Type)
    (candidateOfMask : SignMask -> BaseCandidate)
    (GoodMaskMember Facts : SignMask -> Prop)
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
    (hmask :
      forall {mask : SignMask} (hlt : anchor < numPairWords),
        goodDirectionAtRankBool ⟨anchor, hlt⟩ mask = true ->
          GoodMaskMember mask)
    (hfacts :
      forall {mask : SignMask},
        GoodMaskMember mask ->
          Facts mask)
    (hsource :
      forall {mask : SignMask},
        Facts mask ->
          (spec (candidateOfMask mask)).Predicate anchor mask)
    (hrows :
      forall {mask : SignMask},
        Facts mask ->
          (rowProducer (candidateOfMask mask)).Applies
            (key (candidateOfMask mask)) anchor mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange anchor (anchor + 1) where
  Signature := Unit
  BaseCandidate := BaseCandidate
  spec := spec
  rowProducer := rowProducer
  key := key
  candidateOf := fun _ mask => candidateOfMask mask
  RankMember := fun _ rank => rank = anchor
  GoodMaskMember := fun _ mask => GoodMaskMember mask
  firstIndex := by
    intro signature mask
    exact hfirst
  secondIndex := by
    intro signature mask
    exact hsecond
  support := by
    intro signature mask
    exact hsupport
  source := by
    intro signature rank mask hrank hgoodMask
    subst hrank
    exact hsource (hfacts hgoodMask)
  rows := by
    intro signature rank mask hrank hgoodMask
    subst hrank
    exact hrows (hfacts hgoodMask)
  completeBool := by
    intro rank mask hlt hlo hhi hM hgoodBool
    have hleAnchor : rank <= anchor := Nat.le_of_lt_succ hhi
    have hrank : rank = anchor := Nat.le_antisymm hleAnchor hlo
    subst hrank
    exact ⟨(), rfl, hmask hlt hgoodBool⟩

end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
