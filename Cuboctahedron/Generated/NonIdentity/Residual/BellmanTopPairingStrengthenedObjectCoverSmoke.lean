import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLanguageSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root

/-!
Semantic object-cover smoke for the strengthened top-pairing Bellman route.

The previous smoke proves that the strengthened semantic language supplies a
deterministic evaluator acceptance proof.  This module composes that fact with
the generated split transition-validity root and the generic Bellman invariant
theorem, producing the actual rank-level margin bound without sampled rank
objects or sampled paths.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedObjectCoverSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

theorem graphRootInRange :
    rootState < stateCount := by
  unfold rootState stateCount
  decide

theorem graphRootBound :
    (176 : Int) + graphPotential rootState <= 0 := by
  unfold rootState graphPotential
  decide

theorem strengthenedGraphAccepted_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLanguageSmoke.GraphAcceptedSequenceBadFace
          scaledMargin)
        rank Face.ym) :
    scaledMargin rank <= 0 := by
  have hevalLang :=
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLanguageSmoke.evalLanguage_of_strengthenedGraphAccepted
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

theorem semantic_object_cover_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedObjectCoverSmoke
