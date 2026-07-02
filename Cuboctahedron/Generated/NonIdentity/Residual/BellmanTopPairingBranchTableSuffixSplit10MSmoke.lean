import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke

set_option maxRecDepth 4096

/-!
Branch-table suffix smoke for the split-10M top-pairing graph.

This module stores finite split `StrengthenedBranchTable` evidence in the
suffix predicate and derives deterministic evaluator progress through the
split local-progress bridge.  It is not final closed-language membership; it
is the theorem surface the next semantic membership emitter should produce.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke

abbrev BranchInv (state : FaceEvalState) : Prop :=
  BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke.Inv state

/--
Suffix predicate whose branch stores split branch-table membership rather than
a direct `faceEvalNext` equation.
-/
inductive BranchTableSuffixOk (rank : Fin numPairWords) :
    FaceEvalState -> List Face -> Prop
  | nil (state : FaceEvalState) : BranchTableSuffixOk rank state []
  | graph {state : FaceEvalState} {face : Face} {rest : List Face}
      (hbranch : StrengthenedBranchTable state.graph face BranchKind.graph)
      (hrest :
        ∀ nextState gain,
          faceEvalNext state face = some (nextState, gain) ->
          nextState.Tail rest ->
          BranchInv nextState ->
            BranchTableSuffixOk rank nextState rest) :
      BranchTableSuffixOk rank state (face :: rest)

/--
Local evaluator progress from the split branch-table suffix predicate.
-/
theorem branchTableSuffixOk_local
    {rank : Fin numPairWords}
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : BranchInv state)
    (htail : state.Tail (face :: rest))
    (hsuffix : BranchTableSuffixOk rank state (face :: rest)) :
    ∃ nextState gain,
      faceEvalNext state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ BranchInv nextState ∧
          BranchTableSuffixOk rank nextState rest := by
  cases hsuffix with
  | graph hbranch hrest =>
      rcases faceEvalNext_of_graphBranchTable hinv htail hbranch with
        ⟨nextState, gain, hnext, htailNext, hinvNext⟩
      exact ⟨nextState, gain, hnext, htailNext, hinvNext,
        hrest nextState gain hnext htailNext hinvNext⟩

theorem eval_exists_of_branchTableSuffixOk
    {rank : Fin numPairWords}
    {state : FaceEvalState} {faces : List Face}
    (hinv : BranchInv state)
    (htail : state.Tail faces)
    (hsuffix : BranchTableSuffixOk rank state faces) :
    ∃ finish gain,
      evalLabelStepFn faceEvalNext state faces =
        some (finish, gain) ∧
        finish.Tail [] ∧ BranchInv finish ∧
          BranchTableSuffixOk rank finish [] :=
  TopPairingTransducerEvalState.evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix
    (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
    BranchInv (BranchTableSuffixOk rank) branchTableSuffixOk_local
    hinv htail hsuffix

/--
Rank-level Bellman eval language from semantic branch-table suffix evidence.

This is the production-shaped bridge for this smoke: the generated membership
emitter should prove `BranchTableSuffixOk` from closed transducer/cursor state
and a strengthened suffix predicate; this theorem then invokes the generic
deterministic evaluator socket, without selected-prefix or sampled-rank
membership.
-/
theorem evalLanguageAtRank_of_branchTableSuffixOk
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      BranchTableSuffixOk rank
        (TopPairingTransducerEvalState.start rootState)
        (topPairingRankFaceLabels rank))
    (hfinish :
      forall {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        BranchInv finish ->
        BranchTableSuffixOk rank finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  TopPairingTransducerEvalState.evalLanguageAtRank_of_invariantLocalWithSuffix
    (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
    BranchInv (BranchTableSuffixOk rank) hclosed start_inv hsuffix
    branchTableSuffixOk_local hfinish

/--
Semantic root-prefix lift for the split branch-table suffix predicate.
-/
theorem branchTableSuffixOk_root_of_closedPrefix2
    {rank : Fin numPairWords}
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest)
    (hsuffix : BranchTableSuffixOk rank closedPrefix2EvalState rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rw [hlabels]
  refine BranchTableSuffixOk.graph
    StrengthenedBranchTable.graph_0000_s0000_xm ?_
  intro nextState gain hnext _htailNext _hinvNext
  rw [closed_prefix1_next] at hnext
  cases hnext
  refine BranchTableSuffixOk.graph
    StrengthenedBranchTable.graph_0533_s0608_ym ?_
  intro nextState gain hnext _htailNext _hinvNext
  rw [closed_prefix2_next_from_prefix1] at hnext
  cases hnext
  exact hsuffix

theorem branchTableSuffixOk_root_of_closedPrefix2_forall
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      ∀ rest : List Face,
        topPairingRankFaceLabels rank = Face.xm :: Face.ym :: rest ->
          BranchTableSuffixOk rank closedPrefix2EvalState rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rcases topPairingStepScheduleLabels_prefix_xm_ym hclosed.schedule with
    ⟨rest, hlabels⟩
  exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
    (hsuffix rest hlabels)

/--
Semantic branch lift after the Lean-proved `xm, ym` prefix.
-/
theorem branchTableSuffixOk_closedPrefix2_branch_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face :: rest)
    (hsuffix :
      ∀ nextState gain,
        faceEvalNext closedPrefix2EvalState face = some (nextState, gain) ->
        nextState.Tail rest ->
        BranchInv nextState ->
          BranchTableSuffixOk rank nextState rest) :
    BranchTableSuffixOk rank closedPrefix2EvalState (face :: rest) := by
  have hschedule :
      TopPairingStepScheduleLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using hclosed.schedule
  have hface :
      face ∈ topPairingAllowedFacesAtStep 2 := by
    simpa using
      (topPairingStepScheduleLabels_allows_next_of_prefix
        (labels := topPairingRankFaceLabels rank)
        (pfx := [Face.xm, Face.ym])
        (rest := rest)
        hschedule
        (by simpa using hlabels))
  simp [topPairingAllowedFacesAtStep] at hface
  rcases hface with rfl | rfl | rfl
  · refine BranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0541_s0610_tmpm ?_
    intro nextState gain hnext htailNext hinvNext
    exact hsuffix nextState gain hnext htailNext hinvNext
  · refine BranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0539_s0610_yp ?_
    intro nextState gain hnext htailNext hinvNext
    exact hsuffix nextState gain hnext htailNext hinvNext
  · refine BranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0540_s0610_zm ?_
    intro nextState gain hnext htailNext hinvNext
    exact hsuffix nextState gain hnext htailNext hinvNext

theorem branchTableSuffixOk_root_of_closedPrefix3_forall
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      ∀ face rest nextState gain,
        topPairingRankFaceLabels rank =
          Face.xm :: Face.ym :: face :: rest ->
        faceEvalNext closedPrefix2EvalState face = some (nextState, gain) ->
        nextState.Tail rest ->
        BranchInv nextState ->
          BranchTableSuffixOk rank nextState rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
      (branchTableSuffixOk_closedPrefix2_branch_of_closed
        hclosed hlabels
        (fun nextState gain hnext htailNext hinvNext =>
          hsuffix Face.tmpm rest nextState gain hlabels hnext htailNext
            hinvNext))
  · rcases hyp with ⟨rest, hlabels⟩
    exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
      (branchTableSuffixOk_closedPrefix2_branch_of_closed
        hclosed hlabels
        (fun nextState gain hnext htailNext hinvNext =>
          hsuffix Face.yp rest nextState gain hlabels hnext htailNext
            hinvNext))
  · rcases hzm with ⟨rest, hlabels⟩
    exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
      (branchTableSuffixOk_closedPrefix2_branch_of_closed
        hclosed hlabels
        (fun nextState gain hnext htailNext hinvNext =>
          hsuffix Face.zm rest nextState gain hlabels hnext htailNext
            hinvNext))

/--
Lightweight graph-indexed suffix predicate for the split graph.

This is the target shape for the next semantic membership emitter: store
finite graph-state branch-table evidence over small graph ids, then convert it
to the full transducer/evaluator suffix at the bridge boundary.
-/
inductive GraphBranchTableSuffixOk (rank : Fin numPairWords) :
    State -> List Face -> Prop
  | nil (graph : State) : GraphBranchTableSuffixOk rank graph []
  | graph {graph : State} {face : Face} {rest : List Face}
      (hbranch : StrengthenedBranchTable graph face BranchKind.graph)
      (hrest :
        ∀ graphNext gain,
          graphSmokeNext graph (smokeLabelOfFace face) =
            some (graphNext, gain) ->
          GraphBranchTableSuffixOk rank graphNext rest) :
      GraphBranchTableSuffixOk rank graph (face :: rest)

theorem branchTableSuffixOk_of_graphBranchTableSuffixOk_aux
    {rank : Fin numPairWords}
    {graph : State} {faces : List Face}
    (hsuffix : GraphBranchTableSuffixOk rank graph faces) :
    ∀ state : FaceEvalState,
      state.graph = graph -> BranchTableSuffixOk rank state faces := by
  induction hsuffix with
  | nil graph =>
      intro state hstate
      cases hstate
      exact BranchTableSuffixOk.nil state
  | graph hbranch hrest ih =>
      intro state hstate
      cases hstate
      refine BranchTableSuffixOk.graph (by simpa using hbranch) ?_
      intro nextState gain hnext _htailNext _hinvNext
      have hgraph :=
        TopPairingTransducerEvalState.graph_next_of_next?
          (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace) hnext
      exact ih nextState.graph gain hgraph nextState rfl

theorem branchTableSuffixOk_of_graphBranchTableSuffixOk
    {rank : Fin numPairWords}
    {state : FaceEvalState} {faces : List Face}
    (hsuffix : GraphBranchTableSuffixOk rank state.graph faces) :
    BranchTableSuffixOk rank state faces :=
  branchTableSuffixOk_of_graphBranchTableSuffixOk_aux hsuffix state rfl

/--
Rank-level Bellman eval language from graph-only branch-table suffix evidence.

This is a lighter generated target than storing full transducer states in every
suffix node: graph-only suffix evidence is converted to the full semantic
suffix at the bridge boundary, where the closed transducer tail supplies the
missing cursor/schedule/local-axis facts.
-/
theorem evalLanguageAtRank_of_graphBranchTableSuffixOk
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      GraphBranchTableSuffixOk rank rootState
        (topPairingRankFaceLabels rank))
    (hfinish :
      forall {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        BranchInv finish ->
        BranchTableSuffixOk rank finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguageAtRank_of_branchTableSuffixOk hclosed
    (branchTableSuffixOk_of_graphBranchTableSuffixOk
      (state := TopPairingTransducerEvalState.start rootState) hsuffix)
    hfinish

def closedPrefix3TmpmTransducerState : TopPairingTransducerState where
  step := 3
  gap := topPairingNextGap
    (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) Face.tmpm
  k := 1
  parity := (SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)
  linear := topPairingNextLinear
    (topPairingNextLinear
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
    Face.tmpm

def closedPrefix3TmpmEvalState : FaceEvalState where
  transducer := closedPrefix3TmpmTransducerState
  graph := (618 : State)

def closedPrefix3YpTransducerState : TopPairingTransducerState where
  step := 3
  gap := topPairingNextGap
    (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) Face.yp
  k := 0
  parity := ((SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)).applyPair (pairOfFace Face.yp)
  linear := topPairingNextLinear
    (topPairingNextLinear
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
    Face.yp

def closedPrefix3YpEvalState : FaceEvalState where
  transducer := closedPrefix3YpTransducerState
  graph := (615 : State)

def closedPrefix3ZmTransducerState : TopPairingTransducerState where
  step := 3
  gap := topPairingNextGap
    (topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym) Face.zm
  k := 0
  parity := ((SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)).applyPair (pairOfFace Face.zm)
  linear := topPairingNextLinear
    (topPairingNextLinear
      (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym)
    Face.zm

def closedPrefix3ZmEvalState : FaceEvalState where
  transducer := closedPrefix3ZmTransducerState
  graph := (616 : State)

theorem closed_prefix3_tmpm_next :
    faceEvalNext closedPrefix2EvalState Face.tmpm =
      some (closedPrefix3TmpmEvalState, (-124 : Int)) := by
  rfl

theorem closed_prefix3_yp_next :
    faceEvalNext closedPrefix2EvalState Face.yp =
      some (closedPrefix3YpEvalState, (-73 : Int)) := by
  rfl

theorem closed_prefix3_zm_next :
    faceEvalNext closedPrefix2EvalState Face.zm =
      some (closedPrefix3ZmEvalState, (-10 : Int)) := by
  rfl

private theorem closed_prefix3_tmpm_tail
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.tmpm :: rest) :
    closedPrefix3TmpmEvalState.Tail rest := by
  have htail2 : closedPrefix2EvalState.Tail (Face.tmpm :: rest) :=
    closed_prefix2_tail hclosed hlabels
  have hgraph :
      graphSmokeNext closedPrefix2EvalState.graph
          (smokeLabelOfFace Face.tmpm) =
        some ((618 : State), (-124 : Int)) := by
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail2 hgraph with
    ⟨nextState, hnext, htailNext, _hgraphNext⟩
  change faceEvalNext closedPrefix2EvalState Face.tmpm =
    some (nextState, (-124 : Int)) at hnext
  rw [closed_prefix3_tmpm_next] at hnext
  cases hnext
  exact htailNext

private theorem closed_prefix3_yp_tail
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.yp :: rest) :
    closedPrefix3YpEvalState.Tail rest := by
  have htail2 : closedPrefix2EvalState.Tail (Face.yp :: rest) :=
    closed_prefix2_tail hclosed hlabels
  have hgraph :
      graphSmokeNext closedPrefix2EvalState.graph
          (smokeLabelOfFace Face.yp) =
        some ((615 : State), (-73 : Int)) := by
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail2 hgraph with
    ⟨nextState, hnext, htailNext, _hgraphNext⟩
  change faceEvalNext closedPrefix2EvalState Face.yp =
    some (nextState, (-73 : Int)) at hnext
  rw [closed_prefix3_yp_next] at hnext
  cases hnext
  exact htailNext

private theorem closed_prefix3_zm_tail
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.zm :: rest) :
    closedPrefix3ZmEvalState.Tail rest := by
  have htail2 : closedPrefix2EvalState.Tail (Face.zm :: rest) :=
    closed_prefix2_tail hclosed hlabels
  have hgraph :
      graphSmokeNext closedPrefix2EvalState.graph
          (smokeLabelOfFace Face.zm) =
        some ((616 : State), (-10 : Int)) := by
    rfl
  rcases TopPairingTransducerEvalState.next?_tail
      (next := graphSmokeNext) (labelOfFace := smokeLabelOfFace)
      htail2 hgraph with
    ⟨nextState, hnext, htailNext, _hgraphNext⟩
  change faceEvalNext closedPrefix2EvalState Face.zm =
    some (nextState, (-10 : Int)) at hnext
  rw [closed_prefix3_zm_next] at hnext
  cases hnext
  exact htailNext

theorem graphBranchTableSuffixOk_closedPrefix2_branch_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face :: rest)
    (hsuffix :
      ∀ graphNext gain,
        graphSmokeNext (610 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank (610 : State) (face :: rest) := by
  have hschedule :
      TopPairingStepScheduleLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using hclosed.schedule
  have hface :
      face ∈ topPairingAllowedFacesAtStep 2 := by
    simpa using
      (topPairingStepScheduleLabels_allows_next_of_prefix
        (labels := topPairingRankFaceLabels rank)
        (pfx := [Face.xm, Face.ym])
        (rest := rest)
        hschedule
        (by simpa using hlabels))
  simp [topPairingAllowedFacesAtStep] at hface
  rcases hface with rfl | rfl | rfl
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0541_s0610_tmpm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0539_s0610_yp ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0540_s0610_zm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph

theorem graphBranchTableSuffixOk_closedPrefix3_tmpm_branch_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.tmpm :: face :: rest)
    (hsuffix :
      ∀ graphNext gain,
        graphSmokeNext (618 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank (618 : State) (face :: rest) := by
  have htail : closedPrefix3TmpmEvalState.Tail (face :: rest) :=
    closed_prefix3_tmpm_tail hclosed hlabels
  have htailRaw :
      TopPairingTransducerTail
        closedPrefix3TmpmEvalState.transducer.step
        closedPrefix3TmpmEvalState.transducer.gap
        closedPrefix3TmpmEvalState.transducer.k
        closedPrefix3TmpmEvalState.transducer.parity
        closedPrefix3TmpmEvalState.transducer.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have hsquare := htailRaw.trace.squareGap
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingNextGap, TopPairingSquareGapFrom,
      topPairingAllowedSquareFacesAtGap,
      pairOfFace, isSquarePair] at hsquare
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0560_s0618_zm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0561_s0618_tppm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · simp [closedPrefix3TmpmEvalState, closedPrefix3TmpmTransducerState,
      topPairingAllowedFacesAtStep] at hcons

theorem graphBranchTableSuffixOk_closedPrefix3_yp_branch_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.yp :: face :: rest)
    (hsuffix :
      ∀ graphNext gain,
        graphSmokeNext (615 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank (615 : State) (face :: rest) := by
  have htail : closedPrefix3YpEvalState.Tail (face :: rest) :=
    closed_prefix3_yp_tail hclosed hlabels
  have htailRaw :
      TopPairingTransducerTail
        closedPrefix3YpEvalState.transducer.step
        closedPrefix3YpEvalState.transducer.gap
        closedPrefix3YpEvalState.transducer.k
        closedPrefix3YpEvalState.transducer.parity
        closedPrefix3YpEvalState.transducer.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0552_s0615_zm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0553_s0615_tmmm ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.xor, SqParity.id,
      pairOfFace,
      topPairingTargetShadow] at hcons
  · simp [closedPrefix3YpEvalState, closedPrefix3YpTransducerState,
      topPairingAllowedFacesAtStep] at hcons

theorem graphBranchTableSuffixOk_closedPrefix3_zm_branch_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {face : Face} {rest : List Face}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: Face.zm :: face :: rest)
    (hsuffix :
      ∀ graphNext gain,
        graphSmokeNext (616 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank (616 : State) (face :: rest) := by
  have htail : closedPrefix3ZmEvalState.Tail (face :: rest) :=
    closed_prefix3_zm_tail hclosed hlabels
  have htailRaw :
      TopPairingTransducerTail
        closedPrefix3ZmEvalState.transducer.step
        closedPrefix3ZmEvalState.transducer.gap
        closedPrefix3ZmEvalState.transducer.k
        closedPrefix3ZmEvalState.transducer.parity
        closedPrefix3ZmEvalState.transducer.linear (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0554_s0616_yp ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0555_s0616_zp ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · have haxis := hcons.2.1
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · have haxis := hcons.2.1
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · refine GraphBranchTableSuffixOk.graph
      StrengthenedBranchTable.graph_0556_s0616_tmpp ?_
    intro graphNext gain hgraph
    exact hsuffix graphNext gain hgraph
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear, topPairingLocalAxis,
      normalQ, matVec,
      matMul, reflM, matSub, scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [closedPrefix3ZmEvalState, closedPrefix3ZmTransducerState,
      topPairingAllowedFacesAtStep] at hcons

theorem graphBranchTableSuffixOk_closedPrefix3_branch_of_closed
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {third fourth : Face} {rest : List Face}
    {graph3 : State} {gain3 : Int}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: third :: fourth :: rest)
    (hgraph3 :
      graphSmokeNext (610 : State) (smokeLabelOfFace third) =
        some (graph3, gain3))
    (hsuffix :
      ∀ graph4 gain4,
        graphSmokeNext graph3 (smokeLabelOfFace fourth) =
          some (graph4, gain4) ->
        GraphBranchTableSuffixOk rank graph4 rest) :
    GraphBranchTableSuffixOk rank graph3 (fourth :: rest) := by
  have hschedule :
      TopPairingStepScheduleLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using hclosed.schedule
  have hthird :
      third ∈ topPairingAllowedFacesAtStep 2 := by
    simpa using
      (topPairingStepScheduleLabels_allows_next_of_prefix
        (labels := topPairingRankFaceLabels rank)
        (pfx := [Face.xm, Face.ym])
        (rest := fourth :: rest)
        hschedule
        (by simpa using hlabels))
  simp [topPairingAllowedFacesAtStep] at hthird
  rcases hthird with rfl | rfl | rfl
  · change graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
        some (graph3, gain3) at hgraph3
    rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
        some ((618 : State), (-124 : Int)) by rfl] at hgraph3
    cases hgraph3
    exact graphBranchTableSuffixOk_closedPrefix3_tmpm_branch_of_closed
      hclosed hlabels hsuffix
  · change graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
        some (graph3, gain3) at hgraph3
    rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
        some ((615 : State), (-73 : Int)) by rfl] at hgraph3
    cases hgraph3
    exact graphBranchTableSuffixOk_closedPrefix3_yp_branch_of_closed
      hclosed hlabels hsuffix
  · change graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
        some (graph3, gain3) at hgraph3
    rw [show graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
        some ((616 : State), (-10 : Int)) by rfl] at hgraph3
    cases hgraph3
    exact graphBranchTableSuffixOk_closedPrefix3_zm_branch_of_closed
      hclosed hlabels hsuffix

theorem branchTableSuffixOk_root_of_graphClosedPrefix3_forall
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      ∀ face rest graphNext gain,
        topPairingRankFaceLabels rank =
          Face.xm :: Face.ym :: face :: rest ->
        graphSmokeNext (610 : State) (smokeLabelOfFace face) =
          some (graphNext, gain) ->
        GraphBranchTableSuffixOk rank graphNext rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
      (branchTableSuffixOk_of_graphBranchTableSuffixOk
        (graphBranchTableSuffixOk_closedPrefix2_branch_of_closed
          hclosed hlabels
          (fun graphNext gain hgraph =>
            hsuffix Face.tmpm rest graphNext gain hlabels hgraph)))
  · rcases hyp with ⟨rest, hlabels⟩
    exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
      (branchTableSuffixOk_of_graphBranchTableSuffixOk
        (graphBranchTableSuffixOk_closedPrefix2_branch_of_closed
          hclosed hlabels
          (fun graphNext gain hgraph =>
            hsuffix Face.yp rest graphNext gain hlabels hgraph)))
  · rcases hzm with ⟨rest, hlabels⟩
    exact branchTableSuffixOk_root_of_closedPrefix2 hlabels
      (branchTableSuffixOk_of_graphBranchTableSuffixOk
        (graphBranchTableSuffixOk_closedPrefix2_branch_of_closed
          hclosed hlabels
          (fun graphNext gain hgraph =>
            hsuffix Face.zm rest graphNext gain hlabels hgraph)))

theorem branchTableSuffixOk_root_of_graphClosedPrefix4_forall
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hsuffix :
      ∀ third fourth rest graph3 gain3 graph4 gain4,
        topPairingRankFaceLabels rank =
          Face.xm :: Face.ym :: third :: fourth :: rest ->
        graphSmokeNext (610 : State) (smokeLabelOfFace third) =
          some (graph3, gain3) ->
        graphSmokeNext graph3 (smokeLabelOfFace fourth) =
          some (graph4, gain4) ->
        GraphBranchTableSuffixOk rank graph4 rest) :
    BranchTableSuffixOk rank
      (TopPairingTransducerEvalState.start rootState)
      (topPairingRankFaceLabels rank) := by
  exact branchTableSuffixOk_root_of_graphClosedPrefix3_forall hclosed
    (fun third rest graph3 gain3 hlabels hgraph3 =>
      match rest with
      | [] =>
          False.elim <| by
            have hlenRank : (topPairingRankFaceLabels rank).length = 14 := by
              simpa [topPairingRankFaceLabels] using hclosed.schedule.1
            rw [hlabels] at hlenRank
            norm_num at hlenRank
      | fourth :: restTail =>
          graphBranchTableSuffixOk_closedPrefix3_branch_of_closed
            hclosed hlabels hgraph3
            (fun graph4 gain4 hgraph4 =>
              hsuffix third fourth restTail graph3 gain3 graph4 gain4
                hlabels hgraph3 hgraph4))

theorem branchTableSuffixSplit10MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
