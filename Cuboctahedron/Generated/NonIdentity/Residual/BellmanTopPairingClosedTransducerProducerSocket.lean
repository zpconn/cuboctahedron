import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSplit10MTransducerSemanticGateSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket

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
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePartialMachineEvalSocket
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

theorem closedTransducerProducer_of_terminalStepState
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {state : TerminalStepState}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hcontains : TerminalStepState.Contains state rank)
    (hterminal : TerminalStepStateProducer state)
    (hdepth11 : Split10MDepth11GraphPathProducer rank)
    (hfinal : Split10MFinalMarginProducer scaledMargin rank) :
    StrengthenedClosedTransducerProducer scaledMargin rank where
  strengthened := hstrengthened
  terminalOk :=
    TopPairingTraceClassifier.TerminalOk.terminalOk_of_terminalTrace_and_cancellation
      (TopPairingClosedLanguageAtRank.cancellationLabels hstrengthened.closed)
      (terminalTraceLabels_of_terminalStepStateProducer
        hstrengthened.closed hcontains hterminal)
  depth11GraphPath := hdepth11
  finalMargin := hfinal

theorem closedTransducerProducer_of_terminalEvalPrefixGate
    {StateId : Type}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {machine : TerminalStepStatePartialMachine StateId}
    {start : StateId}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hstart :
      machine.stateOf start = TerminalStepState.initial)
    (hterminal : TerminalEvalPrefixGate machine start rank)
    (hdepth11 : Split10MDepth11GraphPathProducer rank)
    (hfinal : Split10MFinalMarginProducer scaledMargin rank) :
    StrengthenedClosedTransducerProducer scaledMargin rank where
  strengthened := hstrengthened
  terminalOk :=
    TopPairingTraceClassifier.TerminalOk.terminalOk_of_terminalTrace_and_cancellation
      (TopPairingClosedLanguageAtRank.cancellationLabels hstrengthened.closed)
      (terminalTraceLabels_of_evalPrefixGate_from_initial
        machine hstrengthened.closed hstart hterminal)
  depth11GraphPath := hdepth11
  finalMargin := hfinal

theorem closedTransducerProducer_of_terminalContainedEvalPrefixGate
    {StateId : Type}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {machine : TerminalStepStatePartialMachine StateId}
    {start : StateId}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hstart :
      machine.stateOf start = TerminalStepState.initial)
    (hterminal : TerminalContainedEvalPrefixGate machine start rank)
    (hdepth11 : Split10MDepth11GraphPathProducer rank)
    (hfinal : Split10MFinalMarginProducer scaledMargin rank) :
    StrengthenedClosedTransducerProducer scaledMargin rank :=
  closedTransducerProducer_of_terminalEvalPrefixGate
    hstrengthened
    hstart
    (terminalEvalPrefixGate_of_containedEvalPrefixGate_from_initial
      machine hstart hterminal)
    hdepth11
    hfinal

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

/--
Machine-shaped all-rank production obligation for the deterministic semantic
transducer route.

This is the preferred next target for generated family modules.  Instead of
producing `TerminalOkTraceLabels` directly, the family proves that the closed
rank drives a checked terminal partial machine from its initial state to a
contained terminal prefix.  The generic socket then derives terminal trace
soundness and feeds the same depth-11 graph-path / final-margin producers into
the closed transducer theorem.
-/
structure StrengthenedClosedTransducerMachineProducerAll
    {StateId : Type}
    (scaledMargin : Fin numPairWords -> Int)
    (machine : TerminalStepStatePartialMachine StateId)
    (start : StateId) : Prop where
  start_initial :
    machine.stateOf start = TerminalStepState.initial
  terminal :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      TerminalContainedEvalPrefixGate machine start rank
  depth11GraphPath :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Split10MDepth11GraphPathProducer rank
  finalMargin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Split10MFinalMarginProducer scaledMargin rank

theorem closedTransducerProducerAll_of_machineProducerAll
    {StateId : Type}
    {scaledMargin : Fin numPairWords -> Int}
    {machine : TerminalStepStatePartialMachine StateId}
    {start : StateId}
    (hfamily :
      StrengthenedClosedTransducerMachineProducerAll
        scaledMargin machine start) :
    StrengthenedClosedTransducerProducerAll scaledMargin where
  family := by
    intro rank hstrengthened
    exact closedTransducerProducer_of_terminalContainedEvalPrefixGate
      hstrengthened
      hfamily.start_initial
      (hfamily.terminal rank hstrengthened)
      (hfamily.depth11GraphPath rank hstrengthened)
      (hfamily.finalMargin rank hstrengthened)

theorem scaledMargin_nonpos_of_machineProducerAll
    {StateId : Type}
    {scaledMargin : Fin numPairWords -> Int}
    {machine : TerminalStepStatePartialMachine StateId}
    {start : StateId}
    (hfamily :
      StrengthenedClosedTransducerMachineProducerAll
        scaledMargin machine start)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedTransducerProducerAll
    (closedTransducerProducerAll_of_machineProducerAll hfamily)
    hstrengthened

theorem closedTransducerProducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedTransducerProducerSocket
