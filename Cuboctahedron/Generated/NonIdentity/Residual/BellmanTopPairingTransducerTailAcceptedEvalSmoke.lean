import Cuboctahedron.Search.TopPairingTransducerTail
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

/-!
Transducer-tail to graph-accepted eval smoke.

This is the combined-state version of the earlier tail/eval socket.  It checks
that a closed top-pairing rank can drive the semantic transducer tail through
the `xm, ym` prefix while the existing graph-accepted trace/margin socket still
produces the Bellman eval language for one accepted trace.

This is not production coverage: the trace equality and margin bound remain
explicit smoke premises.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerTailAcceptedEvalSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

def acceptedTrace000Tail : List Face :=
  [Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp,
    Face.tmmp, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]

def afterXmYmParity : SqParity :=
  (SqParity.id.applyPair (pairOfFace Face.xm)).applyPair (pairOfFace Face.ym)

theorem trace000_transducer_tail_after_xm_ym
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000) :
    TopPairingTransducerTail (1 + 1)
      (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym)
      0
      afterXmYmParity
      (topPairingNextLinear
        (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
      acceptedTrace000Tail := by
  have htail0 : TopPairingTransducerTail 0 0 0 SqParity.id
      (matId : Mat3 Rat) acceptedFaceTrace_000 := by
    simpa [htrace] using TopPairingTransducerTail.ofClosedRank hclosed
  have htail1 : TopPairingTransducerTail 1 (topPairingNextGap 0 Face.xm) 0
      (SqParity.id.applyPair (pairOfFace Face.xm))
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm)
      (Face.ym :: acceptedTrace000Tail) := by
    simpa [acceptedFaceTrace_000, acceptedTrace000Tail] using
      TopPairingTransducerTail.cons_square_tail htail0 (by rfl)
  simpa [acceptedTrace000Tail, afterXmYmParity] using
    TopPairingTransducerTail.cons_square_tail htail1 (by rfl)

theorem evalLanguage_of_trace000_margin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000)
    (hmargin : scaledMargin rank <= (176 : Int) + (-376 : Int)) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  have hgraph :
      GraphAcceptedTraceMargin scaledMargin
        ({ rank := rank, closed := hclosed } : TopPairingBellmanObj Face.ym) :=
    graphAcceptedTraceMargin_000
      (scaledMargin := scaledMargin)
      (obj := ({ rank := rank, closed := hclosed } : TopPairingBellmanObj Face.ym))
      (by
        simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq,
          topPairingRankFaceLabels] using htrace)
      (by simpa using hmargin)
  exact evalLanguageAtRank_of_graphAcceptedTraceMargin hclosed hgraph

theorem transducer_tail_and_eval_of_trace000_margin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000)
    (hmargin : scaledMargin rank <= (176 : Int) + (-376 : Int)) :
    TopPairingTransducerTail (1 + 1)
        (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym)
        0 afterXmYmParity
        (topPairingNextLinear
          (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
        acceptedTrace000Tail ∧
      TopPairingBellmanEvalLanguageAtRank
        graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
        scaledMargin rank Face.ym :=
  ⟨trace000_transducer_tail_after_xm_ym hclosed htrace,
    evalLanguage_of_trace000_margin hclosed htrace hmargin⟩

theorem transducerTailAcceptedEvalSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerTailAcceptedEvalSmoke
