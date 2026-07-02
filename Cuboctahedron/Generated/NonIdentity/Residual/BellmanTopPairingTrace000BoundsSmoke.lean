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

private theorem acceptedFaceTrace_000_ne_001 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_001 := by decide

private theorem acceptedFaceTrace_000_ne_002 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_002 := by decide

private theorem acceptedFaceTrace_000_ne_003 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_003 := by decide

private theorem acceptedFaceTrace_000_ne_004 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_004 := by decide

private theorem acceptedFaceTrace_000_ne_005 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_005 := by decide

private theorem acceptedFaceTrace_000_ne_006 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_006 := by decide

private theorem acceptedFaceTrace_000_ne_007 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_007 := by decide

private theorem acceptedFaceTrace_000_ne_008 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_008 := by decide

private theorem acceptedFaceTrace_000_ne_009 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_009 := by decide

private theorem acceptedFaceTrace_000_ne_010 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_010 := by decide

private theorem acceptedFaceTrace_000_ne_011 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_011 := by decide

private theorem acceptedFaceTrace_000_ne_012 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_012 := by decide

private theorem acceptedFaceTrace_000_ne_013 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_013 := by decide

private theorem acceptedFaceTrace_000_ne_014 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_014 := by decide

private theorem acceptedFaceTrace_000_ne_015 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_015 := by decide

private theorem acceptedFaceTrace_000_ne_016 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_016 := by decide

private theorem acceptedFaceTrace_000_ne_017 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_017 := by decide

private theorem acceptedFaceTrace_000_ne_018 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_018 := by decide

private theorem acceptedFaceTrace_000_ne_019 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_019 := by decide

private theorem acceptedFaceTrace_000_ne_020 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_020 := by decide

private theorem acceptedFaceTrace_000_ne_021 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_021 := by decide

private theorem acceptedFaceTrace_000_ne_022 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_022 := by decide

private theorem acceptedFaceTrace_000_ne_023 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_023 := by decide

private theorem acceptedFaceTrace_000_ne_024 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_024 := by decide

private theorem acceptedFaceTrace_000_ne_025 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_025 := by decide

private theorem acceptedFaceTrace_000_ne_026 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_026 := by decide

private theorem acceptedFaceTrace_000_ne_027 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_027 := by decide

private theorem acceptedFaceTrace_000_ne_028 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_028 := by decide

private theorem acceptedFaceTrace_000_ne_029 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_029 := by decide

private theorem acceptedFaceTrace_000_ne_030 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_030 := by decide

private theorem acceptedFaceTrace_000_ne_031 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_031 := by decide

private theorem acceptedFaceTrace_000_ne_032 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_032 := by decide

private theorem acceptedFaceTrace_000_ne_033 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_033 := by decide

private theorem acceptedFaceTrace_000_ne_034 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_034 := by decide

private theorem acceptedFaceTrace_000_ne_035 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_035 := by decide

private theorem acceptedFaceTrace_000_ne_036 :
    acceptedFaceTrace_000 ≠ acceptedFaceTrace_036 := by decide

private theorem absurd_trace
    {labels trace : List Face}
    (h0 : labels = acceptedFaceTrace_000)
    (hne : acceptedFaceTrace_000 ≠ trace)
    (htrace : labels = trace) :
    False :=
  hne (h0.symm.trans htrace)

theorem graphAcceptedTraceMarginBounds_of_trace000
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (closed : TopPairingClosedLanguageAtRank rank Face.ym)
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000)
    (hmargin : scaledMargin rank <= (176 : Int) + (-376 : Int)) :
    GraphAcceptedTraceMarginBounds scaledMargin
      ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym) where
  trace000 := by
    intro _h
    exact hmargin
  trace001 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_001 h)
  trace002 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_002 h)
  trace003 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_003 h)
  trace004 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_004 h)
  trace005 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_005 h)
  trace006 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_006 h)
  trace007 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_007 h)
  trace008 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_008 h)
  trace009 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_009 h)
  trace010 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_010 h)
  trace011 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_011 h)
  trace012 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_012 h)
  trace013 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_013 h)
  trace014 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_014 h)
  trace015 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_015 h)
  trace016 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_016 h)
  trace017 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_017 h)
  trace018 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_018 h)
  trace019 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_019 h)
  trace020 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_020 h)
  trace021 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_021 h)
  trace022 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_022 h)
  trace023 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_023 h)
  trace024 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_024 h)
  trace025 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_025 h)
  trace026 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_026 h)
  trace027 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_027 h)
  trace028 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_028 h)
  trace029 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_029 h)
  trace030 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_030 h)
  trace031 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_031 h)
  trace032 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_032 h)
  trace033 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_033 h)
  trace034 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_034 h)
  trace035 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_035 h)
  trace036 := by
    intro h
    exact False.elim (absurd_trace htrace acceptedFaceTrace_000_ne_036 h)

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
  · exact graphAcceptedTraceMarginBounds_of_trace000 closed htrace hmargin

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
