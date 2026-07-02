import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedDepth11ProducerBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge

/-!
Strengthened terminal-trace bridge to the depth-11 graph-state producer.

The graph-accepted depth-11 producer is intentionally trace-semantic: it
consumes `GraphAcceptedTraceLabels`, not sampled rank/path objects.  This
module composes that producer with the existing strengthened terminal-trace
classifier bridge, leaving the remaining production obligation explicit:
prove `TerminalTraceLabels (topPairingRankFaceLabels rank)` from the closed
top-pairing language by a deterministic semantic transducer.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedTerminalDepth11ProducerBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedDepth11ProducerBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge

theorem split10MDepth11GraphPathProducer_of_strengthenedTerminalTrace
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    Split10MDepth11GraphPathProducer rank :=
  split10MDepth11GraphPathProducer_of_graphAcceptedTraceLabels
    (graphAcceptedTraceLabels_of_strengthenedTerminalTrace
      hstrengthened hterm)

theorem split10MGraphSuffixProducer_of_strengthenedTerminalTrace
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)) :
    Split10MGraphSuffixProducer rank :=
  split10MGraphSuffixProducer_of_depth11GraphPathProducer
    (split10MDepth11GraphPathProducer_of_strengthenedTerminalTrace
      hstrengthened hterm)

def StrengthenedTerminalDepth11ProducerFamily
    (rank : Fin numPairWords) : Prop :=
  ∃ _ :
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym,
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank)

theorem split10MDepth11GraphPathProducer_of_family
    {rank : Fin numPairWords}
    (hfamily : StrengthenedTerminalDepth11ProducerFamily rank) :
    Split10MDepth11GraphPathProducer rank := by
  rcases hfamily with ⟨hstrengthened, hterm⟩
  exact
    split10MDepth11GraphPathProducer_of_strengthenedTerminalTrace
      hstrengthened hterm

theorem split10MGraphSuffixProducer_of_family
    {rank : Fin numPairWords}
    (hfamily : StrengthenedTerminalDepth11ProducerFamily rank) :
    Split10MGraphSuffixProducer rank :=
  split10MGraphSuffixProducer_of_depth11GraphPathProducer
    (split10MDepth11GraphPathProducer_of_family hfamily)

theorem strengthenedTerminalDepth11ProducerBridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedTerminalDepth11ProducerBridge
