import Cuboctahedron.Search.BellmanAxisBridge
import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Semantic Bellman objects for the top-pairing closed language.

The old graph smokes use sampled object types.  The scalable route needs the
object itself to be semantic: a rank together with a proof that the rank belongs
to the closed top-pairing language.  The deterministic evaluator theorem is
still the hard generated/theorem-producing part, but membership and object-cover
assembly should not depend on sampled rank tables.
-/

namespace Cuboctahedron

abbrev TopPairingClosedContainsRank (badFace : Face) :
    Fin numPairWords -> Prop :=
  fun rank => TopPairingClosedLanguageAtRank rank badFace

abbrev ClosedTopPairingContainsRank (badFace : Face) :
    Fin numPairWords -> Prop :=
  TopPairingClosedContainsRank badFace

structure TopPairingBellmanObj (badFace : Face) where
  rank : Fin numPairWords
  closed : TopPairingClosedLanguageAtRank rank badFace

namespace TopPairingBellmanObj

def rankOf {badFace : Face} (obj : TopPairingBellmanObj badFace) :
    Fin numPairWords :=
  obj.rank

def Accepts {badFace : Face} (_obj : TopPairingBellmanObj badFace) :
    Prop :=
  True

theorem accepts {badFace : Face} (obj : TopPairingBellmanObj badFace) :
    Accepts obj :=
  True.intro

def forcedSeq {badFace : Face} (obj : TopPairingBellmanObj badFace) :
    Step14 -> Face :=
  canonicalSeqOfPairWord (unrankPairWord obj.rank)

def labels {badFace : Face} {Label : Type} (labelOfFace : Face -> Label)
    (obj : TopPairingBellmanObj badFace) : List Label :=
  faceLabelsInContributionOrder labelOfFace (forcedSeq obj)

theorem labels_map {badFace : Face} {α β : Type}
    (g : α -> β) (labelOfFace : Face -> α)
    (obj : TopPairingBellmanObj badFace) :
    labels (fun f => g (labelOfFace f)) obj =
      (labels labelOfFace obj).map g := by
  unfold labels
  exact faceLabelsInContributionOrder_map g labelOfFace (forcedSeq obj)

theorem closedForCanonicalSeq {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    TopPairingClosedLanguageForSeq obj.rank (forcedSeq obj) badFace :=
  TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed

def closedMembership (badFace : Face) :
    BellmanRankObjectMembership
      (TopPairingBellmanObj badFace)
      (rankOf (badFace := badFace))
      (Accepts (badFace := badFace))
      (TopPairingClosedContainsRank badFace) where
  objectOf := fun rank hclosed => ⟨rank, hclosed⟩
  object_accepts := by
    intro _rank _hclosed
    exact True.intro
  object_rank := by
    intro _rank _hclosed
    rfl

theorem traceBoundOfEvalAccepts
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
    (eval_accepts :
      forall obj : TopPairingBellmanObj badFace,
        BellmanEvalAccepts V next start const
          (fun obj : TopPairingBellmanObj badFace =>
            scaledMargin obj.rank)
          (fun obj => labels labelOfFace obj)
          obj) :
    BellmanLabelStepRunLanguageBound V Step start const
      (fun obj : TopPairingBellmanObj badFace => scaledMargin obj.rank)
      (fun obj => labels labelOfFace obj)
      (Accepts (badFace := badFace)) :=
  bellmanLabelStepRunLanguageBound_of_evalAccepts
    next_sound
    (by
      intro obj _hAccept
      exact eval_accepts obj)

def objectCoverOfEvalAccepts
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
    (eval_accepts :
      forall obj : TopPairingBellmanObj badFace,
        BellmanEvalAccepts V next start const
          (fun obj : TopPairingBellmanObj badFace =>
            scaledMargin obj.rank)
          (fun obj => labels labelOfFace obj)
          obj)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0) :
    BellmanAxisRankObjectCover
      (TopPairingBellmanObj badFace)
      State Label V Step labelOfFace start const
      (rankOf (badFace := badFace))
      (Accepts (badFace := badFace))
      (TopPairingClosedContainsRank badFace)
      scaledMargin :=
  BellmanAxisRankObjectCover.ofMembership
    (forcedSeq (badFace := badFace))
    (traceBoundOfEvalAccepts next_sound eval_accepts)
    step_valid
    root_bound
    (closedMembership badFace)

end TopPairingBellmanObj

def topPairingClosedMembership (badFace : Face) :
    BellmanRankObjectMembership
      (TopPairingBellmanObj badFace)
      TopPairingBellmanObj.rankOf
      TopPairingBellmanObj.Accepts
      (ClosedTopPairingContainsRank badFace) :=
  TopPairingBellmanObj.closedMembership badFace

theorem topPairingClosedTraceBound_of_evalAccepts
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
    (eval_accepts :
      forall obj : TopPairingBellmanObj badFace,
        BellmanEvalAccepts V next start const
          (fun obj : TopPairingBellmanObj badFace =>
            scaledMargin obj.rank)
          (fun obj => TopPairingBellmanObj.labels labelOfFace obj)
          obj) :
    BellmanLabelStepRunLanguageBound V Step start const
      (fun obj : TopPairingBellmanObj badFace => scaledMargin obj.rank)
      (fun obj => TopPairingBellmanObj.labels labelOfFace obj)
      TopPairingBellmanObj.Accepts :=
  TopPairingBellmanObj.traceBoundOfEvalAccepts
    next_sound eval_accepts

