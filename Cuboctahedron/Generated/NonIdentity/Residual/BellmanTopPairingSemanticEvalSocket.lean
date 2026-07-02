import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root

/-!
Semantic eval socket for the top-pairing Bellman route.

The scalable Bellman path needs a semantic predicate that can be supplied by a
generated classifier, not sampled rank/path objects.  This module names that
socket explicitly: a rank/bad-face pair carries graph-accepted trace/margin
evidence, and the generic Bellman evaluator then yields the rank-level
nonpositive scaled-margin theorem.

The remaining production obligation is to prove this socket from compact
closed-language classifiers.  This file intentionally does not enumerate ranks.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticEvalSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

def GraphAcceptedEvalSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym /\
    ∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,
      GraphAcceptedTraceMargin scaledMargin
        ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)

theorem evalLanguage_of_strengthenedGraphAcceptedEval
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (GraphAcceptedEvalSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  rcases h.sequenceBadFace_ok with ⟨_hbadFace, closed, hgraph⟩
  have hevalObj :=
    bellmanEvalAccepts_of_graphAcceptedTraceMargin
      ({ rank := rank, closed := closed } : TopPairingBellmanObj Face.ym)
      hgraph
  rcases hevalObj with ⟨result, heval, hfinish, hmargin⟩
  refine ⟨h.closed, ⟨result, ?_, hfinish, hmargin⟩⟩
  simpa [TopPairingBellmanObj.labels, TopPairingBellmanObj.forcedSeq]
    using heval

theorem graphRootInRange :
    rootState < stateCount := by
  unfold rootState stateCount
  decide

theorem graphRootBound :
    (176 : Int) + graphPotential rootState <= 0 := by
  unfold rootState graphPotential
  decide

theorem strengthenedGraphAcceptedEval_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (GraphAcceptedEvalSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 := by
  have hevalLang :=
    evalLanguage_of_strengthenedGraphAcceptedEval
      (scaledMargin := scaledMargin) (rank := rank) h
  exact
    scaledMargin_nonpos_of_bellmanEvalAccepts_invariant
      (V := graphPotential)
      (next := graphSmokeNext)
      (InRange := fun s : State => s < stateCount)
      (start := rootState)
      (const := (176 : Int))
      (scaledMargin := scaledMargin)
      (wordOf := fun rank : Fin numPairWords =>
        faceLabelsInContributionOrder smokeLabelOfFace
          (canonicalSeqOfPairWord (unrankPairWord rank)))
      (by
        intro s label t gain hs hnext
        exact
          Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
            (s := s) (label := label) (t := t) (gain := gain) hs hnext)
      graphRootInRange
      graphRootBound
      hevalLang.eval_accepts

theorem socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticEvalSocket
