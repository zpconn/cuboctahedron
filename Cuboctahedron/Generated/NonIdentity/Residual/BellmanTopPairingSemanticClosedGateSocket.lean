import Cuboctahedron.Search.TopPairingTransducerSemanticGate
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root

/-!
Semantic closed-language socket for the split-10M top-pairing Bellman graph.

This is the production-facing boundary recommended by the current strategy
pivot.  Future generated membership modules should prove the `Split10M...Gate`
premises below from `TopPairingClosedLanguageAtRank` or
`TopPairingStrengthenedClosedLanguageAtRank`, using deterministic semantic
state transitions.  This file then composes that semantic evaluator gate with
the already checked graph potential inequalities.

There are deliberately no sampled rank/path objects here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

abbrev Split10MClosedToEvalGate
    (scaledMargin : Fin numPairWords -> Int) : Prop :=
  TopPairingClosedToEvalGate
    graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
    scaledMargin Face.ym

abbrev Split10MStrengthenedToEvalGate
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop :=
  TopPairingStrengthenedToEvalGate
    graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
    scaledMargin sequenceBadFace Face.ym

theorem graphRootBound :
    (176 : Int) + graphPotential rootState <= 0 := by
  change (176 : Int) + (-176 : Int) <= 0
  norm_num

theorem graphStartInRange :
    rootState < stateCount := by
  change (0 : Nat) < 970
  decide

theorem scaledMargin_nonpos_of_split10MClosedToEvalGate
    {scaledMargin : Fin numPairWords -> Int}
    (gate : Split10MClosedToEvalGate scaledMargin)
    (rank : Fin numPairWords)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 := by
  have hevalLanguage := gate rank hclosed
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
      exact
        _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
          hs hnext)
    (hstart := graphStartInRange)
    (hroot := graphRootBound)
    (heval := hevalLanguage.eval_accepts)

theorem scaledMargin_nonpos_of_split10MStrengthenedToEvalGate
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (gate : Split10MStrengthenedToEvalGate sequenceBadFace scaledMargin)
    (rank : Fin numPairWords)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    scaledMargin rank <= 0 := by
  have hevalLanguage := gate rank hstrengthened
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
      exact
        _root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Root.transition_ok_of_lt
          hs hnext)
    (hstart := graphStartInRange)
    (hroot := graphRootBound)
    (heval := hevalLanguage.eval_accepts)

theorem semanticClosedGateSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket
