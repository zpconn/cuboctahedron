import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph150ContinuationSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket

/-!
Direct graph-exact socket for the graph-150 post-`zp` branch.

`BellmanTopPairingDepth11Layer4Graph150ContinuationSocket` exposes the same
branch through the older mapped-class portfolio surface.  This file exposes the
cleaner strengthened Bellman graph-exact surface directly: target-completion
semantics forces the `zp` step, a post-`zp` suffix continuation proves the
deterministic graph evaluator finish and margin bound, and the result is a
rank-local `TopPairingGraphExactEvalGateAtRank`.

This is the route preferred by the semantic-transducer pivot.  It avoids
selected-prefix membership, sampled ranks, accepted trace ids, exact affine
keys, solved start-point keys, and raw path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph150DirectEvalSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4TargetCompletionLocalStepSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

private theorem graph150PrefixEval :
    evalLabelStepFn closedBellmanNext graphRoot
      [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] =
        some (157, (134 : Int)) := by
  rfl

private theorem graph150PrefixEval_append
    {restTail : List Face} {finalGraph : Nat} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn closedBellmanNext 157 restTail =
        some (finalGraph, suffixGain)) :
    evalLabelStepFn closedBellmanNext graphRoot
      ([Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp] ++ restTail) =
        some (finalGraph, (134 : Int) + suffixGain) := by
  simpa [Int.add_assoc] using
    evalLabelStepFn_append graph150PrefixEval hsuffix

/--
Post-`zp` graph-exact continuation for the graph-150 branch.

The generated continuation should prove `suffix_exact` from semantic suffix
state, not from a sampled trace.  The suffix evaluator starts at strengthened
graph state `157`, because `graph150TargetCompletionState` forces the
deterministic `zp` local step from graph `150` with gain `114`.
-/
structure StrengthenedGraph150AfterZpGraphExactContinuationFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  completionTail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest ->
          Graph150TargetCompletionTail rest
  suffix_exact :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ restTail,
          Depth11Layer4PrefixAtRank
            rank Face.tmpm Face.zm (Face.zp :: restTail) ->
          TopPairingTargetCompletionTail
            (graph150TargetCompletionState.next Face.zp) restTail ->
          ∃ finalGraph suffixGain,
            evalLabelStepFn closedBellmanNext 157 restTail =
              some (finalGraph, suffixGain) ∧
            0 <= graphPotential finalGraph ∧
            scaledMargin rank <= graphConst + ((134 : Int) + suffixGain)

theorem graphExactEvalGateAtRank_of_graph150AfterZpGraphExactContinuation
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph150AfterZpGraphExactContinuationFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin rank Face.ym := by
  have hcompletion := hfamily.completionTail rank hstrengthened rest hprefix
  rcases graph150_rest_nonempty_of_targetCompletionTail hcompletion with
    ⟨face, restTail, hrest⟩
  subst rest
  have hz := graph150_head_of_targetCompletionTail hcompletion
  subst face
  have hcompletionNext :
      TopPairingTargetCompletionTail
        (graph150TargetCompletionState.next Face.zp) restTail :=
    TopPairingTargetCompletionTail.tail_next hcompletion
  rcases hfamily.suffix_exact rank hstrengthened restTail hprefix
      hcompletionNext with
    ⟨finalGraph, suffixGain, hsuffix, hfinal, hmargin⟩
  refine ⟨finalGraph, (134 : Int) + suffixGain, ?_⟩
  refine
    { closed := hstrengthened.toTopPairingClosedLanguageAtRank
      eval_eq := ?_
      final_nonneg := hfinal
      margin_bound := hmargin }
  have hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.tmpm :: Face.zm :: Face.zp ::
          restTail := by
    exact hprefix
  have hfull := graph150PrefixEval_append hsuffix
  change
    evalLabelStepFn closedBellmanNext graphRoot
      (topPairingRankFaceLabels rank) =
        some (finalGraph, (134 : Int) + suffixGain)
  rw [hlabels]
  exact hfull

theorem graph150DirectEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph150DirectEvalSocket
