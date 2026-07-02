import Cuboctahedron.Search.TopPairingTraceTail
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

/-!
Tail-state to graph-accepted eval smoke.

This is a deliberately tiny semantic socket test.  It does not prove terminal
coverage.  It proves that, for one accepted graph trace, closed-language
membership plus a semantic trace equality and margin bound feeds the existing
Bellman evaluator without sampled rank/path objects.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTailAcceptedEvalSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

def acceptedTrace000Tail : List Face :=
  [Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp,
    Face.tmmp, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]

theorem trace000_tail_after_xm_ym
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000) :
    TopPairingTraceTail (1 + 1)
      (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym)
      (topPairingNextLinear
        (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
      acceptedTrace000Tail := by
  have htail0 : TopPairingTraceTail 0 0 (matId : Mat3 Rat)
      acceptedFaceTrace_000 := by
    simpa [htrace] using TopPairingTraceTail.ofClosedRank hclosed
  have htail1 : TopPairingTraceTail 1 (topPairingNextGap 0 Face.xm)
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm)
      (Face.ym :: acceptedTrace000Tail) := by
    simpa [acceptedFaceTrace_000, acceptedTrace000Tail] using
      TopPairingTraceTail.cons_tail htail0
  simpa [acceptedTrace000Tail] using TopPairingTraceTail.cons_tail htail1

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

theorem tail_and_eval_of_trace000_margin
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (htrace : topPairingRankFaceLabels rank = acceptedFaceTrace_000)
    (hmargin : scaledMargin rank <= (176 : Int) + (-376 : Int)) :
    TopPairingTraceTail (1 + 1)
        (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym)
        (topPairingNextLinear
          (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
        acceptedTrace000Tail ∧
      TopPairingBellmanEvalLanguageAtRank
        graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
        scaledMargin rank Face.ym :=
  ⟨trace000_tail_after_xm_ym hclosed htrace,
    evalLanguage_of_trace000_margin hclosed htrace hmargin⟩

theorem tailAcceptedEvalSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTailAcceptedEvalSmoke
