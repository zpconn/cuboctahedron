import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge

/-!
Bounds-based terminal-accepted Bellman socket.

`BellmanTopPairingTerminalAcceptedBridge` already exposes a strengthened
language whose sequence/bad-face predicate carries a fully packaged
`GraphAcceptedTraceMargin`.  The production classifier should be able to stop
one step earlier: terminal trace membership plus conditional margin bounds for
the accepted trace are enough to construct that package.

This module provides that adapter and the corresponding rank-level nonpositive
margin consequence.  It is still semantic: the object is the closed rank, not a
sampled path or sampled rank index.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge

def TerminalTraceMarginBoundsSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
      rank badFace /\
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) /\
      ∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,
        GraphAcceptedTraceMarginBounds scaledMargin
          ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)

def TerminalTraceMarginIdBoundSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
      rank badFace /\
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank) /\
      ∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,
        GraphAcceptedTraceMarginIdBound scaledMargin
          ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)

def TraceIdMarginSequenceBadFace
    (traceId : AcceptedTraceId)
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym /\
    topPairingRankFaceLabels rank = acceptedTraceOfId traceId /\
    scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId

theorem terminalAcceptedEvalSequenceBadFace_of_bounds
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (homni : TopPairingActualFaceOmniAtRank rank)
    (hbounds :
      TerminalTraceMarginBoundsSequenceBadFace scaledMargin rank Face.ym) :
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.TerminalAcceptedEvalSequenceBadFace
      scaledMargin rank Face.ym := by
  rcases hbounds with ⟨hbad, hterm, closed, hmarginBounds⟩
  let obj : TopPairingBellmanObj Face.ym := { rank := rank, closed := closed }
  have hgraph :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate.GraphAcceptedTraceMargin
        scaledMargin obj :=
    graphAcceptedTraceMargin_of_terminalTrace_filters_and_bounds
      obj
      (by
        simpa [obj, TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
          topPairingRankFaceLabels] using hterm)
      (by
        simpa [obj, TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
          topPairingRankFaceLabels, TopPairingActualFaceOmniAtRank] using homni)
      (by
        simpa [obj, TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
          topPairingRankFaceLabels,
          Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank]
          using hbad)
      (by
        simpa [obj] using hmarginBounds)
  exact
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.terminalAcceptedEvalSequenceBadFace_of_graphAcceptedTraceMargin
      hbad hterm closed hgraph

theorem terminalAcceptedEvalSequenceBadFace_of_id_bound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hbound :
      TerminalTraceMarginIdBoundSequenceBadFace scaledMargin rank Face.ym) :
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.TerminalAcceptedEvalSequenceBadFace
      scaledMargin rank Face.ym := by
  rcases hbound with ⟨hbad, hterm, closed, hmarginBound⟩
  let obj : TopPairingBellmanObj Face.ym := { rank := rank, closed := closed }
  have hgraph :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate.GraphAcceptedTraceMargin
        scaledMargin obj := by
    simpa [obj] using
      graphAcceptedTraceMargin_of_id_bound
        (scaledMargin := scaledMargin)
        (obj := obj)
        hmarginBound
  exact
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.terminalAcceptedEvalSequenceBadFace_of_graphAcceptedTraceMargin
      hbad hterm closed hgraph

theorem terminalTraceMarginIdBoundSequenceBadFace_of_traceId
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (traceId : AcceptedTraceId)
    (closed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hseq : TraceIdMarginSequenceBadFace traceId scaledMargin rank Face.ym) :
    TerminalTraceMarginIdBoundSequenceBadFace scaledMargin rank Face.ym := by
  rcases hseq with ⟨_hbadFace, htrace, hmargin⟩
  refine ⟨?_, ?_, closed, ?_⟩
  · refine ⟨rfl, ?_⟩
    intro hreject
    unfold TopPairingTraceClassifier.Accepted.GraphRejectedBadFaceTraceLabels at hreject
    exact acceptedTraceOfId_ne_rejectedGraphTrace_004 traceId
      (htrace.symm.trans hreject)
  · exact Or.inr (Or.inl (graphAcceptedTraceLabels_of_id traceId htrace))
  · refine ⟨traceId, ?_, ?_⟩
    · simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
        topPairingRankFaceLabels] using htrace
    · exact hmargin

theorem strengthenedTerminalAcceptedEval_of_bounds
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.TerminalAcceptedEvalSequenceBadFace
        scaledMargin) rank Face.ym :=
  TopPairingStrengthenedClosedLanguageAtRank.ofComponents
    h.closed
    h.actualFaceOmni
    (terminalAcceptedEvalSequenceBadFace_of_bounds
      (scaledMargin := scaledMargin)
      (rank := rank)
      h.actualFaceOmni
      h.sequenceBadFace_ok)

theorem strengthenedTerminalAcceptedEval_of_id_bound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginIdBoundSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.TerminalAcceptedEvalSequenceBadFace
        scaledMargin) rank Face.ym :=
    TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      h.closed
      h.actualFaceOmni
      (terminalAcceptedEvalSequenceBadFace_of_id_bound
        (scaledMargin := scaledMargin)
        (rank := rank)
        h.sequenceBadFace_ok)

theorem strengthenedTraceMarginIdBound_of_traceId
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TraceIdMarginSequenceBadFace traceId scaledMargin) rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (TerminalTraceMarginIdBoundSequenceBadFace scaledMargin) rank Face.ym :=
  TopPairingStrengthenedClosedLanguageAtRank.ofComponents
    h.closed
    h.actualFaceOmni
    (terminalTraceMarginIdBoundSequenceBadFace_of_traceId
      traceId h.closed h.sequenceBadFace_ok)

theorem evalLanguage_of_traceMarginIdBound
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginIdBoundSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.evalLanguage_of_strengthenedTerminalAcceptedEval
    (strengthenedTerminalAcceptedEval_of_id_bound h)

theorem evalLanguage_of_traceId
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TraceIdMarginSequenceBadFace traceId scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceMarginIdBound
    (strengthenedTraceMarginIdBound_of_traceId h)

theorem strengthenedTraceMarginBounds_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover.strengthenedTerminalAcceptedEval_scaledMargin_nonpos
    (strengthenedTerminalAcceptedEval_of_bounds
      (scaledMargin := scaledMargin) (rank := rank) h)

theorem strengthenedTraceMarginIdBound_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginIdBoundSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover.strengthenedTerminalAcceptedEval_scaledMargin_nonpos
    (strengthenedTerminalAcceptedEval_of_id_bound
      (scaledMargin := scaledMargin) (rank := rank) h)

theorem traceId_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TraceIdMarginSequenceBadFace traceId scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  strengthenedTraceMarginIdBound_scaledMargin_nonpos
    (strengthenedTraceMarginIdBound_of_traceId h)

theorem trace_margin_bounds_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket
