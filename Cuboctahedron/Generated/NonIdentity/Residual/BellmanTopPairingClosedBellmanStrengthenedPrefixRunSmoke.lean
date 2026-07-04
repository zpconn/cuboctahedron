import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
import Cuboctahedron.Search.TopPairingTransducerEvalBridge

set_option linter.unusedSimpArgs false

/-!
Semantic prefix-run smoke for the strengthened top-pairing Bellman graph.

This file checks the first production-facing membership step for the
strengthened Bellman route: closed top-pairing language data determines the
initial Bellman labels and constructs the corresponding `ClosedBellmanStep`
run.  It deliberately does not mention sampled ranks, selected prefixes,
accepted trace ids, or exact affine RHS keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

abbrev StrengthenedClosedPrefixGraphRun
    (rank : Fin numPairWords) (finish : Nat)
    (pfx : List Face) (gain : Int) : Prop :=
  exists rest : List Face,
    topPairingRankFaceLabels rank = pfx ++ rest /\
      BellmanLabelStepRun ClosedBellmanStep graphRoot finish pfx gain

abbrev StrengthenedClosedEvalState :=
  TopPairingTransducerEvalState Nat

def strengthenedClosedEvalStart : StrengthenedClosedEvalState :=
  TopPairingTransducerEvalState.start graphRoot

def strengthenedClosedEvalNext :
    StrengthenedClosedEvalState -> Face ->
      Option (StrengthenedClosedEvalState × Int) :=
  TopPairingTransducerEvalState.next? closedBellmanNext (fun face : Face => face)

def strengthenedClosedPrefix1TransducerState : TopPairingTransducerState where
  step := 1
  gap := topPairingNextGap 0 Face.xm
  k := 0
  parity := SqParity.id.applyPair (pairOfFace Face.xm)
  linear := topPairingNextLinear (matId : Mat3 Rat) Face.xm

def strengthenedClosedPrefix1EvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix1TransducerState
  graph := 142

def strengthenedClosedPrefix2TransducerState : TopPairingTransducerState where
  step := 2
  gap := topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym
  k := 0
  parity := (SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)
  linear := topPairingNextLinear
    (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym

def strengthenedClosedPrefix2EvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix2TransducerState
  graph := 143

def strengthenedClosedPrefix3TmpmTransducerState : TopPairingTransducerState where
  step := strengthenedClosedPrefix2TransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix2TransducerState.gap
    Face.tmpm
  k := strengthenedClosedPrefix2TransducerState.k + 1
  parity := strengthenedClosedPrefix2TransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix2TransducerState.linear Face.tmpm

def strengthenedClosedPrefix3TmpmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix3TmpmTransducerState
  graph := 146

def strengthenedClosedPrefix3YpTransducerState : TopPairingTransducerState where
  step := strengthenedClosedPrefix2TransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix2TransducerState.gap Face.yp
  k := strengthenedClosedPrefix2TransducerState.k
  parity := strengthenedClosedPrefix2TransducerState.parity.applyPair
    (pairOfFace Face.yp)
  linear := topPairingNextLinear
    strengthenedClosedPrefix2TransducerState.linear Face.yp

def strengthenedClosedPrefix3YpEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix3YpTransducerState
  graph := 144

def strengthenedClosedPrefix3ZmTransducerState : TopPairingTransducerState where
  step := strengthenedClosedPrefix2TransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix2TransducerState.gap Face.zm
  k := strengthenedClosedPrefix2TransducerState.k
  parity := strengthenedClosedPrefix2TransducerState.parity.applyPair
    (pairOfFace Face.zm)
  linear := topPairingNextLinear
    strengthenedClosedPrefix2TransducerState.linear Face.zm

def strengthenedClosedPrefix3ZmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix3ZmTransducerState
  graph := 145

theorem strengthenedClosed_prefix1_next :
    strengthenedClosedEvalNext strengthenedClosedEvalStart Face.xm =
      some (strengthenedClosedPrefix1EvalState, (103 : Int)) := by
  rfl

theorem strengthenedClosed_prefix2_next_from_prefix1 :
    strengthenedClosedEvalNext strengthenedClosedPrefix1EvalState Face.ym =
      some (strengthenedClosedPrefix2EvalState, (-73 : Int)) := by
  rfl

theorem strengthenedClosed_prefix2_eval_eq :
    evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
      [Face.xm, Face.ym] =
        some (strengthenedClosedPrefix2EvalState, (30 : Int)) := by
  rfl

theorem strengthenedClosed_prefix3_tmpm_next_from_prefix2 :
    strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState Face.tmpm =
      some (strengthenedClosedPrefix3TmpmEvalState, (-124 : Int)) := by
  rfl

theorem strengthenedClosed_prefix3_yp_next_from_prefix2 :
    strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState Face.yp =
      some (strengthenedClosedPrefix3YpEvalState, (-73 : Int)) := by
  rfl

theorem strengthenedClosed_prefix3_zm_next_from_prefix2 :
    strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState Face.zm =
      some (strengthenedClosedPrefix3ZmEvalState, (-10 : Int)) := by
  rfl

abbrev StrengthenedClosedPrefixTransducerEval
    (rank : Fin numPairWords) (finish : Nat)
    (pfx : List Face) (gain : Int) : Prop :=
  exists rest : List Face,
    exists state : StrengthenedClosedEvalState,
      topPairingRankFaceLabels rank = pfx ++ rest /\
        evalLabelStepFn strengthenedClosedEvalNext strengthenedClosedEvalStart
          pfx = some (state, gain) /\
        state.graph = finish /\ state.Tail rest

theorem strengthenedClosedEvalNext_of_closedBellmanStep
    {state : StrengthenedClosedEvalState} {face : Face} {rest : List Face}
    {nextGraph : Nat} {gain : Int}
    (htail : state.Tail (face :: rest))
    (hstep : ClosedBellmanStep state.graph face nextGraph gain) :
    ∃ nextState : StrengthenedClosedEvalState,
      strengthenedClosedEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ nextState.graph = nextGraph := by
  have hgraph :
      closedBellmanNext state.graph face = some (nextGraph, gain) :=
    closedBellmanStep_next hstep
  rcases TopPairingTransducerEvalState.next?_tail
      (next := closedBellmanNext) (labelOfFace := fun face : Face => face)
      htail hgraph with
    ⟨nextState, hnext, htailNext, hgraphNext⟩
  exact ⟨nextState, hnext, htailNext, hgraphNext⟩

private theorem closedScheduleLabels
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingStepScheduleLabels (topPairingRankFaceLabels rank) := by
  simpa [topPairingRankFaceLabels] using hclosed.schedule

private theorem strengthenedClosedStartTail
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    strengthenedClosedEvalStart.Tail (topPairingRankFaceLabels rank) := by
  change TopPairingTransducerState.start.Tail
    (topPairingRankFaceLabels rank)
  exact
    TopPairingTransducerState.start_tail_of_closed
      hstrengthened.toTopPairingClosedLanguageAtRank

theorem graphStepRun_prefix2_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 143
      [Face.xm, Face.ym] ((103 : Int) + ((-73 : Int) + 0)) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 143
    [Face.xm, Face.ym] ((103 : Int) + ((-73 : Int) + 0))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.nil 143))

theorem graphStepRun_prefix2 :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 143
      [Face.xm, Face.ym] (30 : Int) := by
  simpa using graphStepRun_prefix2_expr

theorem graphStepRun_prefix3_tmpm_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 146
      [Face.xm, Face.ym, Face.tmpm]
      ((103 : Int) + ((-73 : Int) + ((-124 : Int) + 0))) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 146
    [Face.xm, Face.ym, Face.tmpm]
      ((103 : Int) + ((-73 : Int) + ((-124 : Int) + 0)))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.cons
        ClosedBellmanStep.e0127_l02
        (BellmanLabelStepRun.nil 146)))

theorem graphStepRun_prefix3_tmpm :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 146
      [Face.xm, Face.ym, Face.tmpm] (-94 : Int) := by
  simpa using graphStepRun_prefix3_tmpm_expr

theorem graphStepRun_prefix3_yp_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 144
      [Face.xm, Face.ym, Face.yp]
      ((103 : Int) + ((-73 : Int) + ((-73 : Int) + 0))) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 144
    [Face.xm, Face.ym, Face.yp]
      ((103 : Int) + ((-73 : Int) + ((-73 : Int) + 0)))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.cons
        ClosedBellmanStep.e0125_l11
        (BellmanLabelStepRun.nil 144)))

theorem graphStepRun_prefix3_yp :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 144
      [Face.xm, Face.ym, Face.yp] (-43 : Int) := by
  simpa using graphStepRun_prefix3_yp_expr

theorem graphStepRun_prefix3_zm_expr :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 145
      [Face.xm, Face.ym, Face.zm]
      ((103 : Int) + ((-73 : Int) + ((-10 : Int) + 0))) := by
  change BellmanLabelStepRun ClosedBellmanStep 0 145
    [Face.xm, Face.ym, Face.zm]
      ((103 : Int) + ((-73 : Int) + ((-10 : Int) + 0)))
  exact BellmanLabelStepRun.cons
    ClosedBellmanStep.e0000_l08
    (BellmanLabelStepRun.cons
      ClosedBellmanStep.e0124_l10
      (BellmanLabelStepRun.cons
        ClosedBellmanStep.e0126_l12
        (BellmanLabelStepRun.nil 145)))

theorem graphStepRun_prefix3_zm :
    BellmanLabelStepRun ClosedBellmanStep graphRoot 145
      [Face.xm, Face.ym, Face.zm] (20 : Int) := by
  simpa using graphStepRun_prefix3_zm_expr

theorem closedPrefix2GraphRun
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    StrengthenedClosedPrefixGraphRun rank 143
      [Face.xm, Face.ym] (30 : Int) := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym
      (closedScheduleLabels hclosed) with
    ⟨rest, hlabels⟩
  refine ⟨rest, ?_, graphStepRun_prefix2⟩
  simpa using hlabels

theorem strengthenedClosedPrefix2GraphRun
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    StrengthenedClosedPrefixGraphRun rank 143
      [Face.xm, Face.ym] (30 : Int) :=
  closedPrefix2GraphRun hstrengthened.toTopPairingClosedLanguageAtRank

theorem strengthenedClosedPrefix2TransducerEval
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    StrengthenedClosedPrefixTransducerEval rank 143
      [Face.xm, Face.ym] (30 : Int) := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym
      (closedScheduleLabels
        hstrengthened.toTopPairingClosedLanguageAtRank) with
    ⟨rest, hlabels⟩
  have htail0 :
      strengthenedClosedEvalStart.Tail (Face.xm :: Face.ym :: rest) := by
    simpa [hlabels] using strengthenedClosedStartTail hstrengthened
  rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedEvalStart)
      (face := Face.xm) (rest := Face.ym :: rest)
      htail0 ClosedBellmanStep.e0000_l08 with
    ⟨state1, hnext1, htail1, hstate1Graph⟩
  have hstate1 :
      state1 = strengthenedClosedPrefix1EvalState := by
    have hpair :=
      Option.some.inj (hnext1.symm.trans strengthenedClosed_prefix1_next)
    exact congrArg Prod.fst hpair
  subst state1
  rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix1EvalState)
      (face := Face.ym) (rest := rest)
      htail1 ClosedBellmanStep.e0124_l10 with
    ⟨state2, hnext2, htail2, hstate2Graph⟩
  have hstate2 :
      state2 = strengthenedClosedPrefix2EvalState := by
    have hpair :=
      Option.some.inj
        (hnext2.symm.trans strengthenedClosed_prefix2_next_from_prefix1)
    exact congrArg Prod.fst hpair
  subst state2
  refine ⟨rest, strengthenedClosedPrefix2EvalState, ?_, ?_, rfl, htail2⟩
  · simpa using hlabels
  · exact strengthenedClosed_prefix2_eval_eq

theorem strengthenedClosedPrefix2LocalTransition_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix2EvalState.Tail (face :: rest)) :
    ∃ nextState : StrengthenedClosedEvalState, ∃ gain : Int,
      strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState face =
          some (nextState, gain) ∧
        nextState.Tail rest ∧
          ((nextState.graph = 146 ∧ gain = (-124 : Int)) ∨
            (nextState.graph = 144 ∧ gain = (-73 : Int)) ∨
              (nextState.graph = 145 ∧ gain = (-10 : Int))) := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix2TransducerState.step
        strengthenedClosedPrefix2TransducerState.gap
        strengthenedClosedPrefix2TransducerState.k
        strengthenedClosedPrefix2TransducerState.parity
        strengthenedClosedPrefix2TransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix2EvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  have hface : face ∈ topPairingAllowedFacesAtStep 2 := by
    simpa [strengthenedClosedPrefix2TransducerState] using hcons.1
  simp [topPairingAllowedFacesAtStep] at hface
  rcases hface with rfl | rfl | rfl
  · rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix2EvalState)
      (face := Face.tmpm) (rest := rest)
      htail ClosedBellmanStep.e0127_l02 with
      ⟨nextState, hnext, htailNext, hgraphNext⟩
    exact ⟨nextState, (-124 : Int), hnext, htailNext,
      Or.inl ⟨hgraphNext, rfl⟩⟩
  · rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix2EvalState)
      (face := Face.yp) (rest := rest)
      htail ClosedBellmanStep.e0125_l11 with
      ⟨nextState, hnext, htailNext, hgraphNext⟩
    exact ⟨nextState, (-73 : Int), hnext, htailNext,
      Or.inr (Or.inl ⟨hgraphNext, rfl⟩)⟩
  · rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := strengthenedClosedPrefix2EvalState)
      (face := Face.zm) (rest := rest)
      htail ClosedBellmanStep.e0126_l12 with
      ⟨nextState, hnext, htailNext, hgraphNext⟩
    exact ⟨nextState, (-10 : Int), hnext, htailNext,
      Or.inr (Or.inr ⟨hgraphNext, rfl⟩)⟩

inductive StrengthenedPrefix2Branch where
  | tmpm | yp | zm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix2Branch

def face : StrengthenedPrefix2Branch -> Face
  | .tmpm => Face.tmpm
  | .yp => Face.yp
  | .zm => Face.zm

def nextGraph : StrengthenedPrefix2Branch -> Nat
  | .tmpm => 146
  | .yp => 144
  | .zm => 145

def gain : StrengthenedPrefix2Branch -> Int
  | .tmpm => -124
  | .yp => -73
  | .zm => -10

theorem step (branch : StrengthenedPrefix2Branch) :
    ClosedBellmanStep 143 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0127_l02
    | exact ClosedBellmanStep.e0125_l11
    | exact ClosedBellmanStep.e0126_l12

end StrengthenedPrefix2Branch

structure StrengthenedLocalBranchTable
    (state : StrengthenedClosedEvalState) where
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
        ∃ branch : Branch, face branch = face0

namespace StrengthenedLocalBranchTable

theorem localTransition
    {state : StrengthenedClosedEvalState}
    (table : StrengthenedLocalBranchTable state)
    {face0 : Face} {rest : List Face}
    (htail : state.Tail (face0 :: rest)) :
    ∃ branch : table.Branch,
      table.face branch = face0 ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext state face0 =
              some (nextState, table.gain branch) ∧
            nextState.Tail rest ∧
              nextState.graph = table.nextGraph branch := by
  rcases table.branch_of_tail htail with ⟨branch, hface⟩
  subst face0
  rcases strengthenedClosedEvalNext_of_closedBellmanStep
      (state := state) (face := table.face branch) (rest := rest)
      htail (table.step branch) with
    ⟨nextState, hnext, htailNext, hgraphNext⟩
  exact ⟨branch, rfl, nextState, hnext, htailNext, hgraphNext⟩

end StrengthenedLocalBranchTable

theorem strengthenedPrefix2Branch_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix2EvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix2Branch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix2TransducerState.step
        strengthenedClosedPrefix2TransducerState.gap
        strengthenedClosedPrefix2TransducerState.k
        strengthenedClosedPrefix2TransducerState.parity
        strengthenedClosedPrefix2TransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix2EvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  have hface : face ∈ topPairingAllowedFacesAtStep 2 := by
    simpa [strengthenedClosedPrefix2TransducerState] using hcons.1
  simp [topPairingAllowedFacesAtStep] at hface
  rcases hface with rfl | rfl | rfl
  · exact ⟨StrengthenedPrefix2Branch.tmpm, rfl⟩
  · exact ⟨StrengthenedPrefix2Branch.yp, rfl⟩
  · exact ⟨StrengthenedPrefix2Branch.zm, rfl⟩

theorem strengthenedPrefix2Branch_sound
    {branch : StrengthenedPrefix2Branch} {rest : List Face}
    (htail :
      strengthenedClosedPrefix2EvalState.Tail (branch.face :: rest)) :
    ∃ nextState : StrengthenedClosedEvalState,
      strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState
          branch.face = some (nextState, branch.gain) ∧
        nextState.Tail rest ∧
          nextState.graph = branch.nextGraph := by
  exact strengthenedClosedEvalNext_of_closedBellmanStep htail
    (StrengthenedPrefix2Branch.step branch)

def strengthenedPrefix2LocalBranchTable :
    StrengthenedLocalBranchTable strengthenedClosedPrefix2EvalState where
  Branch := StrengthenedPrefix2Branch
  face := StrengthenedPrefix2Branch.face
  nextGraph := StrengthenedPrefix2Branch.nextGraph
  gain := StrengthenedPrefix2Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 143
      (StrengthenedPrefix2Branch.face branch)
      (StrengthenedPrefix2Branch.nextGraph branch)
      (StrengthenedPrefix2Branch.gain branch)
    exact StrengthenedPrefix2Branch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix2Branch_of_tail htail

theorem strengthenedClosedPrefix2LocalTransition_table
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix2EvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix2Branch,
      branch.face = face ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState
              face = some (nextState, branch.gain) ∧
            nextState.Tail rest ∧
              nextState.graph = branch.nextGraph := by
  rcases strengthenedPrefix2Branch_of_tail htail with ⟨branch, hface⟩
  subst face
  rcases strengthenedPrefix2Branch_sound
      (branch := branch) htail with
    ⟨nextState, hnext, htailNext, hgraphNext⟩
  exact ⟨branch, rfl, nextState, hnext, htailNext, hgraphNext⟩

theorem strengthenedClosedPrefix2LocalTransition_genericTable
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix2EvalState.Tail (face :: rest)) :
    ∃ branch : strengthenedPrefix2LocalBranchTable.Branch,
      strengthenedPrefix2LocalBranchTable.face branch = face ∧
        ∃ nextState : StrengthenedClosedEvalState,
          strengthenedClosedEvalNext strengthenedClosedPrefix2EvalState
              face = some
                (nextState, strengthenedPrefix2LocalBranchTable.gain branch) ∧
            nextState.Tail rest ∧
              nextState.graph =
                strengthenedPrefix2LocalBranchTable.nextGraph branch :=
  StrengthenedLocalBranchTable.localTransition
    strengthenedPrefix2LocalBranchTable htail

inductive StrengthenedPrefix3TmpmBranch where
  | zm | tppm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix3TmpmBranch

def face : StrengthenedPrefix3TmpmBranch -> Face
  | .zm => Face.zm
  | .tppm => Face.tppm

def nextGraph : StrengthenedPrefix3TmpmBranch -> Nat
  | .zm => 150
  | .tppm => 152

def gain : StrengthenedPrefix3TmpmBranch -> Int
  | .zm => 114
  | .tppm => 96

theorem step (branch : StrengthenedPrefix3TmpmBranch) :
    ClosedBellmanStep 146 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0133_l12
    | exact ClosedBellmanStep.e0134_l06

end StrengthenedPrefix3TmpmBranch

theorem strengthenedPrefix3TmpmBranch_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix3TmpmEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix3TmpmBranch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix3TmpmTransducerState.step
        strengthenedClosedPrefix3TmpmTransducerState.gap
        strengthenedClosedPrefix3TmpmTransducerState.k
        strengthenedClosedPrefix3TmpmTransducerState.parity
        strengthenedClosedPrefix3TmpmTransducerState.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix3TmpmEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have hsquare := htailRaw.trace.squareGap
    simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingNextGap, TopPairingSquareGapFrom,
      topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair] at hsquare
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · exact ⟨StrengthenedPrefix3TmpmBranch.zm, rfl⟩
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id, pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id, pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix3TmpmBranch.tppm, rfl⟩
  · simp [strengthenedClosedPrefix3TmpmEvalState,
      strengthenedClosedPrefix3TmpmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons

def strengthenedPrefix3TmpmLocalBranchTable :
    StrengthenedLocalBranchTable strengthenedClosedPrefix3TmpmEvalState where
  Branch := StrengthenedPrefix3TmpmBranch
  face := StrengthenedPrefix3TmpmBranch.face
  nextGraph := StrengthenedPrefix3TmpmBranch.nextGraph
  gain := StrengthenedPrefix3TmpmBranch.gain
  step := by
    intro branch
    change ClosedBellmanStep 146
      (StrengthenedPrefix3TmpmBranch.face branch)
      (StrengthenedPrefix3TmpmBranch.nextGraph branch)
      (StrengthenedPrefix3TmpmBranch.gain branch)
    exact StrengthenedPrefix3TmpmBranch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix3TmpmBranch_of_tail htail

inductive StrengthenedPrefix3YpBranch where
  | zm | tmmm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix3YpBranch

def face : StrengthenedPrefix3YpBranch -> Face
  | .zm => Face.zm
  | .tmmm => Face.tmmm

def nextGraph : StrengthenedPrefix3YpBranch -> Nat
  | .zm => 147
  | .tmmm => 148

def gain : StrengthenedPrefix3YpBranch -> Int
  | .zm => -10
  | .tmmm => -124

theorem step (branch : StrengthenedPrefix3YpBranch) :
    ClosedBellmanStep 144 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0128_l12
    | exact ClosedBellmanStep.e0129_l00

end StrengthenedPrefix3YpBranch

theorem strengthenedPrefix3YpBranch_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix3YpEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix3YpBranch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix3YpTransducerState.step
        strengthenedClosedPrefix3YpTransducerState.gap
        strengthenedClosedPrefix3YpTransducerState.k
        strengthenedClosedPrefix3YpTransducerState.parity
        strengthenedClosedPrefix3YpTransducerState.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix3YpEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · exact ⟨StrengthenedPrefix3YpBranch.zm, rfl⟩
  · exact ⟨StrengthenedPrefix3YpBranch.tmmm, rfl⟩
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id, pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id, pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix3YpEvalState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons

def strengthenedPrefix3YpLocalBranchTable :
    StrengthenedLocalBranchTable strengthenedClosedPrefix3YpEvalState where
  Branch := StrengthenedPrefix3YpBranch
  face := StrengthenedPrefix3YpBranch.face
  nextGraph := StrengthenedPrefix3YpBranch.nextGraph
  gain := StrengthenedPrefix3YpBranch.gain
  step := by
    intro branch
    change ClosedBellmanStep 144
      (StrengthenedPrefix3YpBranch.face branch)
      (StrengthenedPrefix3YpBranch.nextGraph branch)
      (StrengthenedPrefix3YpBranch.gain branch)
    exact StrengthenedPrefix3YpBranch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix3YpBranch_of_tail htail

inductive StrengthenedPrefix3ZmBranch where
  | yp | zp | tmpp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix3ZmBranch

def face : StrengthenedPrefix3ZmBranch -> Face
  | .yp => Face.yp
  | .zp => Face.zp
  | .tmpp => Face.tmpp

def nextGraph : StrengthenedPrefix3ZmBranch -> Nat
  | .yp => 147
  | .zp => 149
  | .tmpp => 151

def gain : StrengthenedPrefix3ZmBranch -> Int
  | .yp => -73
  | .zp => -10
  | .tmpp => -124

theorem step (branch : StrengthenedPrefix3ZmBranch) :
    ClosedBellmanStep 145 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0130_l11
    | exact ClosedBellmanStep.e0131_l13
    | exact ClosedBellmanStep.e0132_l03

end StrengthenedPrefix3ZmBranch

theorem strengthenedPrefix3ZmBranch_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix3ZmEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix3ZmBranch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix3ZmTransducerState.step
        strengthenedClosedPrefix3ZmTransducerState.gap
        strengthenedClosedPrefix3ZmTransducerState.k
        strengthenedClosedPrefix3ZmTransducerState.parity
        strengthenedClosedPrefix3ZmTransducerState.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix3ZmEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix3ZmBranch.yp, rfl⟩
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix3ZmBranch.zp, rfl⟩
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix3ZmBranch.tmpp, rfl⟩
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix3ZmEvalState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons

def strengthenedPrefix3ZmLocalBranchTable :
    StrengthenedLocalBranchTable strengthenedClosedPrefix3ZmEvalState where
  Branch := StrengthenedPrefix3ZmBranch
  face := StrengthenedPrefix3ZmBranch.face
  nextGraph := StrengthenedPrefix3ZmBranch.nextGraph
  gain := StrengthenedPrefix3ZmBranch.gain
  step := by
    intro branch
    change ClosedBellmanStep 145
      (StrengthenedPrefix3ZmBranch.face branch)
      (StrengthenedPrefix3ZmBranch.nextGraph branch)
      (StrengthenedPrefix3ZmBranch.gain branch)
    exact StrengthenedPrefix3ZmBranch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix3ZmBranch_of_tail htail

theorem closedPrefix3GraphRun_cases
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    StrengthenedClosedPrefixGraphRun rank 146
        [Face.xm, Face.ym, Face.tmpm] (-94 : Int) \/
      StrengthenedClosedPrefixGraphRun rank 144
          [Face.xm, Face.ym, Face.yp] (-43 : Int) \/
        StrengthenedClosedPrefixGraphRun rank 145
          [Face.xm, Face.ym, Face.zm] (20 : Int) := by
  rcases topPairingStepScheduleLabels_prefix3
      (closedScheduleLabels hclosed) with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    exact Or.inl ⟨rest, by simpa using hlabels, graphStepRun_prefix3_tmpm⟩
  · rcases hyp with ⟨rest, hlabels⟩
    exact Or.inr (Or.inl
      ⟨rest, by simpa using hlabels, graphStepRun_prefix3_yp⟩)
  · rcases hzm with ⟨rest, hlabels⟩
    exact Or.inr (Or.inr
      ⟨rest, by simpa using hlabels, graphStepRun_prefix3_zm⟩)

theorem strengthenedClosedPrefix3GraphRun_cases
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    StrengthenedClosedPrefixGraphRun rank 146
        [Face.xm, Face.ym, Face.tmpm] (-94 : Int) \/
      StrengthenedClosedPrefixGraphRun rank 144
          [Face.xm, Face.ym, Face.yp] (-43 : Int) \/
        StrengthenedClosedPrefixGraphRun rank 145
          [Face.xm, Face.ym, Face.zm] (20 : Int) :=
  closedPrefix3GraphRun_cases
    hstrengthened.toTopPairingClosedLanguageAtRank

theorem strengthenedClosedBellmanPrefixRunSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
