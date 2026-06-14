import Cuboctahedron.Geometry.Unfolding
import Cuboctahedron.Search.Itineraries

/-!
Pair-word linear products and the non-identity side of the finite case split.
-/

namespace Cuboctahedron

def pairAtStartedIndex (w : PairWord) (i : Step14) : PairId :=
  if h : i = 0 then PairId.x else w.get (dropStart i h)

def canonicalSeqOfPairWord (w : PairWord) : Step14 -> Face :=
  fun i => faceOfPairSign (pairAtStartedIndex w i) true

def totalLinearOfPairWord (w : PairWord) : Mat3 Rat :=
  totalLinear (canonicalSeqOfPairWord w)

def IsNonIdentityLinear (w : PairWord) : Prop :=
  totalLinearOfPairWord w ≠ (matId : Mat3 Rat)

@[simp] theorem pairAtStartedIndex_zero (w : PairWord) :
    pairAtStartedIndex w 0 = PairId.x := by
  simp [pairAtStartedIndex]

@[simp] theorem pairAtStartedIndex_afterStart (w : PairWord) (i : WordIndex) :
    pairAtStartedIndex w (afterStart i) = w.get i := by
  unfold pairAtStartedIndex
  simp only [dif_neg (afterStart_ne_zero i)]
  congr

@[simp] theorem canonicalSeqOfPairWord_zero (w : PairWord) :
    canonicalSeqOfPairWord w 0 = Face.xp := by
  simp [canonicalSeqOfPairWord, pairAtStartedIndex, faceOfPairSign]

@[simp] theorem pairOfFace_canonicalSeqOfPairWord (w : PairWord) (i : Step14) :
    pairOfFace (canonicalSeqOfPairWord w i) = pairAtStartedIndex w i := by
  simp [canonicalSeqOfPairWord]

theorem faceReflection_linear_eq_of_pairOfFace_eq {f g : Face}
    (h : pairOfFace f = pairOfFace g) :
    (faceReflectionQ f).M = (faceReflectionQ g).M := by
  cases f <;> cases g <;> simp [pairOfFace] at h ⊢ <;>
    apply Mat3.ext <;>
    simp [faceReflectionQ, reflM, normalQ, offsetQ, matSub, scalarMat, outer,
      matId, dot]

theorem pairOfFace_eq_canonical_of_matches
    (seq : Step14 -> Face) (w : PairWord)
    (hStart : StartsXp seq)
    (hMatch : PairWordMatchesSeq w seq) :
    forall i : Step14,
      pairOfFace (seq i) = pairOfFace (canonicalSeqOfPairWord w i) := by
  intro i
  by_cases hi : i = 0
  · subst i
    rw [hStart]
    rfl
  · have hm := hMatch (dropStart i hi)
    rw [afterStart_dropStart i hi] at hm
    simpa [canonicalSeqOfPairWord, pairAtStartedIndex, hi] using hm.symm

theorem composeFaceList_linear_eq_of_pairwise_pair
    (seq canon : Step14 -> Face)
    (is : List Step14)
    (h : forall i : Step14, pairOfFace (seq i) = pairOfFace (canon i)) :
    (composeFaceList seq is).M = (composeFaceList canon is).M := by
  induction is with
  | nil => rfl
  | cons i is ih =>
      simp [composeFaceList, affCompose]
      rw [faceReflection_linear_eq_of_pairOfFace_eq (h i), ih]

theorem totalLinear_eq_totalLinearOfPairWord
    {seq : Step14 -> Face} {w : PairWord}
    (hStart : StartsXp seq)
    (hMatch : PairWordMatchesSeq w seq) :
    totalLinear seq = totalLinearOfPairWord w := by
  unfold totalLinearOfPairWord totalLinear totalAff
  exact composeFaceList_linear_eq_of_pairwise_pair
    seq (canonicalSeqOfPairWord w) totalOrder
    (pairOfFace_eq_canonical_of_matches seq w hStart hMatch)

theorem seq_to_pairword_with_linear
    (seq : Step14 -> Face)
    (hOmni : IsOmniSeq seq)
    (hStart : StartsXp seq) :
    exists w : PairWord,
      ValidPairWord w /\ PairWordMatchesSeq w seq /\
        totalLinear seq = totalLinearOfPairWord w := by
  rcases seq_to_pairword seq hOmni hStart with ⟨w, hValid, hMatch⟩
  exact ⟨w, hValid, hMatch, totalLinear_eq_totalLinearOfPairWord hStart hMatch⟩

example :
    totalLinear sampleStartedSeq =
      totalLinearOfPairWord (pairWordOfSeq sampleStartedSeq) := by
  exact totalLinear_eq_totalLinearOfPairWord rfl
    (pairWordOfSeq_matches sampleStartedSeq)

#check totalLinearOfPairWord
#check totalLinear_eq_totalLinearOfPairWord

end Cuboctahedron
