import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Generated strengthened target-completion local branch-table shard 000.

This bounded generated shard packages semantic Bellman local branch
tables behind one uniform shard-state API.  It is not rank coverage;
it is the production-shaped local-transition object that future
generated suffix evidence should consume.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

inductive ShardState where
  | prefix4TmpmZm
  | prefix4ZmTmpp
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 2
def emittedShardBranchCount : Nat := 2

theorem emittedShardCount_audit :
    emittedShardStateCount = 2 /\
      emittedShardBranchCount = 2 := by
  decide

def evalState : ShardState -> StrengthenedClosedEvalState
  | .prefix4TmpmZm => strengthenedClosedPrefix4TmpmZmEvalState
  | .prefix4ZmTmpp => strengthenedClosedPrefix4ZmTmppEvalState

def completionState : ShardState -> TopPairingTargetCompletionState
  | .prefix4TmpmZm => graph150TargetCompletionState
  | .prefix4ZmTmpp => graph151TargetCompletionState

def localBranchTable :
    (state : ShardState) ->
      StrengthenedTargetCompletionLocalBranchTable
        (evalState state) (completionState state)
  | .prefix4TmpmZm => strengthenedPrefix4Graph150TargetCompletionLocalBranchTable
  | .prefix4ZmTmpp => strengthenedPrefix4Graph151TargetCompletionLocalBranchTable

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
