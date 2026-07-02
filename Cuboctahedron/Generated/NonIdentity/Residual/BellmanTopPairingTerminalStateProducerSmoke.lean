import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket

/-!
Bounded terminal-state producer smoke for the top-pairing route.

This file instantiates the lightweight `TerminalStepStateProducer` socket on
one concrete terminal state reached by repeatedly applying
`TerminalStepState.nextStep`.  It is intentionally a smoke test, not a
production coverage theorem: the terminal trace proof below uses the bounded
accepted trace `t000`, while the exported bridge remains semantic in the rank
and state.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateStepSocket

def smokeStep0 : TerminalStepState :=
  TerminalStepState.initial

def smokeStep1 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep0 Face.xm

def smokeStep2 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep1 Face.ym

def smokeStep3 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep2 Face.tmpm

def smokeStep4 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep3 Face.tppm

def smokeStep5 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep4 Face.tpmm

def smokeStep6 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep5 Face.tppp

def smokeStep7 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep6 Face.tmmm

def smokeStep8 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep7 Face.tpmp

def smokeStep9 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep8 Face.tmmp

def smokeStep10 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep9 Face.tmpp

def smokeStep11 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep10 Face.yp

def smokeStep12 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep11 Face.zm

def smokeStep13 : TerminalStepState :=
  TerminalStepState.nextStep smokeStep12 Face.zp

theorem smokeStep13_prefix :
    smokeStep13.pfx =
      (acceptedTraceOfId AcceptedTraceId.t000).take 13 := by
  rfl

theorem smokeStep13_prefix_length :
    smokeStep13.pfx.length = 13 := by
  rfl

theorem smokeStep13_completed_trace :
    smokeStep13.pfx ++ [Face.xp] =
      acceptedTraceOfId AcceptedTraceId.t000 := by
  rfl

theorem smokeStep13_terminalTrace :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (smokeStep13.pfx ++ [Face.xp]) := by
  exact Or.inr
    (Or.inl
      (graphAcceptedTraceLabels_of_id
        AcceptedTraceId.t000
        smokeStep13_completed_trace))

def smokeStep13Producer : TerminalStepStateProducer smokeStep13 where
  prefix_length := smokeStep13_prefix_length
  terminalTrace := smokeStep13_terminalTrace

theorem terminalTraceLabels_of_smokeStep13Producer
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (hcontains : TerminalStepState.Contains smokeStep13 rank) :
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) :=
  terminalTraceLabels_of_terminalStepStateProducer
    hclosed hcontains smokeStep13Producer

theorem terminalStateProducerSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateProducerSmoke
