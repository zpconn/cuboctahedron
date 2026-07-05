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
  | prefix4YpZm
  | prefix5YpZmZp
  | prefix9YpZmZpTmmmTpmmTppmTpmp
  | prefix9YpZmTmmpTpmpTpppTpmmTmpp
  | prefix8YpZmZpTmmmTpmmTppm
  | prefix8YpZmTmmpTpmpTpppTpmm
  | prefix7YpZmZpTmmmTpmm
  | prefix7YpZmTmmpTpmpTppp
  | prefix6YpZmZpTmmm
  | prefix6YpZmTmmpTpmp
  | prefix5YpZmTmmp
  | prefix4TmpmZm
  | prefix4ZmTmpp
  deriving DecidableEq, Repr

def emittedShardStateCount : Nat := 13
def emittedShardBranchCount : Nat := 14

theorem emittedShardCount_audit :
    emittedShardStateCount = 13 /\
      emittedShardBranchCount = 14 := by
  decide

def evalState : ShardState -> StrengthenedClosedEvalState
  | .prefix4YpZm => strengthenedClosedPrefix4YpZmEvalState
  | .prefix5YpZmZp => strengthenedClosedPrefix5YpZmZpEvalState
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => strengthenedClosedPrefix9YpZmZpTmmmTpmmTppmTpmpEvalState
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => strengthenedClosedPrefix9YpZmTmmpTpmpTpppTpmmTmppEvalState
  | .prefix8YpZmZpTmmmTpmmTppm => strengthenedClosedPrefix8YpZmZpTmmmTpmmTppmEvalState
  | .prefix8YpZmTmmpTpmpTpppTpmm => strengthenedClosedPrefix8YpZmTmmpTpmpTpppTpmmEvalState
  | .prefix7YpZmZpTmmmTpmm => strengthenedClosedPrefix7YpZmZpTmmmTpmmEvalState
  | .prefix7YpZmTmmpTpmpTppp => strengthenedClosedPrefix7YpZmTmmpTpmpTpppEvalState
  | .prefix6YpZmZpTmmm => strengthenedClosedPrefix6YpZmZpTmmmEvalState
  | .prefix6YpZmTmmpTpmp => strengthenedClosedPrefix6YpZmTmmpTpmpEvalState
  | .prefix5YpZmTmmp => strengthenedClosedPrefix5YpZmTmmpEvalState
  | .prefix4TmpmZm => strengthenedClosedPrefix4TmpmZmEvalState
  | .prefix4ZmTmpp => strengthenedClosedPrefix4ZmTmppEvalState

def completionState : ShardState -> TopPairingTargetCompletionState
  | .prefix4YpZm => graph147TargetCompletionState
  | .prefix5YpZmZp => graph153TargetCompletionState
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => graph208TargetCompletionState
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => graph211TargetCompletionState
  | .prefix8YpZmZpTmmmTpmmTppm => graph191TargetCompletionState
  | .prefix8YpZmTmmpTpmpTpppTpmm => graph194TargetCompletionState
  | .prefix7YpZmZpTmmmTpmm => graph176TargetCompletionState
  | .prefix7YpZmTmmpTpmpTppp => graph178TargetCompletionState
  | .prefix6YpZmZpTmmm => graph163TargetCompletionState
  | .prefix6YpZmTmmpTpmp => graph166TargetCompletionState
  | .prefix5YpZmTmmp => graph155TargetCompletionState
  | .prefix4TmpmZm => graph150TargetCompletionState
  | .prefix4ZmTmpp => graph151TargetCompletionState

def localBranchTable :
    (state : ShardState) ->
      StrengthenedTargetCompletionLocalBranchTable
        (evalState state) (completionState state)
  | .prefix4YpZm => strengthenedPrefix4Graph147TargetCompletionLocalBranchTable
  | .prefix5YpZmZp => strengthenedPrefix5Graph153TargetCompletionLocalBranchTable
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => strengthenedPrefix9Graph208TargetCompletionLocalBranchTable
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => strengthenedPrefix9Graph211TargetCompletionLocalBranchTable
  | .prefix8YpZmZpTmmmTpmmTppm => strengthenedPrefix8Graph191TargetCompletionLocalBranchTable
  | .prefix8YpZmTmmpTpmpTpppTpmm => strengthenedPrefix8Graph194TargetCompletionLocalBranchTable
  | .prefix7YpZmZpTmmmTpmm => strengthenedPrefix7Graph176TargetCompletionLocalBranchTable
  | .prefix7YpZmTmmpTpmpTppp => strengthenedPrefix7Graph178TargetCompletionLocalBranchTable
  | .prefix6YpZmZpTmmm => strengthenedPrefix6Graph163TargetCompletionLocalBranchTable
  | .prefix6YpZmTmmpTpmp => strengthenedPrefix6Graph166TargetCompletionLocalBranchTable
  | .prefix5YpZmTmmp => strengthenedPrefix5Graph155TargetCompletionLocalBranchTable
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
