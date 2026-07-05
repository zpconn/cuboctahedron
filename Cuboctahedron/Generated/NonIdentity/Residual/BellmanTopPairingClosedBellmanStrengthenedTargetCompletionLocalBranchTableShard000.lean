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
  | prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp
  | prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm
  | prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp
  | prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp
  | prefix9YpZmZpTmmmTpmmTppmTpmp
  | prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp
  | prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm
  | prefix9YpZmTmmpTpmpTpppTpmmTmpp
  | prefix10YpZmZpTmmmTpmmTppmTpmpTmpm
  | prefix10YpZmTmmpTpmpTpppTpmmTmppTppm
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

def emittedShardStateCount : Nat := 21
def emittedShardBranchCount : Nat := 22
def emittedShardExternalTargetCount : Nat := 4

theorem emittedShardCount_audit :
    emittedShardStateCount = 21 /\
      emittedShardBranchCount = 22 /\
      emittedShardExternalTargetCount = 4 := by
  decide

def evalState : ShardState -> StrengthenedClosedEvalState
  | .prefix4YpZm => strengthenedClosedPrefix4YpZmEvalState
  | .prefix5YpZmZp => strengthenedClosedPrefix5YpZmZpEvalState
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp => strengthenedClosedPrefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppEvalState
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm => strengthenedClosedPrefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmEvalState
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp => strengthenedClosedPrefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmpEvalState
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp => strengthenedClosedPrefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZpEvalState
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => strengthenedClosedPrefix9YpZmZpTmmmTpmmTppmTpmpEvalState
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp => strengthenedClosedPrefix11YpZmZpTmmmTpmmTppmTpmpTmpmTpppEvalState
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm => strengthenedClosedPrefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpmEvalState
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => strengthenedClosedPrefix9YpZmTmmpTpmpTpppTpmmTmppEvalState
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm => strengthenedClosedPrefix10YpZmZpTmmmTpmmTppmTpmpTmpmEvalState
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm => strengthenedClosedPrefix10YpZmTmmpTpmpTpppTpmmTmppTppmEvalState
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
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp => graph69TargetCompletionState
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm => graph75TargetCompletionState
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp => graph112TargetCompletionState
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp => graph109TargetCompletionState
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => graph208TargetCompletionState
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp => graph36TargetCompletionState
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm => graph41TargetCompletionState
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => graph211TargetCompletionState
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm => graph6TargetCompletionState
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm => graph11TargetCompletionState
  | .prefix8YpZmZpTmmmTpmmTppm => graph191TargetCompletionState
  | .prefix8YpZmTmmpTpmpTpppTpmm => graph194TargetCompletionState
  | .prefix7YpZmZpTmmmTpmm => graph176TargetCompletionState
  | .prefix7YpZmTmmpTpmpTppp => graph178TargetCompletionState
  | .prefix6YpZmZpTmmm => graph163TargetCompletionState
  | .prefix6YpZmTmmpTpmp => graph166TargetCompletionState
  | .prefix5YpZmTmmp => graph155TargetCompletionState
  | .prefix4TmpmZm => graph150TargetCompletionState
  | .prefix4ZmTmpp => graph151TargetCompletionState

/--
Deterministic target for one generated local transition.

Most local transitions remain inside this shard.  A few transitions leave this
shard: the graph-147 lane reaches terminal Bellman graph states `141` and
`138`, while the graph-150/151 lanes hand off to external graph states already
handled by other terminal-machine experiments.
-/
inductive ShardStepTarget where
  | shard (state : ShardState)
  | externalGraph (graph : Nat)
  deriving DecidableEq, Repr

namespace ShardStepTarget

def graph : ShardStepTarget -> Nat
  | .shard state => (evalState state).graph
  | .externalGraph graph => graph

end ShardStepTarget

/--
Deterministic semantic transition table for shard 000.

This table is not rank coverage and contains no sampled prefix data.  It is
the compact recursion target for the next closed-language-to-evaluator gate:
starting from the shared graph-147 layer-4 state, target-completion and the
strengthened evaluator can follow this table until terminal graphs `141` or
`138`.
-/
def nextTarget? : ShardState -> Face -> Option (ShardStepTarget × Int)
  | .prefix4YpZm, Face.zp =>
      some (.shard .prefix5YpZmZp, (-10 : Int))
  | .prefix4YpZm, Face.tmmp =>
      some (.shard .prefix5YpZmTmmp, (-124 : Int))
  | .prefix5YpZmZp, Face.tmmm =>
      some (.shard .prefix6YpZmZpTmmm, (-124 : Int))
  | .prefix5YpZmTmmp, Face.tpmp =>
      some (.shard .prefix6YpZmTmmpTpmp, (96 : Int))
  | .prefix6YpZmZpTmmm, Face.tpmm =>
      some (.shard .prefix7YpZmZpTmmmTpmm, (96 : Int))
  | .prefix6YpZmTmmpTpmp, Face.tppp =>
      some (.shard .prefix7YpZmTmmpTpmpTppp, (-36 : Int))
  | .prefix7YpZmZpTmmmTpmm, Face.tppm =>
      some (.shard .prefix8YpZmZpTmmmTpmmTppm, (-36 : Int))
  | .prefix7YpZmTmmpTpmpTppp, Face.tpmm =>
      some (.shard .prefix8YpZmTmmpTpmpTpppTpmm, (-144 : Int))
  | .prefix8YpZmZpTmmmTpmmTppm, Face.tpmp =>
      some (.shard .prefix9YpZmZpTmmmTpmmTppmTpmp, (-144 : Int))
  | .prefix8YpZmTmmpTpmpTpppTpmm, Face.tmpp =>
      some (.shard .prefix9YpZmTmmpTpmpTpppTpmmTmpp, (-144 : Int))
  | .prefix9YpZmZpTmmmTpmmTppmTpmp, Face.tmpm =>
      some (.shard .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm, (-144 : Int))
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp, Face.tppm =>
      some (.shard .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm, (-36 : Int))
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm, Face.tppp =>
      some (.shard .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp, (-36 : Int))
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm, Face.tmpm =>
      some (.shard .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm, (96 : Int))
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp, Face.tmpp =>
      some (.shard .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp, (96 : Int))
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm, Face.tmmm =>
      some (.shard .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm,
        (-124 : Int))
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp, Face.tmmp =>
      some (.shard .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp,
        (-124 : Int))
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm, Face.zp =>
      some (.shard .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp,
        (-10 : Int))
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp, Face.xp =>
      some (.externalGraph 141, (-73 : Int))
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp, Face.xp =>
      some (.externalGraph 138, (-73 : Int))
  | .prefix4TmpmZm, Face.zp =>
      some (.externalGraph 157, (114 : Int))
  | .prefix4ZmTmpp, Face.tppp =>
      some (.externalGraph 159, (96 : Int))
  | _, _ => none

theorem nextTarget?_terminal_graph112 :
    nextTarget?
        .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp Face.xp =
      some (.externalGraph 141, (-73 : Int)) := by
  rfl

theorem nextTarget?_terminal_graph109 :
    nextTarget?
        .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp Face.xp =
      some (.externalGraph 138, (-73 : Int)) := by
  rfl

theorem nextTarget?_prefix4YpZm_zp :
    nextTarget? .prefix4YpZm Face.zp =
      some (.shard .prefix5YpZmZp, (-10 : Int)) := by
  rfl

theorem nextTarget?_prefix4YpZm_tmmp :
    nextTarget? .prefix4YpZm Face.tmmp =
      some (.shard .prefix5YpZmTmmp, (-124 : Int)) := by
  rfl

def localBranchTable :
    (state : ShardState) ->
      StrengthenedTargetCompletionLocalBranchTable
        (evalState state) (completionState state)
  | .prefix4YpZm => strengthenedPrefix4Graph147TargetCompletionLocalBranchTable
  | .prefix5YpZmZp => strengthenedPrefix5Graph153TargetCompletionLocalBranchTable
  | .prefix12YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmpp => strengthenedPrefix12Graph69TargetCompletionLocalBranchTable
  | .prefix12YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmm => strengthenedPrefix12Graph75TargetCompletionLocalBranchTable
  | .prefix13YpZmZpTmmmTpmmTppmTpmpTmpmTpppTmppTmmp => strengthenedPrefix13Graph112TargetCompletionLocalBranchTable
  | .prefix13YpZmTmmpTpmpTpppTpmmTmppTppmTmpmTmmmZp => strengthenedPrefix13Graph109TargetCompletionLocalBranchTable
  | .prefix9YpZmZpTmmmTpmmTppmTpmp => strengthenedPrefix9Graph208TargetCompletionLocalBranchTable
  | .prefix11YpZmZpTmmmTpmmTppmTpmpTmpmTppp => strengthenedPrefix11Graph36TargetCompletionLocalBranchTable
  | .prefix11YpZmTmmpTpmpTpppTpmmTmppTppmTmpm => strengthenedPrefix11Graph41TargetCompletionLocalBranchTable
  | .prefix9YpZmTmmpTpmpTpppTpmmTmpp => strengthenedPrefix9Graph211TargetCompletionLocalBranchTable
  | .prefix10YpZmZpTmmmTpmmTppmTpmpTmpm => strengthenedPrefix10Graph6TargetCompletionLocalBranchTable
  | .prefix10YpZmTmmpTpmpTpppTpmmTmppTppm => strengthenedPrefix10Graph11TargetCompletionLocalBranchTable
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
