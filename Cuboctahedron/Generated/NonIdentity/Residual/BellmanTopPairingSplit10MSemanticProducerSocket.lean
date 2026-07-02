import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticTransducerSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke

/-!
Adapter from split-10M semantic producers to the current semantic socket.

The existing split-10M smoke already packages terminal classification,
graph-suffix production, and final-margin production into a semantic
transducer gate.  This module routes those producer premises through the
new `BellmanTopPairingSemanticTransducerSocket`, so later generated modules
have one current front door.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MSemanticProducerSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticTransducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

theorem split10MStrengthenedGate_of_producers_viaSemanticSocket
    {scaledMargin : Fin numPairWords -> Int}
    (terminal :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          TerminalOkTraceLabels (topPairingRankFaceLabels rank))
    (suffix :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MGraphSuffixProducer rank)
    (finish :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MFinalMarginProducer scaledMargin rank) :
    Split10MStrengthenedToEvalGate
      AcceptedSequenceBadFaceAtRank scaledMargin :=
  split10MStrengthenedGate_of_rankedInvariantLocalWithSuffix
    (sequenceBadFace := AcceptedSequenceBadFaceAtRank)
    (scaledMargin := scaledMargin)
    BranchInv
    (Split10MSemanticSuffixOk scaledMargin)
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke.start_inv
    (split10MSemanticSuffixOk_start terminal suffix finish)
    (split10MSemanticSuffixOk_local (scaledMargin := scaledMargin))
    (split10MSemanticSuffixOk_finish (scaledMargin := scaledMargin))

theorem scaledMargin_nonpos_of_split10MProducers_viaSemanticSocket
    {scaledMargin : Fin numPairWords -> Int}
    (terminal :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          TerminalOkTraceLabels (topPairingRankFaceLabels rank))
    (suffix :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MGraphSuffixProducer rank)
    (finish :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
          Split10MFinalMarginProducer scaledMargin rank)
    (rank : Fin numPairWords)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MStrengthenedToEvalGate
    (split10MStrengthenedGate_of_producers_viaSemanticSocket
      (scaledMargin := scaledMargin) terminal suffix finish)
    rank hstrengthened

theorem split10MSemanticProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MSemanticProducerSocket
