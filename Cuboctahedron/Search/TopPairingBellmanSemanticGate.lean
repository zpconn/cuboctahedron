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
