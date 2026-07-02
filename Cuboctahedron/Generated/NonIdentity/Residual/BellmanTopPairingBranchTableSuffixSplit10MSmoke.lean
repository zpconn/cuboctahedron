import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke

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

theorem branchTableSuffixSplit10MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke
