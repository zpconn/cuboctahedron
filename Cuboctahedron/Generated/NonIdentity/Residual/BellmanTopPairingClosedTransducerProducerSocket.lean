import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke

/-!
Production socket for the deterministic closed-language transducer pivot.

The Bellman route should not scale a selected-prefix or graph-accepted trace
cover.  Future generated family modules should prove the fields below directly
from strengthened top-pairing closed-language evidence: a semantic terminal
classifier, a depth-11 graph-path producer, and the final integer margin
producer.  This socket then feeds those facts into the existing ranked
transducer semantic gate.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedTransducerProducerSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

/--
The rank-local production obligation for the closed-language transducer route.

This is intentionally not a graph-accepted trace id and not a selected-prefix
cover.  A generated family may use bounded graph-state suffix tables internally,
but its public theorem should produce this package from semantic closed-language
facts.
-/
structure StrengthenedClosedTransducerProducer
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop where
  strengthened :
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym
  terminalOk :
    TerminalOkTraceLabels (topPairingRankFaceLabels rank)
  depth11GraphPath :
    Split10MDepth11GraphPathProducer rank
  finalMargin :
    Split10MFinalMarginProducer scaledMargin rank

theorem split10MGraphSuffixProducer_of_closedTransducerProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : StrengthenedClosedTransducerProducer scaledMargin rank) :
    Split10MGraphSuffixProducer rank :=
  split10MGraphSuffixProducer_of_depth11GraphPathProducer
    hproducer.depth11GraphPath

theorem evalLanguageAtRank_of_closedTransducerProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : StrengthenedClosedTransducerProducer scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_strengthenedTerminalFrontier
    hproducer.strengthened
    hproducer.terminalOk
    (split10MGraphSuffixProducer_of_closedTransducerProducer hproducer)
    hproducer.finalMargin

theorem scaledMargin_nonpos_of_closedTransducerProducer
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hproducer : StrengthenedClosedTransducerProducer scaledMargin rank) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphSuffixMarginFamily
    ⟨hproducer.strengthened, hproducer.terminalOk,
      split10MGraphSuffixProducer_of_closedTransducerProducer hproducer,
      hproducer.finalMargin⟩

/--
All-rank production obligation for a future generated semantic state-DAG.

This is the theorem shape the next generated module should target.  The
terminal and depth-11 fields must be proved from target-cursor / schedule /
pair-count / local-axis / tri-source semantics, not from the 37 accepted-trace
enumeration.
-/
structure StrengthenedClosedTransducerProducerAll
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
        StrengthenedClosedTransducerProducer scaledMargin rank

theorem strengthenedToEvalGate_of_closedTransducerProducerAll
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : StrengthenedClosedTransducerProducerAll scaledMargin) :
    TopPairingStrengthenedToEvalGate
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin AcceptedSequenceBadFaceAtRank Face.ym :=
  strengthenedToEvalGate_of_split10MProducers
    (scaledMargin := scaledMargin)
    (terminal := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).terminalOk)
    (suffix := fun rank hstrengthened =>
      split10MGraphSuffixProducer_of_closedTransducerProducer
        (hfamily.family rank hstrengthened))
    (finish := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).finalMargin)

theorem scaledMargin_nonpos_of_closedTransducerProducerAll
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : StrengthenedClosedTransducerProducerAll scaledMargin)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MProducers
    (scaledMargin := scaledMargin)
    (terminal := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).terminalOk)
    (suffix := fun rank hstrengthened =>
      split10MGraphSuffixProducer_of_closedTransducerProducer
        (hfamily.family rank hstrengthened))
    (finish := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).finalMargin)
    hstrengthened

theorem closedTransducerProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedTransducerProducerSocket
