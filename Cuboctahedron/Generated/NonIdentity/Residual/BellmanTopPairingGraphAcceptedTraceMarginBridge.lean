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

inductive AcceptedTraceId where
  | t000 | t001 | t002 | t003 | t004 | t005 | t006 | t007 | t008 | t009
  | t010 | t011 | t012 | t013 | t014 | t015 | t016 | t017 | t018 | t019
  | t020 | t021 | t022 | t023 | t024 | t025 | t026 | t027 | t028 | t029
  | t030 | t031 | t032 | t033 | t034 | t035 | t036
  deriving DecidableEq, Repr

def acceptedTraceOfId : AcceptedTraceId -> List Face
  | .t000 => acceptedFaceTrace_000
  | .t001 => acceptedFaceTrace_001
  | .t002 => acceptedFaceTrace_002
  | .t003 => acceptedFaceTrace_003
  | .t004 => acceptedFaceTrace_004
  | .t005 => acceptedFaceTrace_005
  | .t006 => acceptedFaceTrace_006
  | .t007 => acceptedFaceTrace_007
  | .t008 => acceptedFaceTrace_008
  | .t009 => acceptedFaceTrace_009
  | .t010 => acceptedFaceTrace_010
  | .t011 => acceptedFaceTrace_011
  | .t012 => acceptedFaceTrace_012
  | .t013 => acceptedFaceTrace_013
  | .t014 => acceptedFaceTrace_014
  | .t015 => acceptedFaceTrace_015
  | .t016 => acceptedFaceTrace_016
  | .t017 => acceptedFaceTrace_017
  | .t018 => acceptedFaceTrace_018
  | .t019 => acceptedFaceTrace_019
  | .t020 => acceptedFaceTrace_020
  | .t021 => acceptedFaceTrace_021
  | .t022 => acceptedFaceTrace_022
  | .t023 => acceptedFaceTrace_023
  | .t024 => acceptedFaceTrace_024
  | .t025 => acceptedFaceTrace_025
  | .t026 => acceptedFaceTrace_026
  | .t027 => acceptedFaceTrace_027
  | .t028 => acceptedFaceTrace_028
  | .t029 => acceptedFaceTrace_029
  | .t030 => acceptedFaceTrace_030
  | .t031 => acceptedFaceTrace_031
  | .t032 => acceptedFaceTrace_032
  | .t033 => acceptedFaceTrace_033
  | .t034 => acceptedFaceTrace_034
  | .t035 => acceptedFaceTrace_035
  | .t036 => acceptedFaceTrace_036

def acceptedTraceGain : AcceptedTraceId -> Int
  | .t000 => -376
  | .t001 => -376
  | .t002 => -376
  | .t003 => -596
  | .t004 => -348
  | .t005 => -612
  | .t006 => -612
  | .t007 => -392
  | .t008 => -612
  | .t009 => -464
  | .t010 => -684
  | .t011 => -176
  | .t012 => -396
  | .t013 => -464
  | .t014 => -684
  | .t015 => -392
  | .t016 => -612
  | .t017 => -348
  | .t018 => -552
  | .t019 => -304
  | .t020 => -568
  | .t021 => -640
  | .t022 => -352
  | .t023 => -640
  | .t024 => -568
  | .t025 => -304
  | .t026 => -304
  | .t027 => -552
  | .t028 => -552
  | .t029 => -376
  | .t030 => -376
  | .t031 => -596
  | .t032 => -552
  | .t033 => -552
  | .t034 => -376
  | .t035 => -596
  | .t036 => -552

theorem graphAcceptedTraceLabels_of_id
    {labels : List Face}
    (id : AcceptedTraceId)
    (hlabels : labels = acceptedTraceOfId id) :
    GraphAcceptedTraceLabels labels := by
  subst labels
  cases id <;> simp [GraphAcceptedTraceLabels, acceptedTraceOfId]

theorem acceptedTraceOfId_ne_rejectedGraphTrace_004
    (id : AcceptedTraceId) :
    acceptedTraceOfId id ≠
      TopPairingTraceClassifier.Accepted.rejectedGraphTrace_004 := by
  cases id <;> decide

def GraphAcceptedTraceMarginIdBound
    (scaledMargin : Fin numPairWords -> Int)
    (obj : TopPairingBellmanObj Face.ym) : Prop :=
  ∃ id : AcceptedTraceId,
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
      acceptedTraceOfId id ∧
    scaledMargin obj.rank <= (176 : Int) + acceptedTraceGain id

theorem graphAcceptedTraceMargin_of_id_bound
    {scaledMargin : Fin numPairWords -> Int}
    {obj : TopPairingBellmanObj Face.ym}
    (hbound : GraphAcceptedTraceMarginIdBound scaledMargin obj) :
    GraphAcceptedTraceMargin scaledMargin obj := by
  rcases hbound with ⟨id, htrace, hmargin⟩
  cases id <;> simp [acceptedTraceOfId, acceptedTraceGain] at htrace hmargin
  · exact graphAcceptedTraceMargin_000 htrace hmargin
  · exact graphAcceptedTraceMargin_001 htrace hmargin
  · exact graphAcceptedTraceMargin_002 htrace hmargin
  · exact graphAcceptedTraceMargin_003 htrace hmargin
  · exact graphAcceptedTraceMargin_004 htrace hmargin
  · exact graphAcceptedTraceMargin_005 htrace hmargin
  · exact graphAcceptedTraceMargin_006 htrace hmargin
  · exact graphAcceptedTraceMargin_007 htrace hmargin
  · exact graphAcceptedTraceMargin_008 htrace hmargin
  · exact graphAcceptedTraceMargin_009 htrace hmargin
  · exact graphAcceptedTraceMargin_010 htrace hmargin
  · exact graphAcceptedTraceMargin_011 htrace hmargin
  · exact graphAcceptedTraceMargin_012 htrace hmargin
  · exact graphAcceptedTraceMargin_013 htrace hmargin
  · exact graphAcceptedTraceMargin_014 htrace hmargin
  · exact graphAcceptedTraceMargin_015 htrace hmargin
  · exact graphAcceptedTraceMargin_016 htrace hmargin
  · exact graphAcceptedTraceMargin_017 htrace hmargin
  · exact graphAcceptedTraceMargin_018 htrace hmargin
  · exact graphAcceptedTraceMargin_019 htrace hmargin
  · exact graphAcceptedTraceMargin_020 htrace hmargin
  · exact graphAcceptedTraceMargin_021 htrace hmargin
  · exact graphAcceptedTraceMargin_022 htrace hmargin
  · exact graphAcceptedTraceMargin_023 htrace hmargin
  · exact graphAcceptedTraceMargin_024 htrace hmargin
  · exact graphAcceptedTraceMargin_025 htrace hmargin
  · exact graphAcceptedTraceMargin_026 htrace hmargin
  · exact graphAcceptedTraceMargin_027 htrace hmargin
  · exact graphAcceptedTraceMargin_028 htrace hmargin
  · exact graphAcceptedTraceMargin_029 htrace hmargin
  · exact graphAcceptedTraceMargin_030 htrace hmargin
  · exact graphAcceptedTraceMargin_031 htrace hmargin
  · exact graphAcceptedTraceMargin_032 htrace hmargin
  · exact graphAcceptedTraceMargin_033 htrace hmargin
  · exact graphAcceptedTraceMargin_034 htrace hmargin
  · exact graphAcceptedTraceMargin_035 htrace hmargin
  · exact graphAcceptedTraceMargin_036 htrace hmargin

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

private theorem graphAcceptedTraceMarginBounds_000_absurd
    {labels trace : List Face}
    (h0 : labels = acceptedFaceTrace_000)
    (hne : acceptedFaceTrace_000 ≠ trace)
    (htrace : labels = trace) :
    False :=
  hne (h0.symm.trans htrace)

theorem graphAcceptedTraceMarginBounds_000
    {scaledMargin : Fin numPairWords -> Int}
    {obj : TopPairingBellmanObj Face.ym}
    (htrace :
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        acceptedFaceTrace_000)
    (hmargin :
      scaledMargin obj.rank <= (176 : Int) + (-376 : Int)) :
    GraphAcceptedTraceMarginBounds scaledMargin obj where
  trace000 := by
    intro _h
    exact hmargin
  trace001 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_001 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace002 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_002 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace003 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_003 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace004 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_004 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace005 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_005 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace006 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_006 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace007 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_007 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace008 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_008 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace009 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_009 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace010 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_010 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace011 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_011 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace012 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_012 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace013 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_013 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace014 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_014 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace015 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_015 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace016 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_016 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace017 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_017 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace018 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_018 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace019 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_019 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace020 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_020 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace021 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_021 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace022 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_022 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace023 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_023 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace024 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_024 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace025 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_025 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace026 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_026 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace027 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_027 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace028 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_028 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace029 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_029 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace030 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_030 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace031 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_031 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace032 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_032 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace033 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_033 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace034 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_034 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace035 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_035 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)
  trace036 := by
    intro h
    have hne : acceptedFaceTrace_000 ≠ acceptedFaceTrace_036 := by decide
    exact False.elim (graphAcceptedTraceMarginBounds_000_absurd htrace hne h)

theorem graph_accepted_trace_margin_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
