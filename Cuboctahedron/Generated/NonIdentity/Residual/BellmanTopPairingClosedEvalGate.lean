import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedEvalTraceSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root

/-!
Semantic gate for the top-pairing Bellman evaluator.

The remaining production theorem should prove the two premises below from
`TopPairingClosedLanguageAtRank`, not from sampled rank/path objects.  This file
keeps that boundary explicit: once a closed object is known to have one of the
two accepted traces and the corresponding scaled margin bound, the generated
deterministic evaluator gives the Bellman contradiction.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedEvalGate

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

def ClosedTraceOr (obj : TopPairingBellmanObj Face.ym) : Prop :=
  TopPairingBellmanObj.labels (fun f : Face => f) obj =
      topPairingClosedFaceTraceA \/
    TopPairingBellmanObj.labels (fun f : Face => f) obj =
      topPairingClosedFaceTraceB

def ClosedMarginBound
    (scaledMargin : Fin numPairWords -> Int)
    (obj : TopPairingBellmanObj Face.ym) : Prop :=
  scaledMargin obj.rank <= (176 : Int) + (-376 : Int)

theorem graphRootBound :
    (176 : Int) + graphPotential rootState <= 0 := by
  change (176 : Int) + (-176 : Int) <= 0
  norm_num

theorem graphStartInRange :
    rootState < stateCount := by
  change (0 : Nat) < 970
  decide

theorem evalAccepts_of_closedTraceAndMargin
    {scaledMargin : Fin numPairWords -> Int}
    (htrace :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedTraceOr obj)
    (hmargin :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedMarginBound scaledMargin obj)
    (obj : TopPairingBellmanObj Face.ym) :
    BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)
      (fun obj : TopPairingBellmanObj Face.ym => scaledMargin obj.rank)
      (fun obj => TopPairingBellmanObj.labels smokeLabelOfFace obj)
      obj :=
  _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedEvalTraceSmoke.bellmanEvalAccepts_of_closedFaceTraceA_or_closedFaceTraceB
    obj (htrace obj) (hmargin obj)

theorem closedToEvalLanguage_of_traceAndMargin
    {scaledMargin : Fin numPairWords -> Int}
    (htrace :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedTraceOr obj)
    (hmargin :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedMarginBound scaledMargin obj)
    (rank : Fin numPairWords)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  let obj : TopPairingBellmanObj Face.ym := ⟨rank, hclosed⟩
  have heval := evalAccepts_of_closedTraceAndMargin
    (scaledMargin := scaledMargin) htrace hmargin obj
  rcases heval with ⟨result, hevalRun, hfinish, hmarginBound⟩
  exact
    { closed := hclosed
      eval_accepts := by
        refine ⟨result, ?_, hfinish, hmarginBound⟩
        simpa [obj, TopPairingBellmanObj.labels,
          TopPairingBellmanObj.forcedSeq] using hevalRun }

theorem scaledMargin_nonpos_of_closedTraceAndMargin
    {scaledMargin : Fin numPairWords -> Int}
    (htrace :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedTraceOr obj)
    (hmargin :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedMarginBound scaledMargin obj)
    (obj : TopPairingBellmanObj Face.ym) :
    scaledMargin obj.rank <= 0 := by
  exact scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
    (V := graphPotential)
    (next := graphSmokeNext)
    (InRange := fun s : State => s < stateCount)
    (start := rootState)
    (const := (176 : Int))
    (scaledMargin :=
      fun obj : TopPairingBellmanObj Face.ym => scaledMargin obj.rank)
    (wordOf := fun obj : TopPairingBellmanObj Face.ym =>
      TopPairingBellmanObj.labels smokeLabelOfFace obj)
    (hnext := by
      intro s label t gain hs hnext
      exact _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt hs hnext)
    (hstart := graphStartInRange)
    (hroot := graphRootBound)
    (heval :=
      evalAccepts_of_closedTraceAndMargin
        (scaledMargin := scaledMargin) htrace hmargin obj)

theorem closedRank_scaledMargin_nonpos_of_traceAndMargin
    {scaledMargin : Fin numPairWords -> Int}
    (htrace :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedTraceOr obj)
    (hmargin :
      forall obj : TopPairingBellmanObj Face.ym,
        ClosedMarginBound scaledMargin obj)
    (rank : Fin numPairWords)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 := by
  let obj : TopPairingBellmanObj Face.ym := ⟨rank, hclosed⟩
  simpa [obj] using
    scaledMargin_nonpos_of_closedTraceAndMargin
      (scaledMargin := scaledMargin) htrace hmargin obj

theorem scaledMargin_nonpos_of_closedToEvalLanguage
    {scaledMargin : Fin numPairWords -> Int}
    (closed_to_eval :
      forall rank,
        TopPairingClosedLanguageAtRank rank Face.ym ->
          TopPairingBellmanEvalLanguageAtRank
            graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
            scaledMargin rank Face.ym)
    (rank : Fin numPairWords)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 := by
  have hevalLanguage := closed_to_eval rank hclosed
  exact scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
    (V := graphPotential)
    (next := graphSmokeNext)
    (InRange := fun s : State => s < stateCount)
    (start := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (wordOf := fun rank : Fin numPairWords =>
      faceLabelsInContributionOrder smokeLabelOfFace
        (canonicalSeqOfPairWord (unrankPairWord rank)))
    (hnext := by
      intro s label t gain hs hnext
      exact _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt hs hnext)
    (hstart := graphStartInRange)
    (hroot := graphRootBound)
    (heval := hevalLanguage.eval_accepts)

theorem gate_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedEvalGate
