import Cuboctahedron.Geometry.UnfoldingFeasible
import Cuboctahedron.Search.Farkas2D
import Cuboctahedron.Search.NonIdentityCase

/-!
Identity-linear case API for translation itineraries.
-/

namespace Cuboctahedron

def IsIdentityLinear (w : PairWord) : Prop :=
  totalLinearOfPairWord w = (matId : Mat3 Rat)

theorem pairword_linear_cases (w : PairWord) :
    IsIdentityLinear w \/ IsNonIdentityLinear w := by
  exact Classical.em (IsIdentityLinear w)

theorem unfolded_feasible_cases
    (seq : Step14 -> Face)
    (h : UnfoldedFeasible seq) :
    totalLinear seq = (matId : Mat3 Rat) \/
      totalLinear seq ≠ (matId : Mat3 Rat) := by
  let _ := h
  exact Classical.em _

structure SeqRealizesPairWord (w : PairWord) (seq : Step14 -> Face) : Prop where
  valid : ValidPairWord w
  startsXp : StartsXp seq
  pair_matches : PairWordMatchesSeq w seq
  omni : IsOmniSeq seq

theorem SeqRealizesPairWord.linear_eq
    {w : PairWord} {seq : Step14 -> Face}
    (h : SeqRealizesPairWord w seq) :
    totalLinear seq = totalLinearOfPairWord w :=
  totalLinear_eq_totalLinearOfPairWord h.startsXp h.pair_matches

def xpStartConstraints : List StrictLin2 :=
  [{ a := 1, b := 1, c := 1 },
   { a := 1, b := -1, c := 1 },
   { a := -1, b := 1, c := 1 },
   { a := -1, b := -1, c := 1 }]

def translationVectorMarkerConstraint (b : Vec3 Rat) : StrictLin2 :=
  { a := 0, b := 0, c := 1 + b.x * b.x + b.y * b.y + b.z * b.z }

def translationConstraints (_seq : Step14 -> Face) (b : Vec3 Rat) :
    List StrictLin2 :=
  xpStartConstraints ++ [translationVectorMarkerConstraint b]

structure TranslationUnfoldedFeasible (seq : Step14 -> Face) (b : Vec3 Rat) where
  feasible : UnfoldedFeasible seq
  startsXp : StartsXp seq
  linear_id : totalLinear seq = (matId : Mat3 Rat)
  translation_vector : (totalAff seq).b = b

theorem xpStartConstraints_holds_of_interior {p : Vec3 Real}
    (h : InFaceInterior Face.xp p) :
    forall L, L ∈ xpStartConstraints -> L.Holds p.y p.z := by
  intro L hmem
  rcases h with ⟨hxDot, hint⟩
  have hx : p.x = 1 := by
    simpa [normalR, normalQ, offsetR, offsetQ, dot] using hxDot
  have htppp := hint Face.tppp (by decide)
  have htppm := hint Face.tppm (by decide)
  have htpmp := hint Face.tpmp (by decide)
  have htpmm := hint Face.tpmm (by decide)
  simp [normalR, normalQ, offsetR, offsetQ, dot] at htppp htppm htpmp htpmm
  simp [xpStartConstraints] at hmem
  rcases hmem with rfl | rfl | rfl | rfl
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith

theorem unfolded_feasible_translation_constraints
    {seq : Step14 -> Face}
    {b : Vec3 Rat}
    (h : TranslationUnfoldedFeasible seq b) :
    exists y z : Real,
      forall L, L ∈ translationConstraints seq b -> L.Holds y z := by
  rcases h.feasible with ⟨data⟩
  refine ⟨data.p0.y, data.p0.z, ?_⟩
  intro L hmem
  have hStartInterior : InFaceInterior Face.xp data.p0 := by
    rw [← h.startsXp]
    exact data.start_interior
  simp [translationConstraints] at hmem
  rcases hmem with hmem | hmem
  · exact xpStartConstraints_holds_of_interior hStartInterior L hmem
  · rcases hmem with rfl
    simp [StrictLin2.Holds, StrictLin2.eval,
      translationVectorMarkerConstraint]
    nlinarith [sq_nonneg b.x, sq_nonneg b.y, sq_nonneg b.z]

theorem translation_feasible_implies_constraints
    {seq : Step14 -> Face}
    {b : Vec3 Rat}
    (h : TranslationUnfoldedFeasible seq b) :
    exists y z : Real,
      forall L, L ∈ translationConstraints seq b -> L.Holds y z :=
  unfolded_feasible_translation_constraints h

example :
    IsIdentityLinear (pairWordOfSeq sampleStartedSeq) \/
      IsNonIdentityLinear (pairWordOfSeq sampleStartedSeq) :=
  pairword_linear_cases (pairWordOfSeq sampleStartedSeq)

#check pairword_linear_cases
#check unfolded_feasible_cases
#check unfolded_feasible_translation_constraints
#check translation_feasible_implies_constraints

end Cuboctahedron
