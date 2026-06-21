import Cuboctahedron.Search.Certificates

/-!
Good-direction adapters for translation cases.

The translation feasibility formalization already proves that every internal
impact denominator is strictly positive.  This module packages that theorem in
rank/sign-mask form so generated evidence only needs to handle masks that could
arise from a feasible translation orbit.
-/

namespace Cuboctahedron

def InternalImpact : Type :=
  { i : Impact15 // i ≠ (0 : Impact15) ∧ i ≠ lastImpact }

def translationSeqAtRankMask (r : Fin numPairWords) (mask : SignMask) :
    Step14 -> Face :=
  translationChoiceSeq (unrankPairWord r) mask

def translationBAtRankMask (r : Fin numPairWords) (mask : SignMask) :
    Vec3 Rat :=
  (totalAff (translationSeqAtRankMask r mask)).b

def impactDenomAtRank
    (r : Fin numPairWords) (mask : SignMask) (i : Impact15) : Rat :=
  impactDenom (translationSeqAtRankMask r mask)
    (translationBAtRankMask r mask) i

def GoodDirectionAtRank (r : Fin numPairWords) (mask : SignMask) : Prop :=
  forall i : InternalImpact, 0 < impactDenomAtRank r mask i.1

def TranslationFeasibleAtRank
    (r : Fin numPairWords) (mask : SignMask) : Prop :=
  exists seq,
    SeqRealizesTranslationChoice (unrankPairWord r) mask seq /\
      totalLinear seq = (matId : Mat3 Rat) /\
        UnfoldedFeasible seq

theorem goodDirection_of_translation_choice_feasible
    {r : Fin numPairWords} {mask : SignMask} {seq : Step14 -> Face}
    (hRealize :
      SeqRealizesTranslationChoice (unrankPairWord r) mask seq)
    (hLinear : totalLinear seq = (matId : Mat3 Rat))
    (hFeasible : UnfoldedFeasible seq) :
    GoodDirectionAtRank r mask := by
  have hseq : seq = translationSeqAtRankMask r mask := by
    funext i
    exact hRealize.choice_matches i
  have hTrans :
      TranslationUnfoldedFeasible
        (translationSeqAtRankMask r mask)
        (translationBAtRankMask r mask) := by
    refine
      { feasible := ?_
        startsXp := ?_
        linear_id := ?_
        translation_vector := rfl }
    · simpa [hseq] using hFeasible
    · exact translationChoiceSeq_starts (unrankPairWord r) mask
    · simpa [hseq] using hLinear
  intro i
  exact
    unfolded_feasible_translation_denominators_positive hTrans
      i.1 i.2.1 i.2.2

theorem goodDirection_of_translation_feasible_at_rank
    {r : Fin numPairWords} {mask : SignMask}
    (h : TranslationFeasibleAtRank r mask) :
    GoodDirectionAtRank r mask := by
  rcases h with ⟨seq, hRealize, hLinear, hFeasible⟩
  exact goodDirection_of_translation_choice_feasible
    hRealize hLinear hFeasible

def GoodDirectionAtRankNat (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    GoodDirectionAtRank ⟨r, hlt⟩ mask

end Cuboctahedron
