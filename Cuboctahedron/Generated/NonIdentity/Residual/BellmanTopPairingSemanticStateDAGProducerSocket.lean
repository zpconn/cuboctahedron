import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke

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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke
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

/--
All-rank semantic producer shape for the minimized state-DAG route.

This is the theorem surface a generated coverage module should target: for
every rank in the strengthened closed top-pairing family, produce the four
semantic facts needed by `StrengthenedSemanticStateDAGFamily`.  The socket then
turns that into the deterministic transducer semantic gate without selected
prefixes, sampled paths, or exact affine keys.
-/
structure StrengthenedSemanticStateDAGAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  family :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
        StrengthenedSemanticStateDAGFamily scaledMargin rank

theorem strengthenedToEvalGate_of_semanticStateDAGAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : StrengthenedSemanticStateDAGAllFamily scaledMargin) :
    TopPairingStrengthenedToEvalGate
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin AcceptedSequenceBadFaceAtRank Face.ym :=
  strengthenedToEvalGate_of_split10MProducers
    (scaledMargin := scaledMargin)
    (terminal := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).terminalOk)
    (suffix := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).graphSuffix)
    (finish := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).finalMargin)

theorem scaledMargin_nonpos_of_semanticStateDAGAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : StrengthenedSemanticStateDAGAllFamily scaledMargin)
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
      (hfamily.family rank hstrengthened).graphSuffix)
    (finish := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).finalMargin)
    hstrengthened

theorem semanticStateDAGProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGProducerSocket
