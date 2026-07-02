import Cuboctahedron.Search.Itineraries

/-!
Small helpers for turning started face sequences into contribution-order label
words.

Bellman margin automata use the contribution order already used by the
nonidentity residual profiler: the thirteen post-start faces first, followed by
the initial `X+` face.
-/

namespace Cuboctahedron

def contributionOrderSteps : List Step14 :=
  [⟨1, by decide⟩, ⟨2, by decide⟩, ⟨3, by decide⟩,
   ⟨4, by decide⟩, ⟨5, by decide⟩, ⟨6, by decide⟩,
   ⟨7, by decide⟩, ⟨8, by decide⟩, ⟨9, by decide⟩,
   ⟨10, by decide⟩, ⟨11, by decide⟩, ⟨12, by decide⟩,
   ⟨13, by decide⟩, ⟨0, by decide⟩]

def faceLabelsInContributionOrder {α : Type}
    (labelOfFace : Face -> α) (seq : Step14 -> Face) : List α :=
  contributionOrderSteps.map fun i => labelOfFace (seq i)

theorem faceLabelsInContributionOrder_map
    {α β : Type} (g : α -> β) (labelOfFace : Face -> α)
    (seq : Step14 -> Face) :
    faceLabelsInContributionOrder (fun f => g (labelOfFace f)) seq =
      (faceLabelsInContributionOrder labelOfFace seq).map g := by
  unfold faceLabelsInContributionOrder
  simp

def SameFaceSeq (template seq : Step14 -> Face) : Prop :=
  forall i : Step14, seq i = template i

theorem sameFaceSeq_of_pair_and_sign
    {template seq : Step14 -> Face}
    (hpair : forall i : Step14, pairOfFace (seq i) = pairOfFace (template i))
    (hsign : forall i : Step14,
      positiveSignOfFace (seq i) = positiveSignOfFace (template i)) :
    SameFaceSeq template seq := by
  intro i
  calc
    seq i =
        faceOfPairSign (pairOfFace (seq i)) (positiveSignOfFace (seq i)) := by
          exact (faceOfPairSign_pairOfFace_positiveSignOfFace (seq i)).symm
    _ = faceOfPairSign (pairOfFace (template i))
        (positiveSignOfFace (template i)) := by
          rw [hpair i, hsign i]
    _ = template i := by
          exact faceOfPairSign_pairOfFace_positiveSignOfFace (template i)

theorem sameFaceSeq_of_pairWordMatchesSeq_and_sign
    {template seq : Step14 -> Face} {w : PairWord}
    (htemplate : PairWordMatchesSeq w template)
    (hseq : PairWordMatchesSeq w seq)
    (hstart : seq 0 = template 0)
    (hsign : forall i : Step14,
      positiveSignOfFace (seq i) = positiveSignOfFace (template i)) :
    SameFaceSeq template seq := by
  apply sameFaceSeq_of_pair_and_sign
  · intro i
    by_cases hi : i = 0
    · subst i
      simp [hstart]
    · have hs := hseq (dropStart i hi)
      have ht := htemplate (dropStart i hi)
      rw [afterStart_dropStart i hi] at hs ht
      exact hs.symm.trans ht
  · exact hsign

theorem faceLabelsInContributionOrder_eq_of_same
    {α : Type} (labelOfFace : Face -> α)
    {template seq : Step14 -> Face}
    (hseq : SameFaceSeq template seq) :
    faceLabelsInContributionOrder labelOfFace seq =
      faceLabelsInContributionOrder labelOfFace template := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  simp only [List.map_cons, List.map_nil]
  rw [hseq (⟨1, by decide⟩ : Step14)]
  rw [hseq (⟨2, by decide⟩ : Step14)]
  rw [hseq (⟨3, by decide⟩ : Step14)]
  rw [hseq (⟨4, by decide⟩ : Step14)]
  rw [hseq (⟨5, by decide⟩ : Step14)]
  rw [hseq (⟨6, by decide⟩ : Step14)]
  rw [hseq (⟨7, by decide⟩ : Step14)]
  rw [hseq (⟨8, by decide⟩ : Step14)]
  rw [hseq (⟨9, by decide⟩ : Step14)]
  rw [hseq (⟨10, by decide⟩ : Step14)]
  rw [hseq (⟨11, by decide⟩ : Step14)]
  rw [hseq (⟨12, by decide⟩ : Step14)]
  rw [hseq (⟨13, by decide⟩ : Step14)]
  rw [hseq (⟨0, by decide⟩ : Step14)]

theorem pairWordOfSeq_eq_of_faceLabelsInContributionOrder_eq
    {template seq : Step14 -> Face}
    (hlabels :
      faceLabelsInContributionOrder (fun f : Face => f) seq =
        faceLabelsInContributionOrder (fun f : Face => f) template) :
    pairWordOfSeq seq = pairWordOfSeq template := by
  apply Vector.ext
  intro i hi
  have hget :=
    congrArg (fun labels : List Face => labels.getD i Face.xp) hlabels
  have hpairs := congrArg pairOfFace hget
  interval_cases i <;>
    simpa [pairWordOfSeq, faceLabelsInContributionOrder,
      contributionOrderSteps, afterStart] using hpairs

end Cuboctahedron
