import Cuboctahedron.Search.Enumeration
import Cuboctahedron.Search.FaceLabelLanguage

/-!
Rank-indexed face-label language helpers.

These helpers are the reusable bridge used by generated Bellman margin
families: if a started face sequence matches the unranked pair word and has
the same actual face signs as a generated template, then it is the same face
sequence as that template.
-/

namespace Cuboctahedron

def PairSignLanguageAtRank
    (rank : Fin numPairWords) (template seq : Step14 -> Face) : Prop :=
  PairWordMatchesSeq (unrankPairWord rank) seq /\
    (forall i : Step14,
      positiveSignOfFace (seq i) = positiveSignOfFace (template i)) /\
    seq 0 = template 0

theorem sameFaceSeq_of_pairSignLanguageAtRank
    {rank : Fin numPairWords} {template seq : Step14 -> Face}
    (htemplate : PairWordMatchesSeq (unrankPairWord rank) template)
    (hseq : PairSignLanguageAtRank rank template seq) :
    SameFaceSeq template seq := by
  rcases hseq with ⟨hmatch, hsign, hstart⟩
  exact sameFaceSeq_of_pairWordMatchesSeq_and_sign
    htemplate hmatch hstart hsign

theorem faceLabelsInContributionOrder_eq_of_pairSignLanguageAtRank
    {α : Type} (labelOfFace : Face -> α)
    {rank : Fin numPairWords} {template seq : Step14 -> Face}
    (htemplate : PairWordMatchesSeq (unrankPairWord rank) template)
    (hseq : PairSignLanguageAtRank rank template seq) :
    faceLabelsInContributionOrder labelOfFace seq =
      faceLabelsInContributionOrder labelOfFace template :=
  faceLabelsInContributionOrder_eq_of_same labelOfFace
    (sameFaceSeq_of_pairSignLanguageAtRank htemplate hseq)

end Cuboctahedron
