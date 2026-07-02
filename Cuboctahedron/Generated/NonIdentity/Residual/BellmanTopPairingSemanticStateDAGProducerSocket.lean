import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge

/-!
Semantic state-DAG producer socket for the split-10M top-pairing Bellman route.

This file fixes the theorem boundary for the next generated producer.  The
producer must prove semantic strengthened-language, terminal, graph-suffix, and
final-margin facts; this socket turns those facts into the existing
`Split10MGraphSuffixMarginFamily` and then into the Bellman nonpositive-margin
conclusion.

This is deliberately not a selected-prefix cover and it introduces no sampled
rank/path object.  It is a small public target for future generated
state-DAG/cancellation/cocycle family modules.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGProducerSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

/--
The semantic producer shape expected from the minimized state-DAG route.

A future generated module should prove this predicate from compact semantic
state/cursor data.  The fields are intentionally the same mathematical
obligations consumed by the split-10M bridge, but packaged as a named theorem
surface so broad coverage code does not expose graph traces, sampled ranks, or
exact affine data.
-/
structure StrengthenedSemanticStateDAGFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop where
  strengthened :
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym
  terminalOk :
    TerminalOkTraceLabels (topPairingRankFaceLabels rank)
  graphSuffix :
    Split10MGraphSuffixProducer rank
  finalMargin :
    Split10MFinalMarginProducer scaledMargin rank

theorem split10MGraphSuffixMarginFamily_of_semanticStateDAGFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : StrengthenedSemanticStateDAGFamily scaledMargin rank) :
    Split10MGraphSuffixMarginFamily scaledMargin rank := by
  exact ⟨hfamily.strengthened, hfamily.terminalOk, hfamily.graphSuffix,
    hfamily.finalMargin⟩

theorem evalLanguageAtRank_of_semanticStateDAGFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : StrengthenedSemanticStateDAGFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_split10MGraphSuffixMarginFamily
    (split10MGraphSuffixMarginFamily_of_semanticStateDAGFamily hfamily)

theorem scaledMargin_nonpos_of_semanticStateDAGFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hfamily : StrengthenedSemanticStateDAGFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MGraphSuffixMarginFamily
    (split10MGraphSuffixMarginFamily_of_semanticStateDAGFamily hfamily)

theorem semanticStateDAGProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGProducerSocket
