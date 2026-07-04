import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MSemanticProducerSocket

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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MSemanticProducerSocket
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

/--
Generic adapter from a class-specific strengthened sequence/bad-face predicate
to the standard semantic state-DAG family package.

Generated class providers should use this theorem when their public predicate
is a semantic bundle of the four facts consumed by the split-10M evaluator:
accepted bad-face, terminal classification, graph suffix, and final margin.
This keeps the class emitters from duplicating the same strengthened-language
unpacking proof and keeps the production surface free of sampled ranks,
selected prefixes, accepted trace ids, and exact affine keys.
-/
theorem semanticStateDAGFamily_of_strengthenedSequenceBadFace
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hextract :
      sequenceBadFace rank Face.ym ->
        AcceptedSequenceBadFaceAtRank rank Face.ym ∧
          TerminalOkTraceLabels (topPairingRankFaceLabels rank) ∧
            Split10MGraphSuffixProducer rank ∧
              Split10MFinalMarginProducer scaledMargin rank)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    StrengthenedSemanticStateDAGFamily scaledMargin rank := by
  rcases hextract hstrengthened.sequenceBadFace_ok with
    ⟨hbad, hterminal, hsuffix, hfinal⟩
  exact
    { strengthened :=
        TopPairingStrengthenedClosedLanguageAtRank.ofComponents
          hstrengthened.closed hstrengthened.actualFaceOmni hbad
      terminalOk := hterminal
      graphSuffix := hsuffix
      finalMargin := hfinal }

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

/--
All-rank version of
`semanticStateDAGFamily_of_strengthenedSequenceBadFace`.

This is the intended shared combinator for generated semantic class emitters:
prove a class-specific strengthened predicate from the base accepted predicate,
then provide a small extractor from that predicate to the four evaluator facts.
-/
theorem semanticStateDAGAllFamily_of_strengthenedSequenceBadFace
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hclass :
      ∀ rank,
        TopPairingStrengthenedClosedLanguageAtRank
          AcceptedSequenceBadFaceAtRank rank Face.ym ->
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank Face.ym)
    (hextract :
      ∀ {rank : Fin numPairWords},
        sequenceBadFace rank Face.ym ->
          AcceptedSequenceBadFaceAtRank rank Face.ym ∧
            TerminalOkTraceLabels (topPairingRankFaceLabels rank) ∧
              Split10MGraphSuffixProducer rank ∧
                Split10MFinalMarginProducer scaledMargin rank) :
    StrengthenedSemanticStateDAGAllFamily scaledMargin where
  family := by
    intro rank hstrengthened
    exact semanticStateDAGFamily_of_strengthenedSequenceBadFace
      (scaledMargin := scaledMargin)
      (hextract := hextract)
      (hclass rank hstrengthened)

theorem strengthenedToEvalGate_of_semanticStateDAGAllFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : StrengthenedSemanticStateDAGAllFamily scaledMargin) :
    TopPairingStrengthenedToEvalGate
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin AcceptedSequenceBadFaceAtRank Face.ym :=
  split10MStrengthenedGate_of_producers_viaSemanticSocket
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
  scaledMargin_nonpos_of_split10MProducers_viaSemanticSocket
    (scaledMargin := scaledMargin)
    (terminal := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).terminalOk)
    (suffix := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).graphSuffix)
    (finish := fun rank hstrengthened =>
      (hfamily.family rank hstrengthened).finalMargin)
    rank
    hstrengthened

theorem semanticStateDAGProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGProducerSocket
