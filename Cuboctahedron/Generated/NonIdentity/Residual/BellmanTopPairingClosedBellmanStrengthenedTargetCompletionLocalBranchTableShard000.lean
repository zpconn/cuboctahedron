import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Generated strengthened target-completion local branch-table shard 000.

This bounded generated-style shard packages the graph-150 semantic completion
table behind the same kind of uniform shard-state API used by the plain and
used-face branch-table shards.  It is not rank coverage; it is the
production-shaped local-transition object for deterministic closed-language
evaluator membership.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

inductive ShardState where
  | prefix4TmpmZm
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 1
def emittedShardBranchCount : Nat := 1

theorem emittedShardCount_audit :
    emittedShardStateCount = 1 /\
      emittedShardBranchCount = 1 := by
  decide

def evalState : ShardState -> StrengthenedClosedEvalState
  | .prefix4TmpmZm => strengthenedClosedPrefix4TmpmZmEvalState

def completionState : ShardState -> TopPairingTargetCompletionState
  | .prefix4TmpmZm => graph150TargetCompletionState

def localBranchTable :
    (state : ShardState) ->
      StrengthenedTargetCompletionLocalBranchTable
        (evalState state) (completionState state)
  | .prefix4TmpmZm =>
      strengthenedPrefix4Graph150TargetCompletionLocalBranchTable

theorem localTransition
    {state : ShardState} {face : Face} {rest : List Face}
    (htail : (evalState state).Tail (face :: rest))
    (hcompletion :
      TopPairingTargetCompletionTail (completionState state) (face :: rest)) :
    ∃ branch : (localBranchTable state).Branch,
      (localBranchTable state).face branch = face ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext (evalState state) face =
              some (nextState, (localBranchTable state).gain branch) ∧
            nextState.Tail rest ∧
              nextState.graph = (localBranchTable state).nextGraph branch :=
  StrengthenedTargetCompletionLocalBranchTable.localTransition
    (localBranchTable state) htail hcompletion

theorem shard000_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000
