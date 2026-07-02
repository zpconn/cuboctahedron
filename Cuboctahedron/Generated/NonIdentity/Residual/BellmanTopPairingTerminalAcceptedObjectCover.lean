import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge

/-!
Rank-level Bellman consequence for the terminal-accepted top-pairing socket.

The terminal bridge keeps the semantic-membership target small: a strengthened
closed rank must provide terminal-trace membership and one accepted trace-margin
constructor.  This module adds only the Bellman invariant step, using the split
graph transition-validity root, to derive the actual nonpositive scaled margin.

No sampled rank/path object is introduced here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge

theorem graphRootInRange :
    rootState < stateCount := by
  unfold rootState stateCount
  decide

theorem graphRootBound :
    (176 : Int) + graphPotential rootState <= 0 := by
  unfold rootState graphPotential
  decide

theorem strengthenedTerminalAcceptedEval_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.TerminalAcceptedEvalSequenceBadFace
          scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 := by
  have hevalLang :=
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedBridge.evalLanguage_of_strengthenedTerminalAcceptedEval
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

theorem terminalAcceptedObjectCover_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalAcceptedObjectCover
