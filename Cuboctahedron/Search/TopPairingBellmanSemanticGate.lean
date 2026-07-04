import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Lightweight semantic gate for top-pairing Bellman coverage.

Generated producer modules should target one of the two theorem shapes here:
closed-language-to-eval, or strengthened-language-to-eval.  This file keeps the
object-cover consequence at the search/core layer, away from heavy generated
root producer imports.
-/

namespace Cuboctahedron

abbrev TopPairingClosedToEvalGate
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (badFace : Face) : Prop :=
  forall rank,
    TopPairingClosedLanguageAtRank rank badFace ->
      TopPairingBellmanEvalLanguageAtRank
        V next labelOfFace start const scaledMargin rank badFace

abbrev TopPairingStrengthenedToEvalGate
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (badFace : Face) : Prop :=
  forall rank,
    TopPairingStrengthenedClosedLanguageAtRank sequenceBadFace rank badFace ->
      TopPairingBellmanEvalLanguageAtRank
        V next labelOfFace start const scaledMargin rank badFace

/--
Graph-exact semantic eval gate result for one rank and one concrete graph
finish.

The graph finish and gain are explicit parameters so this remains a
`Prop`-valued proof object.  Generated code should prove one such result from
closed-language/cursor semantics, not from sampled traces or selected prefixes.
-/
structure TopPairingGraphExactEvalGateResult
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (badFace : Face)
    (finish : State)
    (gain : Int) : Prop where
  closed :
    TopPairingClosedLanguageAtRank rank badFace
  eval_eq :
    evalLabelStepFn next start
      (faceLabelsInContributionOrder labelOfFace
        (canonicalSeqOfPairWord (unrankPairWord rank))) =
        some (finish, gain)
  final_nonneg :
    0 <= V finish
  margin_bound :
    scaledMargin rank <= const + gain

/--
Graph-exact semantic eval gate for one rank.

This is the production-facing target for deterministic Bellman families once a
closed top-pairing language theorem supplies the graph evaluator result.  It
keeps the obligation semantic: generated code proves the evaluator equation,
the terminal potential fact, and the margin-gain inequality, without storing a
selected prefix, accepted trace id, sampled path, or rank table.
-/
abbrev TopPairingGraphExactEvalGateAtRank
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (badFace : Face) : Prop :=
  exists finish gain,
    TopPairingGraphExactEvalGateResult
      V next labelOfFace start const scaledMargin rank badFace finish gain

abbrev TopPairingClosedToGraphExactEvalGate
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (badFace : Face) : Prop :=
  forall rank,
    TopPairingClosedLanguageAtRank rank badFace ->
      TopPairingGraphExactEvalGateAtRank
        V next labelOfFace start const scaledMargin rank badFace

abbrev TopPairingStrengthenedToGraphExactEvalGate
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (badFace : Face) : Prop :=
  forall rank,
    TopPairingStrengthenedClosedLanguageAtRank sequenceBadFace rank badFace ->
      TopPairingGraphExactEvalGateAtRank
        V next labelOfFace start const scaledMargin rank badFace

/--
Closed-language semantic gate whose membership theorem constructs a Bellman
label-step run directly.

This is the preferred target when a generated deterministic graph already has
a small inductive step relation with local potential inequalities.  It avoids
proving a global inverse theorem for a generated `next` dispatcher.
-/
abbrev TopPairingClosedToStepRunGate
    {State Label : Type}
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (badFace : Face) : Prop :=
  forall rank,
    TopPairingClosedLanguageAtRank rank badFace ->
      exists finish gain,
        BellmanLabelStepRun Step start finish
            (faceLabelsInContributionOrder labelOfFace
              (canonicalSeqOfPairWord (unrankPairWord rank))) gain /\
          0 <= V finish /\
            scaledMargin rank <= const + gain

/--
Strengthened closed-language variant of `TopPairingClosedToStepRunGate`.
-/
abbrev TopPairingStrengthenedToStepRunGate
    {State Label : Type}
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (badFace : Face) : Prop :=
  forall rank,
    TopPairingStrengthenedClosedLanguageAtRank sequenceBadFace rank badFace ->
      exists finish gain,
        BellmanLabelStepRun Step start finish
            (faceLabelsInContributionOrder labelOfFace
              (canonicalSeqOfPairWord (unrankPairWord rank))) gain /\
          0 <= V finish /\
            scaledMargin rank <= const + gain

theorem evalLanguageAtRank_of_graphExactEvalGate
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {badFace : Face}
    (gate :
      TopPairingGraphExactEvalGateAtRank
        V next labelOfFace start const scaledMargin rank badFace) :
    TopPairingBellmanEvalLanguageAtRank
      V next labelOfFace start const scaledMargin rank badFace where
  closed := by
    rcases gate with ⟨finish, gain, gate⟩
    exact gate.closed
  eval_accepts := by
    rcases gate with ⟨finish, gain, gate⟩
    exact ⟨(finish, gain), gate.eval_eq, gate.final_nonneg,
      gate.margin_bound⟩

/--
Variant of `evalLanguageAtRank_of_graphExactEvalGate` matching the graph
equations emitted by the current deterministic top-pairing graph modules.
Those modules evaluate `(topPairingRankFaceLabels rank).map labelOfFace`; this
adapter performs the small, shared rewrite to the public Bellman word.
-/
theorem evalLanguageAtRank_of_mappedRankLabelsGraphExact
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {badFace : Face}
    {finish : State}
    {gain : Int}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace)
    (heval :
      evalLabelStepFn next start
        ((topPairingRankFaceLabels rank).map labelOfFace) =
          some (finish, gain))
    (hfinal : 0 <= V finish)
    (hmargin : scaledMargin rank <= const + gain) :
    TopPairingBellmanEvalLanguageAtRank
      V next labelOfFace start const scaledMargin rank badFace where
  closed := hclosed
  eval_accepts := by
    refine ⟨(finish, gain), ?_, hfinal, hmargin⟩
    have hlabels :
        faceLabelsInContributionOrder labelOfFace
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          (topPairingRankFaceLabels rank).map labelOfFace := by
      simpa [topPairingRankFaceLabels] using
        (faceLabelsInContributionOrder_map labelOfFace (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)))
    simpa [hlabels] using heval

theorem graphExactEvalGateAtRank_of_evalLanguageAtRank
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    {badFace : Face}
    (h :
      TopPairingBellmanEvalLanguageAtRank
        V next labelOfFace start const scaledMargin rank badFace) :
    TopPairingGraphExactEvalGateAtRank
      V next labelOfFace start const scaledMargin rank badFace := by
  rcases h.eval_accepts with ⟨result, heval, hfinal, hmargin⟩
  exact ⟨result.1, result.2,
    { closed := h.closed
      eval_eq := heval
      final_nonneg := hfinal
      margin_bound := hmargin }⟩

theorem closedToEvalGate_of_graphExactEvalGate
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (gate :
      TopPairingClosedToGraphExactEvalGate
        V next labelOfFace start const scaledMargin badFace) :
    TopPairingClosedToEvalGate
      V next labelOfFace start const scaledMargin badFace := by
  intro rank hclosed
  exact evalLanguageAtRank_of_graphExactEvalGate (gate rank hclosed)

theorem strengthenedToEvalGate_of_graphExactEvalGate
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {badFace : Face}
    (gate :
      TopPairingStrengthenedToGraphExactEvalGate
        V next labelOfFace start const scaledMargin sequenceBadFace badFace) :
    TopPairingStrengthenedToEvalGate
      V next labelOfFace start const scaledMargin sequenceBadFace badFace := by
  intro rank hstrengthened
  exact evalLanguageAtRank_of_graphExactEvalGate
    (gate rank hstrengthened)

theorem closedToGraphExactEvalGate_of_evalGate
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (gate :
      TopPairingClosedToEvalGate
        V next labelOfFace start const scaledMargin badFace) :
    TopPairingClosedToGraphExactEvalGate
      V next labelOfFace start const scaledMargin badFace := by
  intro rank hclosed
  exact graphExactEvalGateAtRank_of_evalLanguageAtRank (gate rank hclosed)

theorem strengthenedToGraphExactEvalGate_of_evalGate
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {badFace : Face}
    (gate :
      TopPairingStrengthenedToEvalGate
        V next labelOfFace start const scaledMargin sequenceBadFace
        badFace) :
    TopPairingStrengthenedToGraphExactEvalGate
      V next labelOfFace start const scaledMargin sequenceBadFace
      badFace := by
  intro rank hstrengthened
  exact graphExactEvalGateAtRank_of_evalLanguageAtRank
    (gate rank hstrengthened)

theorem scaledMargin_nonpos_of_closedStepRunGate
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (gate :
      TopPairingClosedToStepRunGate
        V Step labelOfFace start const scaledMargin badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    scaledMargin rank <= 0 := by
  rcases gate rank hclosed with ⟨finish, gain, hrun, hfinal, hmargin⟩
  have hconst : const + gain <= 0 :=
    const_add_labelStepRunGain_nonpos
      (V := V) (Step := Step) (const := const)
      hrun step_valid hfinal root_bound
  omega

theorem scaledMargin_nonpos_of_strengthenedStepRunGate
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {badFace : Face}
    (gate :
      TopPairingStrengthenedToStepRunGate
        V Step labelOfFace start const scaledMargin sequenceBadFace badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank badFace) :
    scaledMargin rank <= 0 := by
  rcases gate rank hstrengthened with ⟨finish, gain, hrun, hfinal, hmargin⟩
  have hconst : const + gain <= 0 :=
    const_add_labelStepRunGain_nonpos
      (V := V) (Step := Step) (const := const)
      hrun step_valid hfinal root_bound
  omega

def closedObjectCoverOfSemanticGate
    {badFace : Face}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (gate :
      TopPairingClosedToEvalGate
        V next labelOfFace start const scaledMargin badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0) :
    BellmanAxisRankObjectCover
      (TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace)
      State Label V Step labelOfFace start const
      (TopPairingBellmanEvalObj.rankOf
        (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (TopPairingBellmanEvalObj.Accepts
        (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (TopPairingClosedContainsRank badFace)
      scaledMargin :=
  topPairingBellmanEvalObjectCoverOfClosedToEval
    next_sound gate step_valid root_bound

def strengthenedObjectCoverOfSemanticGate
    {badFace : Face}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (gate :
      TopPairingStrengthenedToEvalGate
        V next labelOfFace start const scaledMargin sequenceBadFace badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0) :
    BellmanAxisRankObjectCover
      (TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace)
      State Label V Step labelOfFace start const
      (TopPairingBellmanEvalObj.rankOf
        (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (TopPairingBellmanEvalObj.Accepts
        (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (TopPairingStrengthenedClosedContainsRank sequenceBadFace badFace)
      scaledMargin :=
  topPairingBellmanEvalObjectCoverOfStrengthenedToEval
    next_sound gate step_valid root_bound

theorem scaledMargin_nonpos_of_closedSemanticGate
    {badFace : Face}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (gate :
      TopPairingClosedToEvalGate
        V next labelOfFace start const scaledMargin badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    scaledMargin rank <= 0 :=
  BellmanAxisRankObjectCover.scaledMargin_nonpos
    (closedObjectCoverOfSemanticGate
      (V := V) (Step := Step) (next := next)
      (labelOfFace := labelOfFace) (start := start) (const := const)
      (scaledMargin := scaledMargin) next_sound gate step_valid root_bound)
    hclosed

theorem scaledMargin_nonpos_of_strengthenedSemanticGate
    {badFace : Face}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (gate :
      TopPairingStrengthenedToEvalGate
        V next labelOfFace start const scaledMargin sequenceBadFace badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank badFace) :
    scaledMargin rank <= 0 :=
  BellmanAxisRankObjectCover.scaledMargin_nonpos
    (strengthenedObjectCoverOfSemanticGate
      (V := V) (Step := Step) (next := next)
      (labelOfFace := labelOfFace) (start := start) (const := const)
      (scaledMargin := scaledMargin) next_sound gate step_valid root_bound)
    hstrengthened

end Cuboctahedron
