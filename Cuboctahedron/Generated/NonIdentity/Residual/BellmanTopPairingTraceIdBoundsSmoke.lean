import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
Generic accepted-trace-id bucket for the top-pairing Bellman route.

This module validates the compact bucket theorem we want future generated
classifiers to target: once a semantic rank is assigned an accepted trace id,
and its scaled margin satisfies that trace id's Bellman gain bound, the existing
Bellman socket gives the rank-level nonpositive margin.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceIdBoundsSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

def TraceIdMarginSequenceBadFace
    (traceId : AcceptedTraceId)
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym /\
    topPairingRankFaceLabels rank = acceptedTraceOfId traceId /\
    scaledMargin rank <= (176 : Int) + acceptedTraceGain traceId

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

theorem trace_id_bounds_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceIdBoundsSmoke
