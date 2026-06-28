import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated positive-survivor classifier smoke for AP.16J.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json` and
contains one representative positive source-position/row candidate group.
It checks the classifier object/erasure surface and does not enumerate masks
that fail GoodDirection.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifierGeneratedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

private def generatedSpec : SourcePairPositionSpec where
  first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
  second := SourcePositionSpec.xpStart ⟨0, by decide⟩

private def generatedKey : SourceIndexStateKey where
  firstIndex := generatedSpec.first.index
  secondIndex := generatedSpec.second.index
  support := generatedSpec.support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def generatedRowProducer : SourceIndexStateRowProducer where
  Applies := fun key rank mask =>
    key = generatedKey /\
      key.template.Rows key.support rank mask
  rowFacts := by
    intro key rank mask h
    exact SourceIndexStateRowFacts.of_rows h.2

private def generatedCandidate (rank : Nat) (mask : SignMask) : Prop :=
  generatedSpec.Predicate rank mask /\
    generatedRowProducer.Applies generatedKey rank mask

private def generatedSignatureRank (_signature : Unit) (_rank : Nat) : Prop :=
  True

private def generatedSignatureGoodMask (_signature : Unit) (_mask : SignMask) : Prop :=
  True

private def generatedClassifier
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    PositiveSurvivorClassifierOnRange 0 5000 :=
  PositiveSurvivorClassifierOnRange.of_singleCandidate
    generatedCandidate generatedSpec generatedRowProducer generatedKey
    rfl rfl rfl hclass
    (by
      intro rank mask h
      exact h.1)
    (by
      intro rank mask h
      exact h.2)

private def generatedBoolClassifier
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                generatedCandidate rank mask) :
    PositiveSurvivorBoolClassifierOnRange 0 5000 :=
  PositiveSurvivorBoolClassifierOnRange.of_singleCandidate
    generatedCandidate generatedSpec generatedRowProducer generatedKey
    rfl rfl rfl hclass
    (by
      intro rank mask h
      exact h.1)
    (by
      intro rank mask h
      exact h.2)

private def generatedSignatureBoolClassifier
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists signature : Unit,
                  generatedSignatureRank signature rank /\
                    generatedSignatureGoodMask signature mask)
    (hsource :
      forall {signature : Unit} {rank : Nat} {mask : SignMask},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedSpec.Predicate rank mask)
    (hrows :
      forall {signature : Unit} {rank : Nat} {mask : SignMask},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedRowProducer.Applies generatedKey rank mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 0 5000 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleSignatureCandidate
    Unit generatedSignatureRank generatedSignatureGoodMask
    generatedSpec generatedRowProducer generatedKey
    rfl rfl rfl hcomplete hsource hrows

/--
Representative generated AP.16J theorem for candidate group `ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac`.

Observed bounded cases in the AP.16I profile: `1316`.
This is a theorem-surface smoke only; future production chunks must prove
the `hclass` classifier from semantic positive-survivor signatures.
-/
theorem generatedClassifierAllGoodCoverage
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedCandidate rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  (generatedClassifier hclass).to_allGoodCoverage

/--
Boolean-classifier variant for the same representative group.

This is closer to the AP.16K production target: generated chunks may prove the
classifier from a compact Boolean positive-survivor signature, while this
generic surface converts semantic `GoodDirectionAtRank` to
`goodDirectionAtRankBool = true`.
-/
theorem generatedBoolClassifierAllGoodCoverage
    (hclass :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                generatedCandidate rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  (generatedBoolClassifier hclass).to_allGoodCoverage

/-!
AP.16K signature-classifier smoke.

The premises below are still diagnostic, but they are now the intended compact
production obligations:

* `hcomplete` assigns every Boolean GoodDirection survivor in this bounded range
  to a positive-survivor signature;
* `hsource` and `hrows` turn that signature/mask membership into semantic
  source-position and row-producer facts.

This is deliberately different from a direct `hclass` premise and does not
branch over masks that fail GoodDirection.
-/
theorem generatedSignatureBoolClassifierAllGoodCoverage
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists signature : Unit,
                  generatedSignatureRank signature rank /\
                    generatedSignatureGoodMask signature mask)
    (hsource :
      forall {signature : Unit} {rank : Nat} {mask : SignMask},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedSpec.Predicate rank mask)
    (hrows :
      forall {signature : Unit} {rank : Nat} {mask : SignMask},
        generatedSignatureRank signature rank ->
          generatedSignatureGoodMask signature mask ->
            generatedRowProducer.Applies generatedKey rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  (generatedSignatureBoolClassifier hcomplete hsource hrows).to_allGoodCoverage

theorem generatedPositiveSurvivorClassifierSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifierGeneratedSmoke
