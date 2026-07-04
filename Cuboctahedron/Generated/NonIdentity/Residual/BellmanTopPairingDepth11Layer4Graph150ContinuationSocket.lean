import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionLocalStepSocket

/-!
Graph-150 target-completion continuation socket.

The local target-completion socket proves that a semantic local branch table can
advance both the strengthened Bellman evaluator and the target-completion tail.
This file specializes that surface to the `tmpm, zm` layer-4 branch whose
target-completion state is graph 150.  The target-completion theorem forces the
next face to be `zp`; after that deterministic step the only remaining
obligation is a smaller semantic continuation over the post-`zp` suffix.

This is intentionally still a theorem surface.  It introduces no sampled ranks,
selected prefixes, accepted trace ids, exact affine keys, raw paths, or rank
tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph150ContinuationSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4MappedFinish
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionBranchSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionLocalStepSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

/--
The remaining semantic obligation after the graph-150 target-completion step.

For a rank in the `tmpm, zm` layer-4 branch, the target-completion tail forces
the next label to be `zp`.  A future generated producer should prove
`classify_after_zp` from semantic suffix information such as target-cursor
progress, schedule/square-gap facts, local-axis state, and a graph-exact margin
bound.
-/
structure StrengthenedGraph150AfterZpContinuationFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  evalTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
          strengthenedClosedPrefix4TmpmZmEvalState.Tail rest
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
          Graph150TargetCompletionTail rest
  classify_after_zp :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ restTail,
          Depth11Layer4PrefixAtRank
            rank Face.tmpm Face.zm (Face.zp :: restTail) ->
          ∀ nextState,
            strengthenedClosedEvalNext
                strengthenedClosedPrefix4TmpmZmEvalState Face.zp =
              some (nextState, (114 : Int)) ->
            nextState.Tail restTail ->
            nextState.graph = 157 ->
            TopPairingTargetCompletionTail
              (graph150TargetCompletionState.next Face.zp) restTail ->
            Depth11Layer4MappedClassCase scaledMargin rank

theorem localStepFamily_of_graph150AfterZpContinuation
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph150AfterZpContinuationFamily
        scaledMargin sequenceBadFace) :
    StrengthenedDepth11Layer4TargetCompletionLocalStepFamily
      scaledMargin sequenceBadFace Face.tmpm Face.zm
      strengthenedClosedPrefix4TmpmZmEvalState
      graph150TargetCompletionState
      strengthenedPrefix4Graph150TargetCompletionLocalBranchTable where
  evalTail := hfamily.evalTail
  completionTail := hfamily.completionTail
  rest_nonempty := by
    intro rest htail
    exact graph150_rest_nonempty_of_targetCompletionTail htail
  classify_after := by
    intro rank hstrengthened rest hprefix face restTail hrest branch hface
      nextState hnext htailNext hgraphNext hcompletionNext
    subst rest
    cases branch with
    | zp =>
        cases hface
        exact
          hfamily.classify_after_zp rank hstrengthened restTail hprefix
            nextState
            (by
              simpa [strengthenedPrefix4Graph150TargetCompletionLocalBranchTable,
                StrengthenedPrefix4Graph150Branch.face,
                StrengthenedPrefix4Graph150Branch.gain] using hnext)
            htailNext
            (by
              simpa [strengthenedPrefix4Graph150TargetCompletionLocalBranchTable,
                StrengthenedPrefix4Graph150Branch.nextGraph] using hgraphNext)
            hcompletionNext

theorem targetCompletionBranchFamily_of_graph150AfterZpContinuation
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph150AfterZpContinuationFamily
        scaledMargin sequenceBadFace) :
    StrengthenedDepth11Layer4TargetCompletionBranchFamily
      scaledMargin sequenceBadFace Face.tmpm Face.zm
      graph150TargetCompletionState :=
  targetCompletionBranchFamily_of_localStepFamily
    (localStepFamily_of_graph150AfterZpContinuation hfamily)

theorem mappedEvalGateAtRank_of_graph150AfterZpContinuation
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph150AfterZpContinuationFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    Depth11Layer4MappedGraphExactEvalGateAtRank scaledMargin rank :=
  mappedEvalGateAtRank_of_targetCompletionBranchFamily
    (targetCompletionBranchFamily_of_graph150AfterZpContinuation hfamily)
    (Or.inl ⟨rfl, Or.inr rfl⟩)
    hstrengthened hprefix

theorem scaledMargin_nonpos_of_graph150AfterZpContinuation
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph150AfterZpContinuationFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_targetCompletionBranchFamily
    (targetCompletionBranchFamily_of_graph150AfterZpContinuation hfamily)
    (Or.inl ⟨rfl, Or.inr rfl⟩)
    hstrengthened hprefix

theorem graph150ContinuationSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph150ContinuationSocket
