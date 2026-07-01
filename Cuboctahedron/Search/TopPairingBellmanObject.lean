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

def forcedSeq {badFace : Face} (obj : TopPairingBellmanObj badFace) :
    Step14 -> Face :=
  canonicalSeqOfPairWord (unrankPairWord obj.rank)

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
          (fun obj =>
            faceLabelsInContributionOrder labelOfFace (forcedSeq obj))
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
    (bellmanLabelStepRunLanguageBound_of_evalAccepts
      next_sound
      (by
        intro obj _hAccept
        exact eval_accepts obj))
    step_valid
    root_bound
    (closedMembership badFace)

end TopPairingBellmanObj

end Cuboctahedron