def topPairingClosedObjectCoverOfEvalAccepts
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
    (eval_accepts :
      forall obj : TopPairingBellmanObj badFace,
        BellmanEvalAccepts V next start const
          (fun obj : TopPairingBellmanObj badFace =>
            scaledMargin obj.rank)
          (fun obj => TopPairingBellmanObj.labels labelOfFace obj)
          obj)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0) :
    BellmanAxisRankObjectCover
      (TopPairingBellmanObj badFace)
      State Label V Step labelOfFace start const
      TopPairingBellmanObj.rankOf
      TopPairingBellmanObj.Accepts
      (ClosedTopPairingContainsRank badFace)
      scaledMargin :=
  TopPairingBellmanObj.objectCoverOfEvalAccepts
    next_sound eval_accepts step_valid root_bound

structure TopPairingBellmanEvalLanguageAtRank
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords)
    (badFace : Face) : Prop where
  closed : TopPairingClosedLanguageAtRank rank badFace
  eval_accepts :
    BellmanEvalAccepts V next start const
      scaledMargin
      (fun rank =>
        faceLabelsInContributionOrder labelOfFace
          (canonicalSeqOfPairWord (unrankPairWord rank)))
      rank

abbrev TopPairingBellmanEvalContainsRank
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (badFace : Face) : Fin numPairWords -> Prop :=
  fun rank =>
    TopPairingBellmanEvalLanguageAtRank
      V next labelOfFace start const scaledMargin rank badFace

structure TopPairingBellmanEvalObj
    {State Label : Type}
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int)
    (badFace : Face) where
  rank : Fin numPairWords
  evalLanguage :
    TopPairingBellmanEvalLanguageAtRank
      V next labelOfFace start const scaledMargin rank badFace

namespace TopPairingBellmanEvalObj

def rankOf
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (obj :
      TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace) :
    Fin numPairWords :=
  obj.rank

def Accepts
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (_obj :
      TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace) :
    Prop :=
  True

def forcedSeq
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (obj :
      TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace) :
    Step14 -> Face :=
  canonicalSeqOfPairWord (unrankPairWord obj.rank)

theorem closed
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (obj :
      TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace) :
    TopPairingClosedLanguageAtRank obj.rank badFace :=
  obj.evalLanguage.closed

theorem evalAccepts
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (obj :
      TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace) :
    BellmanEvalAccepts V next start const
      (fun obj :
        TopPairingBellmanEvalObj
          V next labelOfFace start const scaledMargin badFace =>
        scaledMargin obj.rank)
      (fun obj =>
        faceLabelsInContributionOrder labelOfFace (forcedSeq obj))
      obj := by
  rcases obj.evalLanguage.eval_accepts with
    ⟨result, heval, hfinish, hmargin⟩
  exact ⟨result, by simpa [forcedSeq] using heval, hfinish, hmargin⟩

def evalMembership
    {State Label : Type}
    {V : State -> Int}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (badFace : Face) :
    BellmanRankObjectMembership
      (TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace)
      (rankOf (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (Accepts (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (TopPairingBellmanEvalContainsRank
        V next labelOfFace start const scaledMargin badFace) where
  objectOf := fun rank heval => ⟨rank, heval⟩
  object_accepts := by
    intro _rank _heval
    exact True.intro
  object_rank := by
    intro _rank _heval
    rfl

def objectCover
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
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0) :
    BellmanAxisRankObjectCover
      (TopPairingBellmanEvalObj
        V next labelOfFace start const scaledMargin badFace)
      State Label V Step labelOfFace start const
      (rankOf (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (Accepts (V := V) (next := next) (labelOfFace := labelOfFace)
        (start := start) (const := const) (scaledMargin := scaledMargin)
        (badFace := badFace))
      (TopPairingBellmanEvalContainsRank
        V next labelOfFace start const scaledMargin badFace)
      scaledMargin :=
  BellmanAxisRankObjectCover.ofMembership
    (forcedSeq (V := V) (next := next) (labelOfFace := labelOfFace)
      (start := start) (const := const) (scaledMargin := scaledMargin)
      (badFace := badFace))
    (bellmanLabelStepRunLanguageBound_of_evalAccepts
      next_sound
      (by
        intro obj _hAccept
        exact evalAccepts obj))
    step_valid
    root_bound
    (evalMembership
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (start := start) (const := const) (scaledMargin := scaledMargin)
      badFace)

end TopPairingBellmanEvalObj

def topPairingBellmanEvalObjectCoverOfClosedToEval
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
    (closed_to_eval :
      forall rank,
        TopPairingClosedLanguageAtRank rank badFace ->
          TopPairingBellmanEvalLanguageAtRank
            V next labelOfFace start const scaledMargin rank badFace)
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
  BellmanAxisRankObjectCover.ofMembership
    (TopPairingBellmanEvalObj.forcedSeq
      (V := V) (next := next) (labelOfFace := labelOfFace)
      (start := start) (const := const) (scaledMargin := scaledMargin)
      (badFace := badFace))
    (bellmanLabelStepRunLanguageBound_of_evalAccepts
      next_sound
      (by
        intro obj _hAccept
        exact TopPairingBellmanEvalObj.evalAccepts obj))
    step_valid
    root_bound
    { objectOf := fun rank hclosed => ⟨rank, closed_to_eval rank hclosed⟩
      object_accepts := by
        intro _rank _hclosed
        exact True.intro
      object_rank := by
        intro _rank _hclosed
        rfl }

end Cuboctahedron
