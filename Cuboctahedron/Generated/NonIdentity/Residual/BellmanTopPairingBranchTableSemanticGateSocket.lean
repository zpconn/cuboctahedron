import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket

/-!
Branch-table semantic gate socket for the split-10M top-pairing Bellman route.

The deterministic transducer pivot should produce semantic suffix evidence and
final-margin facts from `TopPairingClosedLanguageAtRank`, not from sampled
ranks, accepted traces, selected prefixes, or exact affine keys.  This file
packages that exact generated target: once a family supplies branch-table
suffix membership and a terminal margin theorem for every closed rank, the
generic ranked semantic transducer gate yields the canonical split-10M
closed-to-eval theorem.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSemanticGateSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket

/--
Generated production target for branch-table semantic membership.

`suffix` is the closed-language-to-branch-table membership theorem.  `finish`
is the terminal graph-potential and scaled-margin theorem.  Neither field is
allowed to be proved by sampled rank/path membership in production; the
intended proof uses `TopPairingTransducerTail.cons` plus a finite state/face
branch table.
-/
structure Split10MBranchTableClosedEvalFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  suffix :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        BranchTableSuffixOk rank
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank)
  finish :
    ∀ {rank : Fin numPairWords}
      {finish : FaceEvalState} {gain : Int},
      evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) =
        some (finish, gain) ->
      finish.Tail [] ->
      BranchInv finish ->
      BranchTableSuffixOk rank finish [] ->
        0 <= graphPotential finish.graph ∧
          scaledMargin rank <= (176 : Int) + gain

theorem split10MClosedToEvalGate_of_branchTableClosedEvalFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Split10MBranchTableClosedEvalFamily scaledMargin) :
    Split10MClosedToEvalGate scaledMargin :=
  closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
    (V := graphPotential)
    (next := graphSmokeNext)
    (labelOfFace := smokeLabelOfFace)
    (graphStart := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (badFace := Face.ym)
    BranchInv
    BranchTableSuffixOk
    start_inv
    (by
      intro rank hclosed
      exact hfamily.suffix rank hclosed)
    (by
      intro rank state face rest hinv htail hsuffix
      exact branchTableSuffixOk_local hinv htail hsuffix)
    (by
      intro rank finish gain heval htail hinv hsuffix
      exact hfamily.finish
        (by simpa [faceEvalNext] using heval) htail hinv hsuffix)

theorem scaledMargin_nonpos_of_branchTableClosedEvalFamily
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily : Split10MBranchTableClosedEvalFamily scaledMargin)
    (rank : Fin numPairWords)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MClosedToEvalGate
    (split10MClosedToEvalGate_of_branchTableClosedEvalFamily hfamily)
    rank hclosed

theorem branchTableSemanticGateSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSemanticGateSocket
