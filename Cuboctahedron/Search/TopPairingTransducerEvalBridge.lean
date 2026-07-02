import Cuboctahedron.Search.TopPairingTransducerTail

/-!
Deterministic eval bridge for the top-pairing transducer route.

The production Bellman route should not prove closed-language membership by
selected prefixes or sampled paths.  This module packages the semantic
transducer state next to the Bellman graph state, then proves that a successful
face-level deterministic eval projects to the ordinary Bellman evaluator over
mapped graph labels.
-/

namespace Cuboctahedron

structure TopPairingTransducerState where
  step : Nat
  gap : Nat
  k : Nat
  parity : SqParity
  linear : Mat3 Rat

namespace TopPairingTransducerState

def start : TopPairingTransducerState where
  step := 0
  gap := 0
  k := 0
  parity := SqParity.id
  linear := matId

def Tail (state : TopPairingTransducerState) (labels : List Face) : Prop :=
  TopPairingTransducerTail state.step state.gap state.k state.parity
    state.linear labels

def next? (state : TopPairingTransducerState) (face : Face) :
    Option TopPairingTransducerState :=
  match triLetterOfFace? face with
  | none =>
      some
        { step := state.step + 1
          gap := topPairingNextGap state.gap face
          k := state.k
          parity := state.parity.applyPair (pairOfFace face)
          linear := topPairingNextLinear state.linear face }
  | some tri =>
      if hk : state.k < topPairingTargetShadowLength then
        if tri.act state.parity = topPairingTargetShadow.get ⟨state.k, hk⟩ then
          some
            { step := state.step + 1
              gap := topPairingNextGap state.gap face
              k := state.k + 1
              parity := state.parity
              linear := topPairingNextLinear state.linear face }
        else
          none
      else
        none

theorem start_tail_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    start.Tail (topPairingRankFaceLabels rank) := by
  simpa [Tail, start] using TopPairingTransducerTail.ofClosedRank hclosed

theorem next?_tail
    {state : TopPairingTransducerState} {face : Face} {rest : List Face}
    (htail : state.Tail (face :: rest)) :
    ∃ nextState : TopPairingTransducerState,
      state.next? face = some nextState ∧ nextState.Tail rest := by
  cases htri : triLetterOfFace? face with
  | none =>
      refine ⟨
        { step := state.step + 1
          gap := topPairingNextGap state.gap face
          k := state.k
          parity := state.parity.applyPair (pairOfFace face)
          linear := topPairingNextLinear state.linear face }, ?_, ?_⟩
      · simp [next?, htri]
      · exact TopPairingTransducerTail.cons_square_tail htail htri
  | some tri =>
      rcases TopPairingTransducerTail.cons_tri_tail htail htri with
        ⟨hk, hletter, htailNext⟩
      refine ⟨
        { step := state.step + 1
          gap := topPairingNextGap state.gap face
          k := state.k + 1
          parity := state.parity
          linear := topPairingNextLinear state.linear face }, ?_, ?_⟩
      · simp [next?, htri, hk, hletter]
      · exact htailNext

end TopPairingTransducerState

structure TopPairingTransducerEvalState (State : Type) where
  transducer : TopPairingTransducerState
  graph : State

namespace TopPairingTransducerEvalState

def start {State : Type} (graphStart : State) :
    TopPairingTransducerEvalState State where
  transducer := TopPairingTransducerState.start
  graph := graphStart

def Tail {State : Type} (state : TopPairingTransducerEvalState State)
    (labels : List Face) : Prop :=
  state.transducer.Tail labels

def next? {State Label : Type}
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (state : TopPairingTransducerEvalState State)
    (face : Face) : Option (TopPairingTransducerEvalState State × Int) :=
  match state.transducer.next? face with
  | none => none
  | some transducerNext =>
      match next state.graph (labelOfFace face) with
      | none => none
      | some (graphNext, gain) =>
          some
            ({ transducer := transducerNext
               graph := graphNext }, gain)

theorem next?_tail
    {State Label : Type}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {state : TopPairingTransducerEvalState State}
    {face : Face} {rest : List Face} {graphNext : State} {gain : Int}
    (htail : state.Tail (face :: rest))
    (hgraph : next state.graph (labelOfFace face) = some (graphNext, gain)) :
    ∃ nextState : TopPairingTransducerEvalState State,
      next? next labelOfFace state face = some (nextState, gain) ∧
        nextState.Tail rest ∧ nextState.graph = graphNext := by
  rcases TopPairingTransducerState.next?_tail htail with
    ⟨transducerNext, htransducer, htailNext⟩
  refine ⟨{ transducer := transducerNext, graph := graphNext }, ?_, ?_, rfl⟩
  · simp [next?, htransducer, hgraph]
  · exact htailNext

theorem graph_next_of_next?
    {State Label : Type}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {state nextState : TopPairingTransducerEvalState State}
    {face : Face} {gain : Int}
    (hnext :
      next? next labelOfFace state face = some (nextState, gain)) :
    next state.graph (labelOfFace face) = some (nextState.graph, gain) := by
  unfold next? at hnext
  cases htransducer : state.transducer.next? face with
  | none =>
      simp [htransducer] at hnext
  | some transducerNext =>
      simp [htransducer] at hnext
      cases hgraph : next state.graph (labelOfFace face) with
      | none =>
          simp [hgraph] at hnext
      | some graphStep =>
          cases graphStep with
          | mk graphNext graphGain =>
              simp [hgraph] at hnext
              rcases hnext with ⟨rfl, rfl⟩
              rfl

theorem evalLabelStepFn_graph_of_faceEval
    {State Label : Type}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start finish : TopPairingTransducerEvalState State}
    {faces : List Face} {gain : Int}
    (heval :
      evalLabelStepFn (next? next labelOfFace) start faces =
        some (finish, gain)) :
    evalLabelStepFn next start.graph (faces.map labelOfFace) =
      some (finish.graph, gain) := by
  induction faces generalizing start finish gain with
  | nil =>
      simp [evalLabelStepFn] at heval
      rcases heval with ⟨rfl, rfl⟩
      rfl
  | cons face rest ih =>
      simp [evalLabelStepFn] at heval ⊢
      cases hstep : next? next labelOfFace start face with
      | none =>
          simp [hstep] at heval
      | some step =>
          cases step with
          | mk mid stepGain =>
              simp [hstep] at heval
              cases htail :
                  evalLabelStepFn (next? next labelOfFace) mid rest with
              | none =>
                  simp [htail] at heval
              | some tailResult =>
                  cases tailResult with
                  | mk tailState tailGain =>
                      simp [htail] at heval
                      rcases heval with ⟨rfl, rfl⟩
                      have hgraph := graph_next_of_next? hstep
                      rw [hgraph]
                      have htailGraph := ih htail
                      simp [htailGraph]

theorem evalLanguageAtRank_of_faceEval
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {badFace : Face}
    {finish : TopPairingTransducerEvalState State}
    {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (heval :
      evalLabelStepFn (next? next labelOfFace)
        (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) =
          some (finish, gain))
    (hfinal : 0 <= V finish.graph)
    (hmargin : scaledMargin rank <= const + gain) :
    TopPairingBellmanEvalLanguageAtRank
      V next labelOfFace graphStart const scaledMargin rank badFace where
  closed := hclosed
  eval_accepts := by
    refine ⟨(finish.graph, gain), ?_, hfinal, hmargin⟩
    have hgraphEval :=
      evalLabelStepFn_graph_of_faceEval
        (next := next) (labelOfFace := labelOfFace) heval
    have hlabels :
        faceLabelsInContributionOrder labelOfFace
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          (topPairingRankFaceLabels rank).map labelOfFace := by
      simpa [topPairingRankFaceLabels] using
        (faceLabelsInContributionOrder_map labelOfFace (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)))
    simpa [TopPairingTransducerEvalState.start, hlabels] using hgraphEval

end TopPairingTransducerEvalState

end Cuboctahedron
