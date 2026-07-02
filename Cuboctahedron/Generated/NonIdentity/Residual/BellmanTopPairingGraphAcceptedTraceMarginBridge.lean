import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.TerminalOk

/-!
Semantic accepted-trace margin bridge for the top-pairing Bellman route.

The Bellman evaluator already knows how to consume `GraphAcceptedTraceMargin`.
This module factors that obligation into two smaller semantic pieces:

* the terminal/accepted classifier proves the rank labels are one of the 37
  graph-accepted traces;
* a margin classifier proves the corresponding conditional integer margin
  bound for that accepted trace.

This keeps the production surface away from sampled rank/path objects and away
from one object constructor per rank.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

structure GraphAcceptedTraceMarginBounds
    (scaledMargin : Fin numPairWords -> Int)
    (obj : TopPairingBellmanObj Face.ym) : Prop where
  trace000 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_000 ->
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)
  trace001 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_001 ->
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)
  trace002 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_002 ->
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)
  trace003 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_003 ->
      scaledMargin obj.rank <= (176 : Int) + (-596 : Int)
  trace004 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_004 ->
      scaledMargin obj.rank <= (176 : Int) + (-348 : Int)
  trace005 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_005 ->
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)
  trace006 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_006 ->
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)
  trace007 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_007 ->
      scaledMargin obj.rank <= (176 : Int) + (-392 : Int)
  trace008 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_008 ->
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)
  trace009 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_009 ->
      scaledMargin obj.rank <= (176 : Int) + (-464 : Int)
  trace010 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_010 ->
      scaledMargin obj.rank <= (176 : Int) + (-684 : Int)
  trace011 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_011 ->
      scaledMargin obj.rank <= (176 : Int) + (-176 : Int)
  trace012 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_012 ->
      scaledMargin obj.rank <= (176 : Int) + (-396 : Int)
  trace013 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_013 ->
      scaledMargin obj.rank <= (176 : Int) + (-464 : Int)
  trace014 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_014 ->
      scaledMargin obj.rank <= (176 : Int) + (-684 : Int)
  trace015 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_015 ->
      scaledMargin obj.rank <= (176 : Int) + (-392 : Int)
  trace016 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_016 ->
      scaledMargin obj.rank <= (176 : Int) + (-612 : Int)
  trace017 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_017 ->
      scaledMargin obj.rank <= (176 : Int) + (-348 : Int)
  trace018 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_018 ->
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)
  trace019 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_019 ->
      scaledMargin obj.rank <= (176 : Int) + (-304 : Int)
  trace020 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_020 ->
      scaledMargin obj.rank <= (176 : Int) + (-568 : Int)
  trace021 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_021 ->
      scaledMargin obj.rank <= (176 : Int) + (-640 : Int)
  trace022 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_022 ->
      scaledMargin obj.rank <= (176 : Int) + (-352 : Int)
  trace023 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_023 ->
      scaledMargin obj.rank <= (176 : Int) + (-640 : Int)
  trace024 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_024 ->
      scaledMargin obj.rank <= (176 : Int) + (-568 : Int)
  trace025 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_025 ->
      scaledMargin obj.rank <= (176 : Int) + (-304 : Int)
  trace026 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_026 ->
      scaledMargin obj.rank <= (176 : Int) + (-304 : Int)
  trace027 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_027 ->
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)
  trace028 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_028 ->
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)
  trace029 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_029 ->
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)
  trace030 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_030 ->
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)
  trace031 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_031 ->
      scaledMargin obj.rank <= (176 : Int) + (-596 : Int)
  trace032 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_032 ->
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)
  trace033 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_033 ->
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)
  trace034 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_034 ->
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)
  trace035 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_035 ->
      scaledMargin obj.rank <= (176 : Int) + (-596 : Int)
  trace036 :
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_036 ->
      scaledMargin obj.rank <= (176 : Int) + (-552 : Int)

theorem graphAcceptedTraceMargin_of_labels_and_bounds
    {scaledMargin : Fin numPairWords -> Int}
    {obj : TopPairingBellmanObj Face.ym}
    (hlabels :
      GraphAcceptedTraceLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj))
    (hbounds : GraphAcceptedTraceMarginBounds scaledMargin obj) :
    GraphAcceptedTraceMargin scaledMargin obj := by
  unfold GraphAcceptedTraceLabels at hlabels
  rcases hlabels with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 |
      h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 |
      h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 |
      h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36
  · exact graphAcceptedTraceMargin_000 h0 (hbounds.trace000 h0)
  · exact graphAcceptedTraceMargin_001 h1 (hbounds.trace001 h1)
  · exact graphAcceptedTraceMargin_002 h2 (hbounds.trace002 h2)
  · exact graphAcceptedTraceMargin_003 h3 (hbounds.trace003 h3)
  · exact graphAcceptedTraceMargin_004 h4 (hbounds.trace004 h4)
  · exact graphAcceptedTraceMargin_005 h5 (hbounds.trace005 h5)
  · exact graphAcceptedTraceMargin_006 h6 (hbounds.trace006 h6)
  · exact graphAcceptedTraceMargin_007 h7 (hbounds.trace007 h7)
  · exact graphAcceptedTraceMargin_008 h8 (hbounds.trace008 h8)
  · exact graphAcceptedTraceMargin_009 h9 (hbounds.trace009 h9)
  · exact graphAcceptedTraceMargin_010 h10 (hbounds.trace010 h10)
  · exact graphAcceptedTraceMargin_011 h11 (hbounds.trace011 h11)
  · exact graphAcceptedTraceMargin_012 h12 (hbounds.trace012 h12)
  · exact graphAcceptedTraceMargin_013 h13 (hbounds.trace013 h13)
  · exact graphAcceptedTraceMargin_014 h14 (hbounds.trace014 h14)
  · exact graphAcceptedTraceMargin_015 h15 (hbounds.trace015 h15)
  · exact graphAcceptedTraceMargin_016 h16 (hbounds.trace016 h16)
  · exact graphAcceptedTraceMargin_017 h17 (hbounds.trace017 h17)
  · exact graphAcceptedTraceMargin_018 h18 (hbounds.trace018 h18)
  · exact graphAcceptedTraceMargin_019 h19 (hbounds.trace019 h19)
  · exact graphAcceptedTraceMargin_020 h20 (hbounds.trace020 h20)
  · exact graphAcceptedTraceMargin_021 h21 (hbounds.trace021 h21)
  · exact graphAcceptedTraceMargin_022 h22 (hbounds.trace022 h22)
  · exact graphAcceptedTraceMargin_023 h23 (hbounds.trace023 h23)
  · exact graphAcceptedTraceMargin_024 h24 (hbounds.trace024 h24)
  · exact graphAcceptedTraceMargin_025 h25 (hbounds.trace025 h25)
  · exact graphAcceptedTraceMargin_026 h26 (hbounds.trace026 h26)
  · exact graphAcceptedTraceMargin_027 h27 (hbounds.trace027 h27)
  · exact graphAcceptedTraceMargin_028 h28 (hbounds.trace028 h28)
  · exact graphAcceptedTraceMargin_029 h29 (hbounds.trace029 h29)
  · exact graphAcceptedTraceMargin_030 h30 (hbounds.trace030 h30)
  · exact graphAcceptedTraceMargin_031 h31 (hbounds.trace031 h31)
  · exact graphAcceptedTraceMargin_032 h32 (hbounds.trace032 h32)
  · exact graphAcceptedTraceMargin_033 h33 (hbounds.trace033 h33)
  · exact graphAcceptedTraceMargin_034 h34 (hbounds.trace034 h34)
  · exact graphAcceptedTraceMargin_035 h35 (hbounds.trace035 h35)
  · exact graphAcceptedTraceMargin_036 h36 (hbounds.trace036 h36)

theorem graphAcceptedTraceMargin_of_terminalOk_filters_and_bounds
    {scaledMargin : Fin numPairWords -> Int}
    {obj : TopPairingBellmanObj Face.ym}
    (hterm :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj))
    (homni :
      TopPairingActualFaceOmniLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj))
    (hbad :
      TopPairingTraceClassifier.Accepted.SequenceBadFaceLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj) Face.ym)
    (hbounds : GraphAcceptedTraceMarginBounds scaledMargin obj) :
    GraphAcceptedTraceMargin scaledMargin obj :=
  graphAcceptedTraceMargin_of_labels_and_bounds
    (TopPairingTraceClassifier.Accepted.graphAcceptedTraceLabels_of_terminalOk_filters
      hterm homni hbad)
    hbounds

theorem graphAcceptedTraceMargin_of_terminalTrace_filters_and_bounds
    {scaledMargin : Fin numPairWords -> Int}
    (obj : TopPairingBellmanObj Face.ym)
    (hterm :
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj))
    (homni :
      TopPairingActualFaceOmniLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj))
    (hbad :
      TopPairingTraceClassifier.Accepted.SequenceBadFaceLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj) Face.ym)
    (hbounds : GraphAcceptedTraceMarginBounds scaledMargin obj) :
    GraphAcceptedTraceMargin scaledMargin obj := by
  have hc :
      triangularCancellationSummaryOfFaceLabels
          (TopPairingBellmanObj.labels (fun f : Face => f) obj) =
        topPairingTargetSummary := by
    simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
      topPairingRankFaceLabels] using
        TopPairingClosedLanguageAtRank.cancellationLabels obj.closed
  have hok :
      TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels
        (TopPairingBellmanObj.labels (fun f : Face => f) obj) :=
    TopPairingTraceClassifier.TerminalOk.terminalOk_of_terminalTrace_and_cancellation
      hc hterm
  exact
    graphAcceptedTraceMargin_of_terminalOk_filters_and_bounds
      hok homni hbad hbounds

theorem graph_accepted_trace_margin_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
