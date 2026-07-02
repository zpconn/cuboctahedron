import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

/-!
First non-sampled accepted-trace bucket for the top-pairing Bellman route.

This smoke proves that one semantic accepted trace bucket can feed the
bounds-based Bellman socket without sampled ranks or sampled path objects.  The
bucket is intentionally small: ranks whose canonical contribution-order labels
are exactly `acceptedFaceTrace_000` and whose scaled margin satisfies the trace
000 bound.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace000BoundsSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceMarginBoundsSocket

def Trace000MarginSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym /\
    topPairingRankFaceLabels rank = acceptedFaceTrace_000 /\
    scaledMargin rank <= (176 : Int) + (-376 : Int)

private theorem acceptedFaceTrace_000_ne_rejectedGraphTrace_004 :
    acceptedFaceTrace_000 ≠
      TopPairingTraceClassifier.Accepted.rejectedGraphTrace_004 := by
  decide

theorem terminalTraceMarginBoundsSequenceBadFace_of_trace000
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (closed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hseq : Trace000MarginSequenceBadFace scaledMargin rank Face.ym) :
    TerminalTraceMarginBoundsSequenceBadFace scaledMargin rank Face.ym := by
  rcases hseq with ⟨_hbadFace, htrace, hmargin⟩
  refine ⟨?_, ?_, closed, ?_⟩
  · refine ⟨rfl, ?_⟩
    intro hreject
    unfold TopPairingTraceClassifier.Accepted.GraphRejectedBadFaceTraceLabels at hreject
    exact acceptedFaceTrace_000_ne_rejectedGraphTrace_004
      (htrace.symm.trans hreject)
  · exact Or.inr (Or.inl (Or.inl htrace))
  · exact
      graphAcceptedTraceMarginBounds_000
        (scaledMargin := scaledMargin)
        (obj := ({ rank := rank, closed := closed } :
          TopPairingBellmanObj Face.ym))
        (by
          simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
            topPairingRankFaceLabels] using htrace)
        hmargin

theorem strengthenedTraceMarginBounds_of_trace000
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (Trace000MarginSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingStrengthenedClosedLanguageAtRank
      (TerminalTraceMarginBoundsSequenceBadFace scaledMargin) rank Face.ym :=
  TopPairingStrengthenedClosedLanguageAtRank.ofComponents
    h.closed
    h.actualFaceOmni
    (terminalTraceMarginBoundsSequenceBadFace_of_trace000
      h.closed h.sequenceBadFace_ok)

theorem trace000_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (Trace000MarginSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 :=
  strengthenedTraceMarginBounds_scaledMargin_nonpos
    (strengthenedTraceMarginBounds_of_trace000 h)

theorem trace000_bounds_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace000BoundsSmoke
