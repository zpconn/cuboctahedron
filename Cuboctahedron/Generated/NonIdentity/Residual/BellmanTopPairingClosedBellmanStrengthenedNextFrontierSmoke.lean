import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
import Cuboctahedron.Search.TopPairingTargetCompletionTail
import Cuboctahedron.Search.TopPairingUsedFaceTail

set_option linter.unusedSimpArgs false

/-!
Bounded next-frontier smoke for the strengthened closed Bellman transducer.

The first generated local branch-table shard covers graph states `143`, `144`,
`145`, and `146`.  The next frontier contains graph state `147`, reached by two
semantic prefixes:

* `[xm, ym, yp, zm]`
* `[xm, ym, zm, yp]`

This module checks that these two routes are the same semantic eval state.  That
is the key sanity check before graph-state keyed local tables are extended: if
the semantic states diverged, the next shard would need a finer key than graph
state alone.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke

def strengthenedClosedUsedEvalNext :
    TopPairingUsedFaceEvalState Nat -> Face ->
      Option (TopPairingUsedFaceEvalState Nat × Int) :=
  TopPairingUsedFaceEvalState.next? closedBellmanNext (fun face : Face => face)

def strengthenedClosedPrefix4YpZmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3YpTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3YpTransducerState.gap
    Face.zm
  k := strengthenedClosedPrefix3YpTransducerState.k
  parity := strengthenedClosedPrefix3YpTransducerState.parity.applyPair
    (pairOfFace Face.zm)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3YpTransducerState.linear Face.zm

def strengthenedClosedPrefix4YpZmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4YpZmTransducerState
  graph := 147

def strengthenedClosedPrefix4ZmYpTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3ZmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3ZmTransducerState.gap
    Face.yp
  k := strengthenedClosedPrefix3ZmTransducerState.k
  parity := strengthenedClosedPrefix3ZmTransducerState.parity.applyPair
    (pairOfFace Face.yp)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3ZmTransducerState.linear Face.yp

def strengthenedClosedPrefix4ZmYpEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4ZmYpTransducerState
  graph := 147

theorem strengthenedClosed_prefix4_yp_zm_next_from_prefix3Yp :
    strengthenedClosedEvalNext strengthenedClosedPrefix3YpEvalState Face.zm =
      some (strengthenedClosedPrefix4YpZmEvalState, (-10 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_zm_yp_next_from_prefix3Zm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3ZmEvalState Face.yp =
      some (strengthenedClosedPrefix4ZmYpEvalState, (-73 : Int)) := by
  rfl

private theorem strengthenedClosedTransducerState_ext
    {a b : TopPairingTransducerState}
    (hstep : a.step = b.step) (hgap : a.gap = b.gap) (hk : a.k = b.k)
    (hparity : a.parity = b.parity) (hlinear : a.linear = b.linear) :
    a = b := by
  cases a
  cases b
  simp_all

private theorem strengthenedClosedEvalState_ext
    {a b : StrengthenedClosedEvalState}
    (htransducer : a.transducer = b.transducer) (hgraph : a.graph = b.graph) :
    a = b := by
  cases a
  cases b
  simp_all

theorem strengthenedClosedPrefix4YpZm_transducer_eq_zm_yp :
    strengthenedClosedPrefix4YpZmTransducerState =
      strengthenedClosedPrefix4ZmYpTransducerState := by
  apply strengthenedClosedTransducerState_ext
  · rfl
  · rfl
  · rfl
  · simp [strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix4ZmYpTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      pairOfFace, SqParity.applyPair, SqParity.toggleForPair,
      SqParity.toggleX, SqParity.toggleY, SqParity.toggleZ,
      SqParity.xor, SqParity.id]
  · apply Mat3.ext <;> simp [strengthenedClosedPrefix4YpZmTransducerState,
    strengthenedClosedPrefix4ZmYpTransducerState,
    strengthenedClosedPrefix3YpTransducerState,
    strengthenedClosedPrefix3ZmTransducerState,
    strengthenedClosedPrefix2TransducerState,
    topPairingNextGap, pairOfFace, isSquarePair, topPairingNextLinear,
    SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
    SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
    normalQ, matMul, reflM, matSub, scalarMat, outer, dot, matId]

theorem strengthenedClosedPrefix4YpZm_eval_eq_zm_yp :
    strengthenedClosedPrefix4YpZmEvalState =
      strengthenedClosedPrefix4ZmYpEvalState := by
  apply strengthenedClosedEvalState_ext
  · exact strengthenedClosedPrefix4YpZm_transducer_eq_zm_yp
  · rfl

def strengthenedClosedPrefix4YpTmmmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3YpTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3YpTransducerState.gap
    Face.tmmm
  k := strengthenedClosedPrefix3YpTransducerState.k + 1
  parity := strengthenedClosedPrefix3YpTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix3YpTransducerState.linear Face.tmmm

def strengthenedClosedPrefix4YpTmmmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4YpTmmmTransducerState
  graph := 148

def strengthenedClosedPrefix4ZmZpTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3ZmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3ZmTransducerState.gap
    Face.zp
  k := strengthenedClosedPrefix3ZmTransducerState.k
  parity := strengthenedClosedPrefix3ZmTransducerState.parity.applyPair
    (pairOfFace Face.zp)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3ZmTransducerState.linear Face.zp

def strengthenedClosedPrefix4ZmZpEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4ZmZpTransducerState
  graph := 149

def strengthenedClosedPrefix4TmpmZmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3TmpmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3TmpmTransducerState.gap
    Face.zm
  k := strengthenedClosedPrefix3TmpmTransducerState.k
  parity := strengthenedClosedPrefix3TmpmTransducerState.parity.applyPair
    (pairOfFace Face.zm)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3TmpmTransducerState.linear Face.zm

def strengthenedClosedPrefix4TmpmZmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4TmpmZmTransducerState
  graph := 150

def strengthenedClosedPrefix4ZmTmppTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3ZmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3ZmTransducerState.gap
    Face.tmpp
  k := strengthenedClosedPrefix3ZmTransducerState.k + 1
  parity := strengthenedClosedPrefix3ZmTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix3ZmTransducerState.linear Face.tmpp

def strengthenedClosedPrefix4ZmTmppEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4ZmTmppTransducerState
  graph := 151

def strengthenedClosedPrefix4TmpmTppmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3TmpmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3TmpmTransducerState.gap
    Face.tppm
  k := strengthenedClosedPrefix3TmpmTransducerState.k + 1
  parity := strengthenedClosedPrefix3TmpmTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix3TmpmTransducerState.linear Face.tppm

def strengthenedClosedPrefix4TmpmTppmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4TmpmTppmTransducerState
  graph := 152

theorem strengthenedClosed_prefix4_yp_tmmm_next_from_prefix3Yp :
    strengthenedClosedEvalNext strengthenedClosedPrefix3YpEvalState Face.tmmm =
      some (strengthenedClosedPrefix4YpTmmmEvalState, (-124 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_zm_zp_next_from_prefix3Zm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3ZmEvalState Face.zp =
      some (strengthenedClosedPrefix4ZmZpEvalState, (-10 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_tmpm_zm_next_from_prefix3Tmpm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3TmpmEvalState Face.zm =
      some (strengthenedClosedPrefix4TmpmZmEvalState, (114 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_zm_tmpp_next_from_prefix3Zm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3ZmEvalState Face.tmpp =
      some (strengthenedClosedPrefix4ZmTmppEvalState, (-124 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_tmpm_tppm_next_from_prefix3Tmpm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3TmpmEvalState Face.tppm =
      some (strengthenedClosedPrefix4TmpmTppmEvalState, (96 : Int)) := by
  rfl

inductive StrengthenedPrefix4Graph147Branch where
  | zp | tmmp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph147Branch

def face : StrengthenedPrefix4Graph147Branch -> Face
  | .zp => Face.zp
  | .tmmp => Face.tmmp

def nextGraph : StrengthenedPrefix4Graph147Branch -> Nat
  | .zp => 153
  | .tmmp => 155

def gain : StrengthenedPrefix4Graph147Branch -> Int
  | .zp => -10
  | .tmmp => -124

theorem step (branch : StrengthenedPrefix4Graph147Branch) :
    ClosedBellmanStep 147 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0135_l13
    | exact ClosedBellmanStep.e0136_l01

end StrengthenedPrefix4Graph147Branch

theorem strengthenedPrefix4Graph147Branch_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpZmEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph147Branch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix4YpZmTransducerState.step
        strengthenedClosedPrefix4YpZmTransducerState.gap
        strengthenedClosedPrefix4YpZmTransducerState.k
        strengthenedClosedPrefix4YpZmTransducerState.parity
        strengthenedClosedPrefix4YpZmTransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix4YpZmEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph147Branch.zp, rfl⟩
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph147Branch.tmmp, rfl⟩
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons

def strengthenedPrefix4Graph147LocalBranchTable :
    StrengthenedLocalBranchTable strengthenedClosedPrefix4YpZmEvalState where
  Branch := StrengthenedPrefix4Graph147Branch
  face := StrengthenedPrefix4Graph147Branch.face
  nextGraph := StrengthenedPrefix4Graph147Branch.nextGraph
  gain := StrengthenedPrefix4Graph147Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 147
      (StrengthenedPrefix4Graph147Branch.face branch)
      (StrengthenedPrefix4Graph147Branch.nextGraph branch)
      (StrengthenedPrefix4Graph147Branch.gain branch)
    exact StrengthenedPrefix4Graph147Branch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix4Graph147Branch_of_tail htail

inductive StrengthenedPrefix4Graph151Branch where
  | tppp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph151Branch

def face : StrengthenedPrefix4Graph151Branch -> Face
  | .tppp => Face.tppp

def nextGraph : StrengthenedPrefix4Graph151Branch -> Nat
  | .tppp => 159

def gain : StrengthenedPrefix4Graph151Branch -> Int
  | .tppp => 96

theorem step (branch : StrengthenedPrefix4Graph151Branch) :
    ClosedBellmanStep 151 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0142_l07

end StrengthenedPrefix4Graph151Branch

inductive StrengthenedPrefix4Graph152Branch where
  | zp | tpmm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph152Branch

def face : StrengthenedPrefix4Graph152Branch -> Face
  | .zp => Face.zp
  | .tpmm => Face.tpmm

def nextGraph : StrengthenedPrefix4Graph152Branch -> Nat
  | .zp => 160
  | .tpmm => 161

def gain : StrengthenedPrefix4Graph152Branch -> Int
  | .zp => -18
  | .tpmm => -36

theorem step (branch : StrengthenedPrefix4Graph152Branch) :
    ClosedBellmanStep 152 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0143_l13
    | exact ClosedBellmanStep.e0144_l04

end StrengthenedPrefix4Graph152Branch

inductive StrengthenedPrefix4Graph149Branch where
  | yp | tmpm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph149Branch

def face : StrengthenedPrefix4Graph149Branch -> Face
  | .yp => Face.yp
  | .tmpm => Face.tmpm

def nextGraph : StrengthenedPrefix4Graph149Branch -> Nat
  | .yp => 153
  | .tmpm => 158

def gain : StrengthenedPrefix4Graph149Branch -> Int
  | .yp => -73
  | .tmpm => -124

theorem step (branch : StrengthenedPrefix4Graph149Branch) :
    ClosedBellmanStep 149 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0139_l11
    | exact ClosedBellmanStep.e0140_l02

end StrengthenedPrefix4Graph149Branch

inductive StrengthenedPrefix4Graph150Branch where
  | zp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph150Branch

def face : StrengthenedPrefix4Graph150Branch -> Face
  | .zp => Face.zp

def nextGraph : StrengthenedPrefix4Graph150Branch -> Nat
  | .zp => 157

def gain : StrengthenedPrefix4Graph150Branch -> Int
  | .zp => 114

theorem step (branch : StrengthenedPrefix4Graph150Branch) :
    ClosedBellmanStep 150 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0141_l13

end StrengthenedPrefix4Graph150Branch

theorem strengthenedPrefix4Graph150Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix4TmpmZmEvalState.Tail (face :: rest))
    (hcompletion : Graph150TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph150Branch,
      branch.face = face := by
  have hz := graph150_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix4Graph150Branch.zp, rfl⟩

structure StrengthenedTargetCompletionLocalBranchTable
    (state : StrengthenedClosedEvalState)
    (completionState : TopPairingTargetCompletionState) where
  Branch : Type
  face : Branch -> Face
  nextGraph : Branch -> Nat
  gain : Branch -> Int
  step :
    ∀ branch,
      ClosedBellmanStep state.graph (face branch)
        (nextGraph branch) (gain branch)
  branch_of_tail :
    ∀ {face0 : Face} {rest : List Face},
      state.Tail (face0 :: rest) ->
        TopPairingTargetCompletionTail completionState (face0 :: rest) ->
          ∃ branch : Branch, face branch = face0

namespace StrengthenedTargetCompletionLocalBranchTable

theorem localTransition
    {state : StrengthenedClosedEvalState}
    {completionState : TopPairingTargetCompletionState}
    (table : StrengthenedTargetCompletionLocalBranchTable state completionState)
    {face0 : Face} {rest : List Face}
    (htail : state.Tail (face0 :: rest))
    (hcompletion :
      TopPairingTargetCompletionTail completionState (face0 :: rest)) :
    ∃ branch : table.Branch,
      table.face branch = face0 ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext state face0 =
              some (nextState, table.gain branch) ∧
            nextState.Tail rest ∧
              nextState.graph = table.nextGraph branch := by
  rcases table.branch_of_tail htail hcompletion with ⟨branch, hface⟩
  subst face0
  rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := state) (face := table.face branch) (rest := rest)
      htail (table.step branch) with
    ⟨nextState, hnext, htailNext, hgraphNext⟩
  exact ⟨branch, rfl, nextState, hnext, htailNext, hgraphNext⟩

end StrengthenedTargetCompletionLocalBranchTable

def strengthenedPrefix4Graph150TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix4TmpmZmEvalState graph150TargetCompletionState where
  Branch := StrengthenedPrefix4Graph150Branch
  face := StrengthenedPrefix4Graph150Branch.face
  nextGraph := StrengthenedPrefix4Graph150Branch.nextGraph
  gain := StrengthenedPrefix4Graph150Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 150
      (StrengthenedPrefix4Graph150Branch.face branch)
      (StrengthenedPrefix4Graph150Branch.nextGraph branch)
      (StrengthenedPrefix4Graph150Branch.gain branch)
    exact StrengthenedPrefix4Graph150Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix4Graph150Branch_of_tail_and_targetCompletionTail
        htail hcompletion

/--
The exact semantic state for the shared graph-147 frontier after either
contribution prefix `[xm, ym, yp, zm]` or `[xm, ym, zm, yp]`.

The two prefixes have the same strengthened transducer state, and this
target-completion state records the corresponding remaining-face, square-gap,
parity, and cancellation cursor data.  It is a semantic deterministic state,
not a sampled prefix table.
-/
def graph147TargetCompletionState : TopPairingTargetCompletionState where
  step := 4
  gap := 0
  parity := { x := true, y := false, z := true }
  remaining :=
    [ Face.zp, Face.xp, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp,
      Face.tpmm, Face.tpmp, Face.tppm, Face.tppp ]
  triState :=
    { shadowLen := 0
      stack := []
      cancellationsRev := [] }

abbrev Graph147TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph147TargetCompletionState labels

theorem graph147_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph147TargetCompletionTail (face :: rest)) :
    face = Face.zp ∨ face = Face.tmmp ∨ face = Face.tmpm ∨
      face = Face.tpmm ∨ face = Face.tppp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [Graph147TargetCompletionTail, graph147TargetCompletionState,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair] at hremaining hschedule hsquare ⊢

private theorem graph147_tmpm_canComplete_false :
    (graph147TargetCompletionState.next Face.tmpm).canComplete = false := by
  rfl

private theorem graph147_tpmm_canComplete_false :
    (graph147TargetCompletionState.next Face.tpmm).canComplete = false := by
  rfl

private theorem graph147_tppp_canComplete_false :
    (graph147TargetCompletionState.next Face.tppp).canComplete = false := by
  rfl

private theorem no_tail_after_graph147_tmpm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph147TargetCompletionState.next Face.tmpm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph147_tmpm_canComplete_false h

private theorem no_tail_after_graph147_tpmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph147TargetCompletionState.next Face.tpmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph147_tpmm_canComplete_false h

private theorem no_tail_after_graph147_tppp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph147TargetCompletionState.next Face.tppp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph147_tppp_canComplete_false h

theorem graph147_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph147TargetCompletionTail (face :: rest)) :
    face = Face.zp ∨ face = Face.tmmp := by
  rcases graph147_head_candidate_of_targetCompletionTail htail with
    hzp | htmmp | htmpm | htpmm | htppp
  · exact Or.inl hzp
  · exact Or.inr htmmp
  · subst face
    exact False.elim
      (no_tail_after_graph147_tmpm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph147_tpmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph147_tppp
        (TopPairingTargetCompletionTail.tail_next htail))

theorem strengthenedPrefix4Graph147Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix4YpZmEvalState.Tail (face :: rest))
    (hcompletion : Graph147TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph147Branch,
      branch.face = face := by
  rcases graph147_head_of_targetCompletionTail hcompletion with hzp | htmmp
  · subst face
    exact ⟨StrengthenedPrefix4Graph147Branch.zp, rfl⟩
  · subst face
    exact ⟨StrengthenedPrefix4Graph147Branch.tmmp, rfl⟩

def strengthenedPrefix4Graph147TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix4YpZmEvalState graph147TargetCompletionState where
  Branch := StrengthenedPrefix4Graph147Branch
  face := StrengthenedPrefix4Graph147Branch.face
  nextGraph := StrengthenedPrefix4Graph147Branch.nextGraph
  gain := StrengthenedPrefix4Graph147Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 147
      (StrengthenedPrefix4Graph147Branch.face branch)
      (StrengthenedPrefix4Graph147Branch.nextGraph branch)
      (StrengthenedPrefix4Graph147Branch.gain branch)
    exact StrengthenedPrefix4Graph147Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix4Graph147Branch_of_tail_and_targetCompletionTail
        htail hcompletion

def strengthenedClosedPrefix5YpZmZpEvalState : StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext strengthenedClosedPrefix4YpZmEvalState
      Face.zp with
  | some (state, _gain) => state
  | none => strengthenedClosedPrefix4YpZmEvalState

def strengthenedClosedPrefix5YpZmTmmpEvalState : StrengthenedClosedEvalState :=
  match strengthenedClosedEvalNext strengthenedClosedPrefix4YpZmEvalState
      Face.tmmp with
  | some (state, _gain) => state
  | none => strengthenedClosedPrefix4YpZmEvalState

theorem strengthenedClosed_prefix5_yp_zm_zp_next_from_graph147 :
    strengthenedClosedEvalNext strengthenedClosedPrefix4YpZmEvalState
        Face.zp =
      some (strengthenedClosedPrefix5YpZmZpEvalState, (-10 : Int)) := by
  rfl

theorem strengthenedClosed_prefix5_yp_zm_tmmp_next_from_graph147 :
    strengthenedClosedEvalNext strengthenedClosedPrefix4YpZmEvalState
        Face.tmmp =
      some (strengthenedClosedPrefix5YpZmTmmpEvalState, (-124 : Int)) := by
  rfl

def graph153TargetCompletionState : TopPairingTargetCompletionState :=
  graph147TargetCompletionState.next Face.zp

def graph155TargetCompletionState : TopPairingTargetCompletionState :=
  graph147TargetCompletionState.next Face.tmmp

abbrev Graph153TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph153TargetCompletionState labels

abbrev Graph155TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph155TargetCompletionState labels

theorem graph153_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph153TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tpmp ∨ face = Face.tppm ∨
      face = Face.tppp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [Graph153TargetCompletionTail, graph153TargetCompletionState,
      graph147TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?] at hremaining hschedule hsquare ⊢

private theorem graph153_tpmp_canComplete_false :
    (graph153TargetCompletionState.next Face.tpmp).canComplete = false := by
  rfl

private theorem graph153_tppm_canComplete_false :
    (graph153TargetCompletionState.next Face.tppm).canComplete = false := by
  rfl

private theorem graph153_tppp_canComplete_false :
    (graph153TargetCompletionState.next Face.tppp).canComplete = false := by
  rfl

private theorem no_tail_after_graph153_tpmp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph153TargetCompletionState.next Face.tpmp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph153_tpmp_canComplete_false h

private theorem no_tail_after_graph153_tppm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph153TargetCompletionState.next Face.tppm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph153_tppm_canComplete_false h

private theorem no_tail_after_graph153_tppp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph153TargetCompletionState.next Face.tppp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph153_tppp_canComplete_false h

theorem graph153_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph153TargetCompletionTail (face :: rest)) :
    face = Face.tmmm := by
  rcases graph153_head_candidate_of_targetCompletionTail htail with
    htmmm | htpmp | htppm | htppp
  · exact htmmm
  · subst face
    exact False.elim
      (no_tail_after_graph153_tpmp
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph153_tppm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph153_tppp
        (TopPairingTargetCompletionTail.tail_next htail))

theorem graph155_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph155TargetCompletionTail (face :: rest)) :
    face = Face.zp ∨ face = Face.tmmm ∨ face = Face.tpmp ∨
      face = Face.tppm ∨ face = Face.tppp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [Graph155TargetCompletionTail, graph155TargetCompletionState,
      graph147TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      topPairingNextGap, pairOfFace, isSquarePair, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph155_zp_canComplete_false :
    (graph155TargetCompletionState.next Face.zp).canComplete = false := by
  rfl

private theorem graph155_tmmm_canComplete_false :
    (graph155TargetCompletionState.next Face.tmmm).canComplete = false := by
  rfl

private theorem graph155_tppm_canComplete_false :
    (graph155TargetCompletionState.next Face.tppm).canComplete = false := by
  rfl

private theorem graph155_tppp_canComplete_false :
    (graph155TargetCompletionState.next Face.tppp).canComplete = false := by
  rfl

private theorem no_tail_after_graph155_zp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph155TargetCompletionState.next Face.zp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph155_zp_canComplete_false h

private theorem no_tail_after_graph155_tmmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph155TargetCompletionState.next Face.tmmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph155_tmmm_canComplete_false h

private theorem no_tail_after_graph155_tppm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph155TargetCompletionState.next Face.tppm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph155_tppm_canComplete_false h

private theorem no_tail_after_graph155_tppp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph155TargetCompletionState.next Face.tppp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph155_tppp_canComplete_false h

theorem graph155_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph155TargetCompletionTail (face :: rest)) :
    face = Face.tpmp := by
  rcases graph155_head_candidate_of_targetCompletionTail htail with
    hzp | htmmm | htpmp | htppm | htppp
  · subst face
    exact False.elim
      (no_tail_after_graph155_zp
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph155_tmmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htpmp
  · subst face
    exact False.elim
      (no_tail_after_graph155_tppm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph155_tppp
        (TopPairingTargetCompletionTail.tail_next htail))

inductive StrengthenedPrefix5Graph153Branch where
  | tmmm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix5Graph153Branch

def face : StrengthenedPrefix5Graph153Branch -> Face
  | .tmmm => Face.tmmm

def nextGraph : StrengthenedPrefix5Graph153Branch -> Nat
  | .tmmm => 163

def gain : StrengthenedPrefix5Graph153Branch -> Int
  | .tmmm => -124

theorem step (branch : StrengthenedPrefix5Graph153Branch) :
    ClosedBellmanStep 153 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0145_l00

end StrengthenedPrefix5Graph153Branch

inductive StrengthenedPrefix5Graph155Branch where
  | tpmp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix5Graph155Branch

def face : StrengthenedPrefix5Graph155Branch -> Face
  | .tpmp => Face.tpmp

def nextGraph : StrengthenedPrefix5Graph155Branch -> Nat
  | .tpmp => 166

def gain : StrengthenedPrefix5Graph155Branch -> Int
  | .tpmp => 96

theorem step (branch : StrengthenedPrefix5Graph155Branch) :
    ClosedBellmanStep 155 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0148_l05

end StrengthenedPrefix5Graph155Branch

theorem strengthenedPrefix5Graph153Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix5YpZmZpEvalState.Tail (face :: rest))
    (hcompletion : Graph153TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix5Graph153Branch,
      branch.face = face := by
  have htmmm := graph153_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix5Graph153Branch.tmmm, rfl⟩

theorem strengthenedPrefix5Graph155Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix5YpZmTmmpEvalState.Tail (face :: rest))
    (hcompletion : Graph155TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix5Graph155Branch,
      branch.face = face := by
  have htpmp := graph155_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix5Graph155Branch.tpmp, rfl⟩

def strengthenedPrefix5Graph153TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix5YpZmZpEvalState graph153TargetCompletionState where
  Branch := StrengthenedPrefix5Graph153Branch
  face := StrengthenedPrefix5Graph153Branch.face
  nextGraph := StrengthenedPrefix5Graph153Branch.nextGraph
  gain := StrengthenedPrefix5Graph153Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 153
      (StrengthenedPrefix5Graph153Branch.face branch)
      (StrengthenedPrefix5Graph153Branch.nextGraph branch)
      (StrengthenedPrefix5Graph153Branch.gain branch)
    exact StrengthenedPrefix5Graph153Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix5Graph153Branch_of_tail_and_targetCompletionTail
        htail hcompletion

def strengthenedPrefix5Graph155TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix5YpZmTmmpEvalState
      graph155TargetCompletionState where
  Branch := StrengthenedPrefix5Graph155Branch
  face := StrengthenedPrefix5Graph155Branch.face
  nextGraph := StrengthenedPrefix5Graph155Branch.nextGraph
  gain := StrengthenedPrefix5Graph155Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 155
      (StrengthenedPrefix5Graph155Branch.face branch)
      (StrengthenedPrefix5Graph155Branch.nextGraph branch)
      (StrengthenedPrefix5Graph155Branch.gain branch)
    exact StrengthenedPrefix5Graph155Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix5Graph155Branch_of_tail_and_targetCompletionTail
        htail hcompletion

def graph151TargetCompletionState : TopPairingTargetCompletionState where
  step := 4
  gap := 1
  parity := strengthenedClosedPrefix4ZmTmppTransducerState.parity
  remaining :=
    [ Face.xp, Face.yp, Face.zp, Face.tmmm, Face.tmmp, Face.tmpm,
      Face.tpmm, Face.tpmp, Face.tppm, Face.tppp ]
  triState :=
    { shadowLen := 1
      stack := [(TriLetter.dm11, 0)]
      cancellationsRev := [] }

abbrev Graph151TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph151TargetCompletionState labels

theorem graph151_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph151TargetCompletionTail (face :: rest)) :
    face = Face.tmmp ∨ face = Face.tmpm ∨ face = Face.tpmm ∨
      face = Face.tppp ∨ face = Face.zp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph151TargetCompletionState,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair] at hremaining hschedule hsquare ⊢

private theorem graph151_tmmp_canComplete_false :
    (graph151TargetCompletionState.next Face.tmmp).canComplete = false := by
  rfl

private theorem graph151_tmpm_canComplete_false :
    (graph151TargetCompletionState.next Face.tmpm).canComplete = false := by
  rfl

private theorem graph151_tpmm_canComplete_false :
    (graph151TargetCompletionState.next Face.tpmm).canComplete = false := by
  rfl

private theorem graph151_zp_canComplete_false :
    (graph151TargetCompletionState.next Face.zp).canComplete = false := by
  rfl

private theorem no_tail_after_graph151_tmmp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph151TargetCompletionState.next Face.tmmp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph151_tmmp_canComplete_false h

private theorem no_tail_after_graph151_tmpm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph151TargetCompletionState.next Face.tmpm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph151_tmpm_canComplete_false h

private theorem no_tail_after_graph151_tpmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph151TargetCompletionState.next Face.tpmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph151_tpmm_canComplete_false h

private theorem no_tail_after_graph151_zp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph151TargetCompletionState.next Face.zp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph151_zp_canComplete_false h

theorem graph151_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph151TargetCompletionTail (face :: rest)) :
    face = Face.tppp := by
  rcases graph151_head_candidate_of_targetCompletionTail htail with
    htmmp | htmpm | htpmm | htppp | hzp
  · subst face
    exact False.elim
      (no_tail_after_graph151_tmmp
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph151_tmpm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph151_tpmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htppp
  · subst face
    exact False.elim
      (no_tail_after_graph151_zp
        (TopPairingTargetCompletionTail.tail_next htail))

theorem strengthenedPrefix4Graph151Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix4ZmTmppEvalState.Tail (face :: rest))
    (hcompletion : Graph151TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph151Branch,
      branch.face = face := by
  have htppp := graph151_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix4Graph151Branch.tppp, rfl⟩

def strengthenedPrefix4Graph151TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix4ZmTmppEvalState graph151TargetCompletionState where
  Branch := StrengthenedPrefix4Graph151Branch
  face := StrengthenedPrefix4Graph151Branch.face
  nextGraph := StrengthenedPrefix4Graph151Branch.nextGraph
  gain := StrengthenedPrefix4Graph151Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 151
      (StrengthenedPrefix4Graph151Branch.face branch)
      (StrengthenedPrefix4Graph151Branch.nextGraph branch)
      (StrengthenedPrefix4Graph151Branch.gain branch)
    exact StrengthenedPrefix4Graph151Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix4Graph151Branch_of_tail_and_targetCompletionTail
        htail hcompletion

def strengthenedClosedPrefix5ZmTmppTpppTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix4ZmTmppTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix4ZmTmppTransducerState.gap
    Face.tppp
  k := strengthenedClosedPrefix4ZmTmppTransducerState.k + 1
  parity := strengthenedClosedPrefix4ZmTmppTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix4ZmTmppTransducerState.linear Face.tppp

def strengthenedClosedPrefix5ZmTmppTpppEvalState :
    StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix5ZmTmppTpppTransducerState
  graph := 159

theorem strengthenedClosed_prefix5_zm_tmpp_tppp_next_from_prefix4ZmTmpp :
    strengthenedClosedEvalNext strengthenedClosedPrefix4ZmTmppEvalState
        Face.tppp =
      some (strengthenedClosedPrefix5ZmTmppTpppEvalState, (96 : Int)) := by
  rfl

def graph159TargetCompletionState : TopPairingTargetCompletionState :=
  graph151TargetCompletionState.next Face.tppp

abbrev Graph159TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph159TargetCompletionState labels

theorem graph159_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph159TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tpmp ∨ face = Face.tppm ∨
      face = Face.zp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph159TargetCompletionState, graph151TargetCompletionState,
      TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair, topPairingNextGap, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph159_tmmm_canComplete_false :
    (graph159TargetCompletionState.next Face.tmmm).canComplete = false := by
  rfl

private theorem graph159_tppm_canComplete_false :
    (graph159TargetCompletionState.next Face.tppm).canComplete = false := by
  rfl

private theorem graph159_zp_canComplete_false :
    (graph159TargetCompletionState.next Face.zp).canComplete = false := by
  rfl

private theorem no_tail_after_graph159_tmmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph159TargetCompletionState.next Face.tmmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph159_tmmm_canComplete_false h

private theorem no_tail_after_graph159_tppm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph159TargetCompletionState.next Face.tppm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph159_tppm_canComplete_false h

private theorem no_tail_after_graph159_zp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph159TargetCompletionState.next Face.zp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph159_zp_canComplete_false h

theorem graph159_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph159TargetCompletionTail (face :: rest)) :
    face = Face.tpmp := by
  rcases graph159_head_candidate_of_targetCompletionTail htail with
    htmmm | htpmp | htppm | hzp
  · subst face
    exact False.elim
      (no_tail_after_graph159_tmmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htpmp
  · subst face
    exact False.elim
      (no_tail_after_graph159_tppm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph159_zp
        (TopPairingTargetCompletionTail.tail_next htail))

inductive StrengthenedPrefix5Graph159Branch where
  | tpmp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix5Graph159Branch

def face : StrengthenedPrefix5Graph159Branch -> Face
  | .tpmp => Face.tpmp

def nextGraph : StrengthenedPrefix5Graph159Branch -> Nat
  | .tpmp => 171

def gain : StrengthenedPrefix5Graph159Branch -> Int
  | .tpmp => -36

theorem step (branch : StrengthenedPrefix5Graph159Branch) :
    ClosedBellmanStep 159 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0153_l05

end StrengthenedPrefix5Graph159Branch

theorem strengthenedPrefix5Graph159Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix5ZmTmppTpppEvalState.Tail (face :: rest))
    (hcompletion : Graph159TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix5Graph159Branch,
      branch.face = face := by
  have htpmp := graph159_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix5Graph159Branch.tpmp, rfl⟩

def strengthenedPrefix5Graph159TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix5ZmTmppTpppEvalState graph159TargetCompletionState where
  Branch := StrengthenedPrefix5Graph159Branch
  face := StrengthenedPrefix5Graph159Branch.face
  nextGraph := StrengthenedPrefix5Graph159Branch.nextGraph
  gain := StrengthenedPrefix5Graph159Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 159
      (StrengthenedPrefix5Graph159Branch.face branch)
      (StrengthenedPrefix5Graph159Branch.nextGraph branch)
      (StrengthenedPrefix5Graph159Branch.gain branch)
    exact StrengthenedPrefix5Graph159Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix5Graph159Branch_of_tail_and_targetCompletionTail
        htail hcompletion

def strengthenedClosedPrefix6ZmTmppTpppTpmpTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix5ZmTmppTpppTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix5ZmTmppTpppTransducerState.gap
    Face.tpmp
  k := strengthenedClosedPrefix5ZmTmppTpppTransducerState.k + 1
  parity := strengthenedClosedPrefix5ZmTmppTpppTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix5ZmTmppTpppTransducerState.linear Face.tpmp

def strengthenedClosedPrefix6ZmTmppTpppTpmpEvalState :
    StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix6ZmTmppTpppTpmpTransducerState
  graph := 171

theorem strengthenedClosed_prefix6_zm_tmpp_tppp_tpmp_next_from_prefix5 :
    strengthenedClosedEvalNext strengthenedClosedPrefix5ZmTmppTpppEvalState
        Face.tpmp =
      some (strengthenedClosedPrefix6ZmTmppTpppTpmpEvalState, (-36 : Int)) := by
  rfl

def graph171TargetCompletionState : TopPairingTargetCompletionState :=
  graph159TargetCompletionState.next Face.tpmp

abbrev Graph171TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph171TargetCompletionState labels

theorem graph171_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph171TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tpmm ∨ face = Face.tppm ∨
      face = Face.zp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair, topPairingNextGap, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph171_tmmm_canComplete_false :
    (graph171TargetCompletionState.next Face.tmmm).canComplete = false := by
  rfl

private theorem graph171_tpmm_canComplete_false :
    (graph171TargetCompletionState.next Face.tpmm).canComplete = false := by
  rfl

private theorem graph171_zp_canComplete_false :
    (graph171TargetCompletionState.next Face.zp).canComplete = false := by
  rfl

private theorem no_tail_after_graph171_tmmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph171TargetCompletionState.next Face.tmmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph171_tmmm_canComplete_false h

private theorem no_tail_after_graph171_tpmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph171TargetCompletionState.next Face.tpmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph171_tpmm_canComplete_false h

private theorem no_tail_after_graph171_zp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph171TargetCompletionState.next Face.zp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph171_zp_canComplete_false h

theorem graph171_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph171TargetCompletionTail (face :: rest)) :
    face = Face.tppm := by
  rcases graph171_head_candidate_of_targetCompletionTail htail with
    htmmm | htpmm | htppm | hzp
  · subst face
    exact False.elim
      (no_tail_after_graph171_tmmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph171_tpmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htppm
  · subst face
    exact False.elim
      (no_tail_after_graph171_zp
        (TopPairingTargetCompletionTail.tail_next htail))

inductive StrengthenedPrefix6Graph171Branch where
  | tppm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix6Graph171Branch

def face : StrengthenedPrefix6Graph171Branch -> Face
  | .tppm => Face.tppm

def nextGraph : StrengthenedPrefix6Graph171Branch -> Nat
  | .tppm => 186

def gain : StrengthenedPrefix6Graph171Branch -> Int
  | .tppm => -144

theorem step (branch : StrengthenedPrefix6Graph171Branch) :
    ClosedBellmanStep 171 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0167_l06

end StrengthenedPrefix6Graph171Branch

theorem strengthenedPrefix6Graph171Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix6ZmTmppTpppTpmpEvalState.Tail (face :: rest))
    (hcompletion : Graph171TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix6Graph171Branch,
      branch.face = face := by
  have htppm := graph171_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix6Graph171Branch.tppm, rfl⟩

def strengthenedPrefix6Graph171TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix6ZmTmppTpppTpmpEvalState graph171TargetCompletionState where
  Branch := StrengthenedPrefix6Graph171Branch
  face := StrengthenedPrefix6Graph171Branch.face
  nextGraph := StrengthenedPrefix6Graph171Branch.nextGraph
  gain := StrengthenedPrefix6Graph171Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 171
      (StrengthenedPrefix6Graph171Branch.face branch)
      (StrengthenedPrefix6Graph171Branch.nextGraph branch)
      (StrengthenedPrefix6Graph171Branch.gain branch)
    exact StrengthenedPrefix6Graph171Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix6Graph171Branch_of_tail_and_targetCompletionTail
        htail hcompletion

def strengthenedClosedPrefix7ZmTmppTpppTpmpTppmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix6ZmTmppTpppTpmpTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix6ZmTmppTpppTpmpTransducerState.gap
    Face.tppm
  k := strengthenedClosedPrefix6ZmTmppTpppTpmpTransducerState.k + 1
  parity := strengthenedClosedPrefix6ZmTmppTpppTpmpTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix6ZmTmppTpppTpmpTransducerState.linear Face.tppm

def strengthenedClosedPrefix7ZmTmppTpppTpmpTppmEvalState :
    StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix7ZmTmppTpppTpmpTppmTransducerState
  graph := 186

theorem strengthenedClosed_prefix7_zm_tmpp_tppp_tpmp_tppm_next_from_prefix6 :
    strengthenedClosedEvalNext strengthenedClosedPrefix6ZmTmppTpppTpmpEvalState
        Face.tppm =
      some (strengthenedClosedPrefix7ZmTmppTpppTpmpTppmEvalState,
        (-144 : Int)) := by
  rfl

def graph186TargetCompletionState : TopPairingTargetCompletionState :=
  graph171TargetCompletionState.next Face.tppm

abbrev Graph186TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph186TargetCompletionState labels

theorem graph186_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph186TargetCompletionTail (face :: rest)) :
    face = Face.tmmp ∨ face = Face.tmpm ∨ face = Face.tpmm ∨
      face = Face.zp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph186TargetCompletionState, graph171TargetCompletionState,
      graph159TargetCompletionState, graph151TargetCompletionState,
      TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair, topPairingNextGap, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph186_tmpm_canComplete_false :
    (graph186TargetCompletionState.next Face.tmpm).canComplete = false := by
  rfl

private theorem graph186_tpmm_canComplete_false :
    (graph186TargetCompletionState.next Face.tpmm).canComplete = false := by
  rfl

private theorem graph186_zp_canComplete_false :
    (graph186TargetCompletionState.next Face.zp).canComplete = false := by
  rfl

private theorem no_tail_after_graph186_tmpm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph186TargetCompletionState.next Face.tmpm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph186_tmpm_canComplete_false h

private theorem no_tail_after_graph186_tpmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph186TargetCompletionState.next Face.tpmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph186_tpmm_canComplete_false h

private theorem no_tail_after_graph186_zp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph186TargetCompletionState.next Face.zp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph186_zp_canComplete_false h

theorem graph186_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph186TargetCompletionTail (face :: rest)) :
    face = Face.tmmp := by
  rcases graph186_head_candidate_of_targetCompletionTail htail with
    htmmp | htmpm | htpmm | hzp
  · exact htmmp
  · subst face
    exact False.elim
      (no_tail_after_graph186_tmpm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph186_tpmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · subst face
    exact False.elim
      (no_tail_after_graph186_zp
        (TopPairingTargetCompletionTail.tail_next htail))

inductive StrengthenedPrefix7Graph186Branch where
  | tmmp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix7Graph186Branch

def face : StrengthenedPrefix7Graph186Branch -> Face
  | .tmmp => Face.tmmp

def nextGraph : StrengthenedPrefix7Graph186Branch -> Nat
  | .tmmp => 202

def gain : StrengthenedPrefix7Graph186Branch -> Int
  | .tmmp => -144

theorem step (branch : StrengthenedPrefix7Graph186Branch) :
    ClosedBellmanStep 186 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0184_l01

end StrengthenedPrefix7Graph186Branch

theorem strengthenedPrefix7Graph186Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix7ZmTmppTpppTpmpTppmEvalState.Tail (face :: rest))
    (hcompletion : Graph186TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix7Graph186Branch,
      branch.face = face := by
  have htmmp := graph186_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix7Graph186Branch.tmmp, rfl⟩

def strengthenedPrefix7Graph186TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix7ZmTmppTpppTpmpTppmEvalState graph186TargetCompletionState where
  Branch := StrengthenedPrefix7Graph186Branch
  face := StrengthenedPrefix7Graph186Branch.face
  nextGraph := StrengthenedPrefix7Graph186Branch.nextGraph
  gain := StrengthenedPrefix7Graph186Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 186
      (StrengthenedPrefix7Graph186Branch.face branch)
      (StrengthenedPrefix7Graph186Branch.nextGraph branch)
      (StrengthenedPrefix7Graph186Branch.gain branch)
    exact StrengthenedPrefix7Graph186Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix7Graph186Branch_of_tail_and_targetCompletionTail
        htail hcompletion

def strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix7ZmTmppTpppTpmpTppmTransducerState.step + 1
  gap := topPairingNextGap
    strengthenedClosedPrefix7ZmTmppTpppTpmpTppmTransducerState.gap Face.tmmp
  k := strengthenedClosedPrefix7ZmTmppTpppTpmpTppmTransducerState.k + 1
  parity := strengthenedClosedPrefix7ZmTmppTpppTpmpTppmTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix7ZmTmppTpppTpmpTppmTransducerState.linear Face.tmmp

def strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState :
    StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpTransducerState
  graph := 202

theorem strengthenedClosed_prefix8_zm_tmpp_tppp_tpmp_tppm_tmmp_next_from_prefix7 :
    strengthenedClosedEvalNext
        strengthenedClosedPrefix7ZmTmppTpppTpmpTppmEvalState Face.tmmp =
      some (strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState,
        (-144 : Int)) := by
  rfl

def graph202TargetCompletionState : TopPairingTargetCompletionState :=
  graph186TargetCompletionState.next Face.tmmp

abbrev Graph202TargetCompletionTail (labels : List Face) : Prop :=
  TopPairingTargetCompletionTail graph202TargetCompletionState labels

theorem graph202_head_candidate_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph202TargetCompletionTail (face :: rest)) :
    face = Face.tmmm ∨ face = Face.tpmm ∨ face = Face.zp := by
  have hremaining :=
    TopPairingTargetCompletionTail.head_remaining htail
  have hschedule :=
    TopPairingTargetCompletionTail.head_schedule htail
  have hsquare :=
    TopPairingTargetCompletionTail.head_squareAllowed htail
  cases face <;>
    simp [graph202TargetCompletionState, graph186TargetCompletionState,
      graph171TargetCompletionState, graph159TargetCompletionState,
      graph151TargetCompletionState, TopPairingTargetCompletionState.next,
      TopPairingTargetCompletionState.squareAllowed,
      topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair, topPairingNextGap, triLetterOfFace?,
      TriLetter.ofPairId?, TriLetter.act, SqParity.applyPair,
      SqParity.toggleForPair, SqParity.toggleX, SqParity.toggleY,
      SqParity.toggleZ, SqParity.xor] at hremaining hschedule hsquare ⊢

private theorem graph202_tmmm_canComplete_false :
    (graph202TargetCompletionState.next Face.tmmm).canComplete = false := by
  rfl

private theorem graph202_zp_canComplete_false :
    (graph202TargetCompletionState.next Face.zp).canComplete = false := by
  rfl

private theorem no_tail_after_graph202_tmmm {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph202TargetCompletionState.next Face.tmmm) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph202_tmmm_canComplete_false h

private theorem no_tail_after_graph202_zp {rest : List Face} :
    ¬ TopPairingTargetCompletionTail
      (graph202TargetCompletionState.next Face.zp) rest := by
  intro h
  exact TopPairingTargetCompletionTail.false_of_canComplete_eq_false
    graph202_zp_canComplete_false h

theorem graph202_head_of_targetCompletionTail
    {face : Face} {rest : List Face}
    (htail : Graph202TargetCompletionTail (face :: rest)) :
    face = Face.tpmm := by
  rcases graph202_head_candidate_of_targetCompletionTail htail with
    htmmm | htpmm | hzp
  · subst face
    exact False.elim
      (no_tail_after_graph202_tmmm
        (TopPairingTargetCompletionTail.tail_next htail))
  · exact htpmm
  · subst face
    exact False.elim
      (no_tail_after_graph202_zp
        (TopPairingTargetCompletionTail.tail_next htail))

inductive StrengthenedPrefix8Graph202Branch where
  | tpmm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix8Graph202Branch

def face : StrengthenedPrefix8Graph202Branch -> Face
  | .tpmm => Face.tpmm

def nextGraph : StrengthenedPrefix8Graph202Branch -> Nat
  | .tpmm => 221

def gain : StrengthenedPrefix8Graph202Branch -> Int
  | .tpmm => -36

theorem step (branch : StrengthenedPrefix8Graph202Branch) :
    ClosedBellmanStep 202 branch.face branch.nextGraph branch.gain := by
  cases branch
  exact ClosedBellmanStep.e0202_l04

end StrengthenedPrefix8Graph202Branch

theorem strengthenedPrefix8Graph202Branch_of_tail_and_targetCompletionTail
    {face : Face} {rest : List Face}
    (_htail :
      strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState.Tail
        (face :: rest))
    (hcompletion : Graph202TargetCompletionTail (face :: rest)) :
    ∃ branch : StrengthenedPrefix8Graph202Branch,
      branch.face = face := by
  have htpmm := graph202_head_of_targetCompletionTail hcompletion
  subst face
  exact ⟨StrengthenedPrefix8Graph202Branch.tpmm, rfl⟩

def strengthenedPrefix8Graph202TargetCompletionLocalBranchTable :
    StrengthenedTargetCompletionLocalBranchTable
      strengthenedClosedPrefix8ZmTmppTpppTpmpTppmTmmpEvalState graph202TargetCompletionState where
  Branch := StrengthenedPrefix8Graph202Branch
  face := StrengthenedPrefix8Graph202Branch.face
  nextGraph := StrengthenedPrefix8Graph202Branch.nextGraph
  gain := StrengthenedPrefix8Graph202Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 202
      (StrengthenedPrefix8Graph202Branch.face branch)
      (StrengthenedPrefix8Graph202Branch.nextGraph branch)
      (StrengthenedPrefix8Graph202Branch.gain branch)
    exact StrengthenedPrefix8Graph202Branch.step branch
  branch_of_tail := by
    intro face rest htail hcompletion
    exact
      strengthenedPrefix8Graph202Branch_of_tail_and_targetCompletionTail
        htail hcompletion

theorem strengthenedPrefix4Graph149Branch_of_tail_and_zm_used
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4ZmZpEvalState.Tail (face :: rest))
    (hzmUsed : Face.zm ∉ face :: rest)
    (hzpUsed : Face.zp ∉ face :: rest) :
    ∃ branch : StrengthenedPrefix4Graph149Branch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix4ZmZpTransducerState.step
        strengthenedClosedPrefix4ZmZpTransducerState.gap
        strengthenedClosedPrefix4ZmZpTransducerState.k
        strengthenedClosedPrefix4ZmZpTransducerState.parity
        strengthenedClosedPrefix4ZmZpTransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix4ZmZpEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph149Branch.yp, rfl⟩
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact False.elim (hzpUsed (by simp))
  · exact False.elim (hzmUsed (by simp))
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · exact ⟨StrengthenedPrefix4Graph149Branch.tmpm, rfl⟩
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons

inductive StrengthenedPrefix4Graph148Branch where
  | zm | tpmm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph148Branch

def face : StrengthenedPrefix4Graph148Branch -> Face
  | .zm => Face.zm
  | .tpmm => Face.tpmm

def nextGraph : StrengthenedPrefix4Graph148Branch -> Nat
  | .zm => 154
  | .tpmm => 156

def gain : StrengthenedPrefix4Graph148Branch -> Int
  | .zm => 114
  | .tpmm => 96

theorem step (branch : StrengthenedPrefix4Graph148Branch) :
    ClosedBellmanStep 148 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0137_l12
    | exact ClosedBellmanStep.e0138_l04

end StrengthenedPrefix4Graph148Branch

theorem strengthenedPrefix4Graph148Branch_of_tail_and_yp_used
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpTmmmEvalState.Tail (face :: rest))
    (hypUsed : Face.yp ∉ face :: rest) :
    ∃ branch : StrengthenedPrefix4Graph148Branch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix4YpTmmmTransducerState.step
        strengthenedClosedPrefix4YpTmmmTransducerState.gap
        strengthenedClosedPrefix4YpTmmmTransducerState.k
        strengthenedClosedPrefix4YpTmmmTransducerState.parity
        strengthenedClosedPrefix4YpTmmmTransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix4YpTmmmEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact False.elim (hypUsed (by simp))
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · exact ⟨StrengthenedPrefix4Graph148Branch.zm, rfl⟩
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadowLength,
      topPairingTargetShadow] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph148Branch.tpmm, rfl⟩
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadowLength,
      topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadowLength,
      topPairingTargetShadow] at hcons

def strengthenedClosedPrefix4YpTmmmUsedFaces : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm]

def strengthenedClosedPrefix4YpTmmmUsedEvalState :
    TopPairingUsedFaceEvalState Nat where
  eval := strengthenedClosedPrefix4YpTmmmEvalState
  used := strengthenedClosedPrefix4YpTmmmUsedFaces

theorem strengthenedPrefix4Graph148Branch_of_tail_and_usedFaceTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpTmmmEvalState.Tail (face :: rest))
    (hused :
      TopPairingUsedFaceTail strengthenedClosedPrefix4YpTmmmUsedFaces
        (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph148Branch,
      branch.face = face := by
  apply strengthenedPrefix4Graph148Branch_of_tail_and_yp_used htail
  intro hyp
  exact hused.disjoint Face.yp hyp (by
    simp [strengthenedClosedPrefix4YpTmmmUsedFaces])

theorem strengthenedPrefix4Graph148Branch_of_usedEvalTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpTmmmUsedEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph148Branch,
      branch.face = face :=
  strengthenedPrefix4Graph148Branch_of_tail_and_usedFaceTail
    (TopPairingUsedFaceEvalState.tail_eval htail)
    (TopPairingUsedFaceEvalState.tail_used htail)

def strengthenedClosedPrefix4ZmZpUsedFaces : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp]

def strengthenedClosedPrefix4ZmZpUsedEvalState :
    TopPairingUsedFaceEvalState Nat where
  eval := strengthenedClosedPrefix4ZmZpEvalState
  used := strengthenedClosedPrefix4ZmZpUsedFaces

theorem strengthenedPrefix4Graph149Branch_of_tail_and_usedFaceTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4ZmZpEvalState.Tail (face :: rest))
    (hused :
      TopPairingUsedFaceTail strengthenedClosedPrefix4ZmZpUsedFaces
        (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph149Branch,
      branch.face = face := by
  apply strengthenedPrefix4Graph149Branch_of_tail_and_zm_used htail
  · intro hzm
    exact hused.disjoint Face.zm hzm (by
      simp [strengthenedClosedPrefix4ZmZpUsedFaces])
  · intro hzp
    exact hused.disjoint Face.zp hzp (by
      simp [strengthenedClosedPrefix4ZmZpUsedFaces])

theorem strengthenedPrefix4Graph149Branch_of_usedEvalTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4ZmZpUsedEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph149Branch,
      branch.face = face :=
  strengthenedPrefix4Graph149Branch_of_tail_and_usedFaceTail
    (TopPairingUsedFaceEvalState.tail_eval htail)
    (TopPairingUsedFaceEvalState.tail_used htail)

structure StrengthenedUsedFaceLocalBranchTable
    (state : TopPairingUsedFaceEvalState Nat) where
  Branch : Type
  face : Branch -> Face
  nextGraph : Branch -> Nat
  gain : Branch -> Int
  step :
    ∀ branch,
      ClosedBellmanStep state.eval.graph (face branch)
        (nextGraph branch) (gain branch)
  branch_of_tail :
    ∀ {face0 : Face} {rest : List Face},
      state.Tail (face0 :: rest) ->
        ∃ branch : Branch, face branch = face0

namespace StrengthenedUsedFaceLocalBranchTable

theorem localTransition
    {state : TopPairingUsedFaceEvalState Nat}
    (table : StrengthenedUsedFaceLocalBranchTable state)
    {face0 : Face} {rest : List Face}
    (htail : state.Tail (face0 :: rest)) :
    ∃ branch : table.Branch,
      table.face branch = face0 ∧
        ∃ nextState : TopPairingUsedFaceEvalState Nat,
          strengthenedClosedUsedEvalNext state face0 =
              some (nextState, table.gain branch) ∧
            nextState.Tail rest ∧
              nextState.eval.graph = table.nextGraph branch ∧
                nextState.used = face0 :: state.used := by
  rcases table.branch_of_tail htail with ⟨branch, hface⟩
  subst face0
  have hgraph :
      closedBellmanNext state.eval.graph (table.face branch) =
        some (table.nextGraph branch, table.gain branch) :=
    closedBellmanStep_next (table.step branch)
  rcases TopPairingUsedFaceEvalState.next?_tail
      (next := closedBellmanNext) (labelOfFace := fun face : Face => face)
      htail hgraph with
    ⟨nextState, hnext, htailNext, hgraphNext, husedNext⟩
  exact ⟨branch, rfl, nextState, hnext, htailNext, hgraphNext, husedNext⟩

end StrengthenedUsedFaceLocalBranchTable

def strengthenedPrefix4Graph148UsedFaceLocalBranchTable :
    StrengthenedUsedFaceLocalBranchTable
      strengthenedClosedPrefix4YpTmmmUsedEvalState where
  Branch := StrengthenedPrefix4Graph148Branch
  face := StrengthenedPrefix4Graph148Branch.face
  nextGraph := StrengthenedPrefix4Graph148Branch.nextGraph
  gain := StrengthenedPrefix4Graph148Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 148
      (StrengthenedPrefix4Graph148Branch.face branch)
      (StrengthenedPrefix4Graph148Branch.nextGraph branch)
      (StrengthenedPrefix4Graph148Branch.gain branch)
    exact StrengthenedPrefix4Graph148Branch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix4Graph148Branch_of_usedEvalTail htail

def strengthenedPrefix4Graph149UsedFaceLocalBranchTable :
    StrengthenedUsedFaceLocalBranchTable
      strengthenedClosedPrefix4ZmZpUsedEvalState where
  Branch := StrengthenedPrefix4Graph149Branch
  face := StrengthenedPrefix4Graph149Branch.face
  nextGraph := StrengthenedPrefix4Graph149Branch.nextGraph
  gain := StrengthenedPrefix4Graph149Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 149
      (StrengthenedPrefix4Graph149Branch.face branch)
      (StrengthenedPrefix4Graph149Branch.nextGraph branch)
      (StrengthenedPrefix4Graph149Branch.gain branch)
    exact StrengthenedPrefix4Graph149Branch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix4Graph149Branch_of_usedEvalTail htail

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
