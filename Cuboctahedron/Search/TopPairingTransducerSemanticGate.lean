import Cuboctahedron.Search.TopPairingBellmanSemanticGate
import Cuboctahedron.Search.TopPairingTransducerEvalBridge

/-!
Semantic gate adapters for the top-pairing transducer route.

The production Bellman route should prove deterministic evaluator membership
from semantic closed-language invariants, not from sampled paths or
selected-prefix membership.  The theorems here package the transducer
`invariantLocalWithSuffix` bridge as the generic closed/strengthened semantic
gate consumed by the Bellman object-cover layer.
-/

namespace Cuboctahedron

theorem closedToEvalGate_of_transducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      TopPairingTransducerEvalState State -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank badFace ->
          SuffixOk (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingClosedToEvalGate
      V next labelOfFace graphStart const scaledMargin badFace := by
  intro rank hclosed
  exact TopPairingTransducerEvalState.evalLanguageAtRank_of_invariantLocalWithSuffix
    (V := V) (next := next) (labelOfFace := labelOfFace)
    (graphStart := graphStart) (const := const)
    (scaledMargin := scaledMargin) Inv SuffixOk hclosed hstart
    (hsuffixStart rank hclosed) hlocal hfinish

theorem strengthenedToEvalGate_of_transducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      TopPairingTransducerEvalState State -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank badFace ->
          SuffixOk (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingStrengthenedToEvalGate
      V next labelOfFace graphStart const scaledMargin sequenceBadFace
      badFace := by
  intro rank hstrengthened
  exact TopPairingTransducerEvalState.evalLanguageAtRank_of_invariantLocalWithSuffix
    (V := V) (next := next) (labelOfFace := labelOfFace)
    (graphStart := graphStart) (const := const)
    (scaledMargin := scaledMargin) Inv SuffixOk hstrengthened.closed hstart
    (hsuffixStart rank hstrengthened) hlocal hfinish

theorem closedToGraphExactEvalGate_of_transducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      TopPairingTransducerEvalState State -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank badFace ->
          SuffixOk (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingClosedToGraphExactEvalGate
      V next labelOfFace graphStart const scaledMargin badFace :=
  closedToGraphExactEvalGate_of_evalGate
    (closedToEvalGate_of_transducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)

theorem strengthenedToGraphExactEvalGate_of_transducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      TopPairingTransducerEvalState State -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank badFace ->
          SuffixOk (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingStrengthenedToGraphExactEvalGate
      V next labelOfFace graphStart const scaledMargin sequenceBadFace
      badFace :=
  strengthenedToGraphExactEvalGate_of_evalGate
    (strengthenedToEvalGate_of_transducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)

theorem closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      Fin numPairWords -> TopPairingTransducerEvalState State ->
        List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank badFace ->
          SuffixOk rank (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {rank : Fin numPairWords}
        {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk rank state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk rank nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk rank finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingClosedToEvalGate
      V next labelOfFace graphStart const scaledMargin badFace := by
  intro rank hclosed
  exact TopPairingTransducerEvalState.evalLanguageAtRank_of_invariantLocalWithSuffix
    (V := V) (next := next) (labelOfFace := labelOfFace)
    (graphStart := graphStart) (const := const)
    (scaledMargin := scaledMargin) Inv (SuffixOk rank) hclosed hstart
    (hsuffixStart rank hclosed)
    (by
      intro state face rest hinv htail hsuffix
      exact hlocal hinv htail hsuffix)
    hfinish

theorem strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      Fin numPairWords -> TopPairingTransducerEvalState State ->
        List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank badFace ->
          SuffixOk rank (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {rank : Fin numPairWords}
        {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk rank state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk rank nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk rank finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingStrengthenedToEvalGate
      V next labelOfFace graphStart const scaledMargin sequenceBadFace
      badFace := by
  intro rank hstrengthened
  exact TopPairingTransducerEvalState.evalLanguageAtRank_of_invariantLocalWithSuffix
    (V := V) (next := next) (labelOfFace := labelOfFace)
    (graphStart := graphStart) (const := const)
    (scaledMargin := scaledMargin) Inv (SuffixOk rank)
    hstrengthened.closed hstart (hsuffixStart rank hstrengthened)
    (by
      intro state face rest hinv htail hsuffix
      exact hlocal hinv htail hsuffix)
    hfinish

theorem closedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      Fin numPairWords -> TopPairingTransducerEvalState State ->
        List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank badFace ->
          SuffixOk rank (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {rank : Fin numPairWords}
        {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk rank state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk rank nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk rank finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingClosedToGraphExactEvalGate
      V next labelOfFace graphStart const scaledMargin badFace :=
  closedToGraphExactEvalGate_of_evalGate
    (closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)

theorem strengthenedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {badFace : Face}
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      Fin numPairWords -> TopPairingTransducerEvalState State ->
        List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank badFace ->
          SuffixOk rank (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {rank : Fin numPairWords}
        {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk rank state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk rank nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk rank finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain) :
    TopPairingStrengthenedToGraphExactEvalGate
      V next labelOfFace graphStart const scaledMargin sequenceBadFace
      badFace :=
  strengthenedToGraphExactEvalGate_of_evalGate
    (strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)

theorem scaledMargin_nonpos_of_transducerClosedGate
    {badFace : Face}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      TopPairingTransducerEvalState State -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank badFace ->
          SuffixOk (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V graphStart <= 0)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSemanticGate
    (V := V) (Step := Step) (next := next) (labelOfFace := labelOfFace)
    (start := graphStart) (const := const) (scaledMargin := scaledMargin)
    next_sound
    (closedToEvalGate_of_transducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)
    step_valid root_bound hclosed

theorem scaledMargin_nonpos_of_transducerStrengthenedGate
    {badFace : Face}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      TopPairingTransducerEvalState State -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank badFace ->
          SuffixOk (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V graphStart <= 0)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank badFace) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_strengthenedSemanticGate
    (V := V) (Step := Step) (next := next) (labelOfFace := labelOfFace)
    (start := graphStart) (const := const) (scaledMargin := scaledMargin)
    next_sound
    (strengthenedToEvalGate_of_transducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)
    step_valid root_bound hstrengthened

theorem scaledMargin_nonpos_of_rankedTransducerClosedGate
    {badFace : Face}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      Fin numPairWords -> TopPairingTransducerEvalState State ->
        List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank badFace ->
          SuffixOk rank (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {rank : Fin numPairWords}
        {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk rank state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk rank nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk rank finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V graphStart <= 0)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_closedSemanticGate
    (V := V) (Step := Step) (next := next) (labelOfFace := labelOfFace)
    (start := graphStart) (const := const) (scaledMargin := scaledMargin)
    next_sound
    (closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)
    step_valid root_bound hclosed

theorem scaledMargin_nonpos_of_rankedTransducerStrengthenedGate
    {badFace : Face}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {graphStart : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (Inv : TopPairingTransducerEvalState State -> Prop)
    (SuffixOk :
      Fin numPairWords -> TopPairingTransducerEvalState State ->
        List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start graphStart))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank badFace ->
          SuffixOk rank (TopPairingTransducerEvalState.start graphStart)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {rank : Fin numPairWords}
        {state : TopPairingTransducerEvalState State}
        {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk rank state (face :: rest) ->
          exists nextState gain,
            TopPairingTransducerEvalState.next? next labelOfFace state face =
              some (nextState, gain) ∧
            nextState.Tail rest ∧ Inv nextState ∧
              SuffixOk rank nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : TopPairingTransducerEvalState State} {gain : Int},
        evalLabelStepFn
          (TopPairingTransducerEvalState.next? next labelOfFace)
          (TopPairingTransducerEvalState.start graphStart)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk rank finish [] ->
          0 <= V finish.graph ∧ scaledMargin rank <= const + gain)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V graphStart <= 0)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank badFace) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_strengthenedSemanticGate
    (V := V) (Step := Step) (next := next) (labelOfFace := labelOfFace)
    (start := graphStart) (const := const) (scaledMargin := scaledMargin)
    next_sound
    (strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (graphStart := graphStart) (const := const)
      (scaledMargin := scaledMargin) Inv SuffixOk hstart hsuffixStart hlocal
      hfinish)
    step_valid root_bound hstrengthened

end Cuboctahedron
