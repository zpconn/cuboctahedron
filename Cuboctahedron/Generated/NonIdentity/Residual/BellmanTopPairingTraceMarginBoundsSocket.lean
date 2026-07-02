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

theorem evalLanguage_of_traceId_components
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (closed : TopPairingClosedLanguageAtRank rank Face.ym)
    (actualFaceOmni : TopPairingActualFaceOmniAtRank rank)
    (htrace : topPairingRankFaceLabels rank = acceptedTraceOfId traceId)
    (hmargin : scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceId
    (TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      closed actualFaceOmni ⟨rfl, htrace, hmargin⟩)

theorem traceId_scaledMargin_nonpos_of_components
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (closed : TopPairingClosedLanguageAtRank rank Face.ym)
    (actualFaceOmni : TopPairingActualFaceOmniAtRank rank)
    (htrace : topPairingRankFaceLabels rank = acceptedTraceOfId traceId)
    (hmargin : scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId) :
    scaledMargin rank <= 0 :=
  traceId_scaledMargin_nonpos
    (TopPairingStrengthenedClosedLanguageAtRank.ofComponents
      closed actualFaceOmni ⟨rfl, htrace, hmargin⟩)

structure TraceIdComponentFamily
    (containsRank : Fin numPairWords -> Prop)
    (traceIdOf : Fin numPairWords -> AcceptedTraceId)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  closed :
    forall rank, containsRank rank ->
      TopPairingClosedLanguageAtRank rank Face.ym
  actualFaceOmni :
    forall rank, containsRank rank ->
      TopPairingActualFaceOmniAtRank rank
  trace :
    forall rank, containsRank rank ->
      topPairingRankFaceLabels rank = acceptedTraceOfId (traceIdOf rank)
  margin :
    forall rank, containsRank rank ->
      scaledMargin rank <= (176 : Int) + acceptedTraceGain (traceIdOf rank)

def TraceIdClosedMarginFamily
    (traceIdOf : Fin numPairWords -> AcceptedTraceId)
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    topPairingRankFaceLabels rank = acceptedTraceOfId (traceIdOf rank) /\
      scaledMargin rank <= (176 : Int) + acceptedTraceGain (traceIdOf rank)

theorem actualFaceOmni_of_acceptedTraceId_trace
    {rank : Fin numPairWords}
    {traceId : AcceptedTraceId}
    (htrace :
      topPairingRankFaceLabels rank = acceptedTraceOfId traceId) :
    TopPairingActualFaceOmniAtRank rank := by
  unfold TopPairingActualFaceOmniAtRank TopPairingActualFaceOmniLabels
  rw [htrace]
  cases traceId <;> decide

theorem traceIdClosedMarginComponentFamily
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int} :
    TraceIdComponentFamily
      (TraceIdClosedMarginFamily traceIdOf scaledMargin)
      traceIdOf
      scaledMargin where
  closed := by
    intro rank h
    exact h.1
  actualFaceOmni := by
    intro rank h
    exact actualFaceOmni_of_acceptedTraceId_trace h.2.1
  trace := by
    intro rank h
    exact h.2.1
  margin := by
    intro rank h
    exact h.2.2

theorem evalLanguage_of_traceIdComponentFamily
    {containsRank : Fin numPairWords -> Prop}
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TraceIdComponentFamily containsRank traceIdOf scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceId_components
    (family.closed rank hrank)
    (family.actualFaceOmni rank hrank)
    (family.trace rank hrank)
    (family.margin rank hrank)

theorem traceIdComponentFamily_scaledMargin_nonpos
    {containsRank : Fin numPairWords -> Prop}
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TraceIdComponentFamily containsRank traceIdOf scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    scaledMargin rank <= 0 :=
  traceId_scaledMargin_nonpos_of_components
    (family.closed rank hrank)
    (family.actualFaceOmni rank hrank)
    (family.trace rank hrank)
    (family.margin rank hrank)

theorem evalLanguage_of_traceIdClosedMarginFamily
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdClosedMarginFamily traceIdOf scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdComponentFamily
    traceIdClosedMarginComponentFamily hrank

theorem traceIdClosedMarginFamily_scaledMargin_nonpos
    {traceIdOf : Fin numPairWords -> AcceptedTraceId}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdClosedMarginFamily traceIdOf scaledMargin rank) :
    scaledMargin rank <= 0 :=
  traceIdComponentFamily_scaledMargin_nonpos
    traceIdClosedMarginComponentFamily hrank

def GraphAcceptedTraceMarginClosedFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  ∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate.GraphAcceptedTraceMargin
      scaledMargin
      ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)

def TraceIdExistsClosedMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  ∃ _closed : TopPairingClosedLanguageAtRank rank Face.ym,
    ∃ traceId : AcceptedTraceId,
      topPairingRankFaceLabels rank = acceptedTraceOfId traceId ∧
        scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId

theorem traceIdExistsClosedMarginFamily_of_graphAcceptedTraceMarginClosedFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : GraphAcceptedTraceMarginClosedFamily scaledMargin rank) :
    TraceIdExistsClosedMarginFamily scaledMargin rank := by
  rcases hrank with ⟨closed, hgraph⟩
  let obj : TopPairingBellmanObj Face.ym := { rank := rank, closed := closed }
  rcases graphAcceptedTraceMarginIdBound_of_graphAcceptedTraceMargin
      (scaledMargin := scaledMargin) (obj := obj)
      (by simpa [obj] using hgraph) with
    ⟨traceId, htrace, hmargin⟩
  refine ⟨closed, traceId, ?_, ?_⟩
  · simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
      topPairingRankFaceLabels, obj] using htrace
  · simpa [obj] using hmargin

theorem evalLanguage_of_traceIdExistsClosedMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdExistsClosedMarginFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  rcases hrank with ⟨closed, traceId, htrace, hmargin⟩
  exact evalLanguage_of_traceId_components
    closed
    (actualFaceOmni_of_acceptedTraceId_trace htrace)
    htrace
    hmargin

theorem traceIdExistsClosedMarginFamily_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : TraceIdExistsClosedMarginFamily scaledMargin rank) :
    scaledMargin rank <= 0 := by
  rcases hrank with ⟨closed, traceId, htrace, hmargin⟩
  exact traceId_scaledMargin_nonpos_of_components
    closed
    (actualFaceOmni_of_acceptedTraceId_trace htrace)
    htrace
    hmargin

theorem evalLanguage_of_graphAcceptedTraceMarginClosedFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : GraphAcceptedTraceMarginClosedFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_traceIdExistsClosedMarginFamily
    (traceIdExistsClosedMarginFamily_of_graphAcceptedTraceMarginClosedFamily
      hrank)

theorem graphAcceptedTraceMarginClosedFamily_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : GraphAcceptedTraceMarginClosedFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  traceIdExistsClosedMarginFamily_scaledMargin_nonpos
    (traceIdExistsClosedMarginFamily_of_graphAcceptedTraceMarginClosedFamily
      hrank)

theorem graphAcceptedTraceMarginClosedFamily_of_terminalTraceMarginBounds
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (homni : TopPairingActualFaceOmniAtRank rank)
    (hbounds :
      TerminalTraceMarginBoundsSequenceBadFace scaledMargin rank Face.ym) :
    GraphAcceptedTraceMarginClosedFamily scaledMargin rank := by
  rcases hbounds with ⟨hbad, hterm, closed, hmarginBounds⟩
  let obj : TopPairingBellmanObj Face.ym := { rank := rank, closed := closed }
  refine ⟨closed, ?_⟩
  exact
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

theorem graphAcceptedTraceMarginClosedFamily_of_strengthenedTerminalTraceMarginBounds
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym) :
    GraphAcceptedTraceMarginClosedFamily scaledMargin rank :=
  graphAcceptedTraceMarginClosedFamily_of_terminalTraceMarginBounds
    h.actualFaceOmni h.sequenceBadFace_ok

theorem evalLanguage_of_strengthenedTerminalTraceMarginBounds
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_graphAcceptedTraceMarginClosedFamily
    (graphAcceptedTraceMarginClosedFamily_of_strengthenedTerminalTraceMarginBounds
      h)

theorem strengthenedTerminalTraceMarginBounds_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  graphAcceptedTraceMarginClosedFamily_scaledMargin_nonpos
    (graphAcceptedTraceMarginClosedFamily_of_strengthenedTerminalTraceMarginBounds
      h)

structure TerminalTraceMarginBoundsComponentFamily
    (containsRank : Fin numPairWords -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  closed :
    forall rank, containsRank rank ->
      TopPairingClosedLanguageAtRank rank Face.ym
  actualFaceOmni :
    forall rank, containsRank rank ->
      TopPairingActualFaceOmniAtRank rank
  sequenceBadFace :
    forall rank, containsRank rank ->
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym
  terminalTrace :
    forall rank, containsRank rank ->
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)
  marginBounds :
    forall rank, (hrank : containsRank rank) ->
      GraphAcceptedTraceMarginBounds scaledMargin
        ({ rank := rank, closed := closed rank hrank } :
          TopPairingBellmanObj Face.ym)

theorem terminalTraceMarginBoundsSequenceBadFace_of_componentFamily
    {containsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TerminalTraceMarginBoundsComponentFamily containsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TerminalTraceMarginBoundsSequenceBadFace scaledMargin rank Face.ym :=
  ⟨family.sequenceBadFace rank hrank,
    family.terminalTrace rank hrank,
    family.closed rank hrank,
    family.marginBounds rank hrank⟩

theorem evalLanguage_of_terminalTraceMarginBoundsComponentFamily
    {containsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TerminalTraceMarginBoundsComponentFamily containsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_graphAcceptedTraceMarginClosedFamily
    (graphAcceptedTraceMarginClosedFamily_of_terminalTraceMarginBounds
      (family.actualFaceOmni rank hrank)
      (terminalTraceMarginBoundsSequenceBadFace_of_componentFamily
        family hrank))

theorem terminalTraceMarginBoundsComponentFamily_scaledMargin_nonpos
    {containsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      TerminalTraceMarginBoundsComponentFamily containsRank scaledMargin)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    scaledMargin rank <= 0 :=
  graphAcceptedTraceMarginClosedFamily_scaledMargin_nonpos
    (graphAcceptedTraceMarginClosedFamily_of_terminalTraceMarginBounds
      (family.actualFaceOmni rank hrank)
      (terminalTraceMarginBoundsSequenceBadFace_of_componentFamily
        family hrank))

theorem trace_margin_bounds_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket
