import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairTemplate

/-!
Reusable row-relation templates for two-source translation Farkas families.

The Phase 6Z.4 profiler found that the `[0,100000)` GoodDirection translation
survivors are covered by nine semantic row-relation templates.  This module
formalizes those templates generically: generated classifiers only need to
prove that a rank/mask case satisfies one of these small predicates, and this
file turns the predicate into the existing `SupportPair.Applies` evidence.

No rank lists, mask lists, or generated certificate tables live here.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies

def FirstLineAt
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  SupportPair.firstLineAt support r hlt mask

def SecondLineAt
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : StrictLin2 :=
  SupportPair.secondLineAt support r hlt mask

def SourceChecks
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) : Prop :=
  checkTranslationConstraintSource
      (translationSeqAtRankMask ⟨r, hlt⟩ mask)
      support.first = true /\
    checkTranslationConstraintSource
        (translationSeqAtRankMask ⟨r, hlt⟩ mask)
        support.second = true

def FixedRow (L : StrictLin2) (a b : Rat) : Prop :=
  L.a = a /\ L.b = b /\ L.c = 1

def EqEqPosRow (L : StrictLin2) : Prop :=
  L.a = L.b /\ L.a < 0 /\ L.c <= L.a

def EqEqNegRow (L : StrictLin2) : Prop :=
  L.a = L.b /\ 0 < L.a /\ L.c <= -L.a

def OppPosRow (L : StrictLin2) : Prop :=
  L.a = -L.b /\ L.a < 0 /\ L.c <= L.a

def OppNegRow (L : StrictLin2) : Prop :=
  L.a = -L.b /\ 0 < L.a /\ L.c <= -L.a

def EqEqPosVarFirst
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      EqEqPosRow (FirstLineAt support r hlt mask) /\
        FixedRow (SecondLineAt support r hlt mask) 1 1

def EqEqPosVarSecond
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      FixedRow (FirstLineAt support r hlt mask) 1 1 /\
        EqEqPosRow (SecondLineAt support r hlt mask)

def EqEqNegVarFirst
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      EqEqNegRow (FirstLineAt support r hlt mask) /\
        FixedRow (SecondLineAt support r hlt mask) (-1) (-1)

def EqEqNegVarSecond
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      FixedRow (FirstLineAt support r hlt mask) (-1) (-1) /\
        EqEqNegRow (SecondLineAt support r hlt mask)

def OppOneMinusVarFirst
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      OppPosRow (FirstLineAt support r hlt mask) /\
        FixedRow (SecondLineAt support r hlt mask) 1 (-1)

def OppOneMinusVarSecond
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      FixedRow (FirstLineAt support r hlt mask) 1 (-1) /\
        OppPosRow (SecondLineAt support r hlt mask)

def OppMinusOneVarFirst
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      OppNegRow (FirstLineAt support r hlt mask) /\
        FixedRow (SecondLineAt support r hlt mask) (-1) 1

def OppMinusOneVarSecond
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      FixedRow (FirstLineAt support r hlt mask) (-1) 1 /\
        OppNegRow (SecondLineAt support r hlt mask)

def AxisAOnly
    (support : TwoSourceFarkasSupport) (r : Nat) (mask : SignMask) : Prop :=
  forall hlt : r < numPairWords,
    SourceChecks support r hlt mask /\
      (FirstLineAt support r hlt mask).b = 0 /\
        (SecondLineAt support r hlt mask).b = 0 /\
          (FirstLineAt support r hlt mask).a *
              (SecondLineAt support r hlt mask).a < 0 /\
            (SupportPair.multipliersAt support r hlt mask).1 *
                (FirstLineAt support r hlt mask).c +
              (SupportPair.multipliersAt support r hlt mask).2 *
                (SecondLineAt support r hlt mask).c <= 0

theorem multipliers_eq_var_first_pos
    {L M : StrictLin2} {fixedB : Rat}
    (hM : FixedRow M 1 fixedB)
    (hLa_neg : L.a < 0) :
    TwoSourceFarkasSupport.multipliersForLines L M = (1, -L.a) := by
  rcases hM with ⟨hMa, _, _⟩
  have hnonneg : 0 <= -L.a := by
    linarith
  rw [TwoSourceFarkasSupport.multipliersForLines, hMa]
  simp [TwoSourceFarkasSupport.orientNonnegative, hnonneg]

theorem multipliers_eq_var_second_pos
    {L M : StrictLin2} {fixedB : Rat}
    (hL : FixedRow L 1 fixedB)
    (_hMa_neg : M.a < 0) :
    TwoSourceFarkasSupport.multipliersForLines L M = (-M.a, 1) := by
  rcases hL with ⟨hLa, _, _⟩
  rw [TwoSourceFarkasSupport.multipliersForLines, hLa]
  simp [TwoSourceFarkasSupport.orientNonnegative]

theorem multipliers_eq_var_first_neg
    {L M : StrictLin2} {fixedB : Rat}
    (hM : FixedRow M (-1) fixedB)
    (_hLa_pos : 0 < L.a) :
    TwoSourceFarkasSupport.multipliersForLines L M = (1, L.a) := by
  rcases hM with ⟨hMa, _, _⟩
  rw [TwoSourceFarkasSupport.multipliersForLines, hMa]
  simp [TwoSourceFarkasSupport.orientNonnegative]

theorem multipliers_eq_var_second_neg
    {L M : StrictLin2} {fixedB : Rat}
    (hL : FixedRow L (-1) fixedB)
    (hMa_pos : 0 < M.a) :
    TwoSourceFarkasSupport.multipliersForLines L M = (M.a, 1) := by
  rcases hL with ⟨hLa, _, _⟩
  rw [TwoSourceFarkasSupport.multipliersForLines, hLa]
  simp [TwoSourceFarkasSupport.orientNonnegative, hMa_pos.le]

theorem multipliers_eq_axis_pos_neg
    {L M : StrictLin2}
    (hLa_pos : 0 < L.a) (hMa_neg : M.a < 0) :
    TwoSourceFarkasSupport.multipliersForLines L M = (-M.a, L.a) := by
  rw [TwoSourceFarkasSupport.multipliersForLines]
  have hnonzero : L.a ≠ 0 ∨ M.a ≠ 0 := Or.inl (ne_of_gt hLa_pos)
  have hraw_false : ¬ (0 <= M.a /\ L.a <= 0) := by
    intro h
    linarith
  simp [hnonzero, TwoSourceFarkasSupport.orientNonnegative, hraw_false]

theorem multipliers_eq_axis_neg_pos
    {L M : StrictLin2}
    (hLa_neg : L.a < 0) (hMa_pos : 0 < M.a) :
    TwoSourceFarkasSupport.multipliersForLines L M = (M.a, -L.a) := by
  rw [TwoSourceFarkasSupport.multipliersForLines]
  have hnonzero : L.a ≠ 0 ∨ M.a ≠ 0 := Or.inl (ne_of_lt hLa_neg)
  have hraw_true : 0 <= M.a /\ L.a <= 0 := by
    constructor <;> linarith
  simp [hnonzero, TwoSourceFarkasSupport.orientNonnegative, hraw_true]

private theorem eqEqPosFirst_facts
    {L M : StrictLin2}
    (hL : EqEqPosRow L) (hM : FixedRow M 1 1) :
    0 <= (1 : Rat) /\
      0 <= -L.a /\
      (0 < (1 : Rat) \/ 0 < -L.a) /\
      1 * L.a + (-L.a) * M.a = 0 /\
      1 * L.b + (-L.a) * M.b = 0 /\
      1 * L.c + (-L.a) * M.c <= 0 := by
  rcases hL with ⟨hab, ha_neg, hc⟩
  rcases hM with ⟨hMa, hMb, hMc⟩
  constructor
  · norm_num
  constructor
  · linarith
  constructor
  · left
    norm_num
  constructor
  · rw [hMa]
    ring
  constructor
  · rw [hab, hMb]
    ring
  · rw [hMc]
    linarith

private theorem eqEqPosSecond_facts
    {L M : StrictLin2}
    (hL : FixedRow L 1 1) (hM : EqEqPosRow M) :
    0 <= -M.a /\
      0 <= (1 : Rat) /\
      (0 < -M.a \/ 0 < (1 : Rat)) /\
      (-M.a) * L.a + 1 * M.a = 0 /\
      (-M.a) * L.b + 1 * M.b = 0 /\
      (-M.a) * L.c + 1 * M.c <= 0 := by
  rcases hL with ⟨hLa, hLb, hLc⟩
  rcases hM with ⟨hab, ha_neg, hc⟩
  constructor
  · linarith
  constructor
  · norm_num
  constructor
  · right
    norm_num
  constructor
  · rw [hLa]
    ring
  constructor
  · rw [hLb, ← hab]
    ring
  · rw [hLc]
    linarith

private theorem eqEqNegFirst_facts
    {L M : StrictLin2}
    (hL : EqEqNegRow L) (hM : FixedRow M (-1) (-1)) :
    0 <= (1 : Rat) /\
      0 <= L.a /\
      (0 < (1 : Rat) \/ 0 < L.a) /\
      1 * L.a + L.a * M.a = 0 /\
      1 * L.b + L.a * M.b = 0 /\
      1 * L.c + L.a * M.c <= 0 := by
  rcases hL with ⟨hab, ha_pos, hc⟩
  rcases hM with ⟨hMa, hMb, hMc⟩
  constructor
  · norm_num
  constructor
  · exact ha_pos.le
  constructor
  · left
    norm_num
  constructor
  · rw [hMa]
    ring
  constructor
  · rw [hab, hMb]
    ring
  · rw [hMc]
    linarith

private theorem eqEqNegSecond_facts
    {L M : StrictLin2}
    (hL : FixedRow L (-1) (-1)) (hM : EqEqNegRow M) :
    0 <= M.a /\
      0 <= (1 : Rat) /\
      (0 < M.a \/ 0 < (1 : Rat)) /\
      M.a * L.a + 1 * M.a = 0 /\
      M.a * L.b + 1 * M.b = 0 /\
      M.a * L.c + 1 * M.c <= 0 := by
  rcases hL with ⟨hLa, hLb, hLc⟩
  rcases hM with ⟨hab, ha_pos, hc⟩
  constructor
  · exact ha_pos.le
  constructor
  · norm_num
  constructor
  · left
    exact ha_pos
  constructor
  · rw [hLa]
    ring
  constructor
  · rw [hLb, ← hab]
    ring
  · rw [hLc]
    linarith

private theorem oppPosFirst_facts
    {L M : StrictLin2}
    (hL : OppPosRow L) (hM : FixedRow M 1 (-1)) :
    0 <= (1 : Rat) /\
      0 <= -L.a /\
      (0 < (1 : Rat) \/ 0 < -L.a) /\
      1 * L.a + (-L.a) * M.a = 0 /\
      1 * L.b + (-L.a) * M.b = 0 /\
      1 * L.c + (-L.a) * M.c <= 0 := by
  rcases hL with ⟨hab, ha_neg, hc⟩
  rcases hM with ⟨hMa, hMb, hMc⟩
  constructor
  · norm_num
  constructor
  · linarith
  constructor
  · left
    norm_num
  constructor
  · rw [hMa]
    ring
  constructor
  · have hb : L.b = -L.a := by
      linarith
    rw [hb, hMb]
    ring
  · rw [hMc]
    linarith

private theorem oppPosSecond_facts
    {L M : StrictLin2}
    (hL : FixedRow L 1 (-1)) (hM : OppPosRow M) :
    0 <= -M.a /\
      0 <= (1 : Rat) /\
      (0 < -M.a \/ 0 < (1 : Rat)) /\
      (-M.a) * L.a + 1 * M.a = 0 /\
      (-M.a) * L.b + 1 * M.b = 0 /\
      (-M.a) * L.c + 1 * M.c <= 0 := by
  rcases hL with ⟨hLa, hLb, hLc⟩
  rcases hM with ⟨hab, ha_neg, hc⟩
  constructor
  · linarith
  constructor
  · norm_num
  constructor
  · right
    norm_num
  constructor
  · rw [hLa]
    ring
  constructor
  · have hb : M.b = -M.a := by
      linarith
    rw [hLb, hb]
    ring
  · rw [hLc]
    linarith

private theorem oppNegFirst_facts
    {L M : StrictLin2}
    (hL : OppNegRow L) (hM : FixedRow M (-1) 1) :
    0 <= (1 : Rat) /\
      0 <= L.a /\
      (0 < (1 : Rat) \/ 0 < L.a) /\
      1 * L.a + L.a * M.a = 0 /\
      1 * L.b + L.a * M.b = 0 /\
      1 * L.c + L.a * M.c <= 0 := by
  rcases hL with ⟨hab, ha_pos, hc⟩
  rcases hM with ⟨hMa, hMb, hMc⟩
  constructor
  · norm_num
  constructor
  · exact ha_pos.le
  constructor
  · left
    norm_num
  constructor
  · rw [hMa]
    ring
  constructor
  · have hb : L.b = -L.a := by
      linarith
    rw [hb, hMb]
    ring
  · rw [hMc]
    linarith

private theorem oppNegSecond_facts
    {L M : StrictLin2}
    (hL : FixedRow L (-1) 1) (hM : OppNegRow M) :
    0 <= M.a /\
      0 <= (1 : Rat) /\
      (0 < M.a \/ 0 < (1 : Rat)) /\
      M.a * L.a + 1 * M.a = 0 /\
      M.a * L.b + 1 * M.b = 0 /\
      M.a * L.c + 1 * M.c <= 0 := by
  rcases hL with ⟨hLa, hLb, hLc⟩
  rcases hM with ⟨hab, ha_pos, hc⟩
  constructor
  · exact ha_pos.le
  constructor
  · norm_num
  constructor
  · left
    exact ha_pos
  constructor
  · rw [hLa]
    ring
  constructor
  · have hb : M.b = -M.a := by
      linarith
    rw [hLb, hb]
    ring
  · rw [hLc]
    linarith

private theorem multipliersAt_eq_for_lines
    (support : TwoSourceFarkasSupport)
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask) :
    SupportPair.multipliersAt support r hlt mask =
      TwoSourceFarkasSupport.multipliersForLines
        (SupportPair.firstLineAt support r hlt mask)
        (SupportPair.secondLineAt support r hlt mask) := by
  rfl

private theorem applies_from_facts
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (h :
      forall hlt : r < numPairWords,
        SourceChecks support r hlt mask /\
          0 <= (SupportPair.multipliersAt support r hlt mask).1 /\
            0 <= (SupportPair.multipliersAt support r hlt mask).2 /\
              (0 < (SupportPair.multipliersAt support r hlt mask).1 \/
                0 < (SupportPair.multipliersAt support r hlt mask).2) /\
                (SupportPair.multipliersAt support r hlt mask).1 *
                    (SupportPair.firstLineAt support r hlt mask).a +
                  (SupportPair.multipliersAt support r hlt mask).2 *
                    (SupportPair.secondLineAt support r hlt mask).a = 0 /\
                  (SupportPair.multipliersAt support r hlt mask).1 *
                      (SupportPair.firstLineAt support r hlt mask).b +
                    (SupportPair.multipliersAt support r hlt mask).2 *
                      (SupportPair.secondLineAt support r hlt mask).b = 0 /\
                    (SupportPair.multipliersAt support r hlt mask).1 *
                        (SupportPair.firstLineAt support r hlt mask).c +
                      (SupportPair.multipliersAt support r hlt mask).2 *
                        (SupportPair.secondLineAt support r hlt mask).c <= 0) :
    SupportPair.Applies support r mask := by
  intro hlt
  rcases h hlt with
    ⟨⟨hfirstSource, hsecondSource⟩, hw1, hw2, hpos, hwa, hwb, hwc⟩
  exact ⟨hfirstSource, hsecondSource, hw1, hw2, hpos, hwa, hwb, hwc⟩

theorem eqEqPosVarFirst_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : EqEqPosVarFirst support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hrow, hfixed⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hrow' : EqEqPosRow L := by
    simpa [L, FirstLineAt] using hrow
  have hfixed' : FixedRow M 1 1 := by
    simpa [M, SecondLineAt] using hfixed
  have hm :
      SupportPair.multipliersAt support r hlt mask = (1, -L.a) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_first_pos (L := L) (M := M) hfixed' hrow'.2.1
  rcases eqEqPosFirst_facts hrow' hfixed' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa using hw1
  · rw [hm]
    simpa [L] using hw2
  · rw [hm]
    simpa [L] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem eqEqPosVarSecond_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : EqEqPosVarSecond support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hfixed, hrow⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hfixed' : FixedRow L 1 1 := by
    simpa [L, FirstLineAt] using hfixed
  have hrow' : EqEqPosRow M := by
    simpa [M, SecondLineAt] using hrow
  have hm :
      SupportPair.multipliersAt support r hlt mask = (-M.a, 1) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_second_pos (L := L) (M := M) hfixed' hrow'.2.1
  rcases eqEqPosSecond_facts hfixed' hrow' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa [M] using hw1
  · rw [hm]
    simpa using hw2
  · rw [hm]
    simpa [M] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem eqEqNegVarFirst_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : EqEqNegVarFirst support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hrow, hfixed⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hrow' : EqEqNegRow L := by
    simpa [L, FirstLineAt] using hrow
  have hfixed' : FixedRow M (-1) (-1) := by
    simpa [M, SecondLineAt] using hfixed
  have hm :
      SupportPair.multipliersAt support r hlt mask = (1, L.a) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_first_neg (L := L) (M := M) hfixed' hrow'.2.1
  rcases eqEqNegFirst_facts hrow' hfixed' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa using hw1
  · rw [hm]
    simpa [L] using hw2
  · rw [hm]
    simpa [L] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem eqEqNegVarSecond_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : EqEqNegVarSecond support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hfixed, hrow⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hfixed' : FixedRow L (-1) (-1) := by
    simpa [L, FirstLineAt] using hfixed
  have hrow' : EqEqNegRow M := by
    simpa [M, SecondLineAt] using hrow
  have hm :
      SupportPair.multipliersAt support r hlt mask = (M.a, 1) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_second_neg (L := L) (M := M) hfixed' hrow'.2.1
  rcases eqEqNegSecond_facts hfixed' hrow' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa [M] using hw1
  · rw [hm]
    simpa using hw2
  · rw [hm]
    simpa [M] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem oppOneMinusVarFirst_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : OppOneMinusVarFirst support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hrow, hfixed⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hrow' : OppPosRow L := by
    simpa [L, FirstLineAt] using hrow
  have hfixed' : FixedRow M 1 (-1) := by
    simpa [M, SecondLineAt] using hfixed
  have hm :
      SupportPair.multipliersAt support r hlt mask = (1, -L.a) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_first_pos (L := L) (M := M) hfixed' hrow'.2.1
  rcases oppPosFirst_facts hrow' hfixed' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa using hw1
  · rw [hm]
    simpa [L] using hw2
  · rw [hm]
    simpa [L] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem oppOneMinusVarSecond_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : OppOneMinusVarSecond support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hfixed, hrow⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hfixed' : FixedRow L 1 (-1) := by
    simpa [L, FirstLineAt] using hfixed
  have hrow' : OppPosRow M := by
    simpa [M, SecondLineAt] using hrow
  have hm :
      SupportPair.multipliersAt support r hlt mask = (-M.a, 1) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_second_pos (L := L) (M := M) hfixed' hrow'.2.1
  rcases oppPosSecond_facts hfixed' hrow' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa [M] using hw1
  · rw [hm]
    simpa using hw2
  · rw [hm]
    simpa [M] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem oppMinusOneVarFirst_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : OppMinusOneVarFirst support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hrow, hfixed⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hrow' : OppNegRow L := by
    simpa [L, FirstLineAt] using hrow
  have hfixed' : FixedRow M (-1) 1 := by
    simpa [M, SecondLineAt] using hfixed
  have hm :
      SupportPair.multipliersAt support r hlt mask = (1, L.a) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_first_neg (L := L) (M := M) hfixed' hrow'.2.1
  rcases oppNegFirst_facts hrow' hfixed' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa using hw1
  · rw [hm]
    simpa [L] using hw2
  · rw [hm]
    simpa [L] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem oppMinusOneVarSecond_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : OppMinusOneVarSecond support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hfixed, hrow⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hfixed' : FixedRow L (-1) 1 := by
    simpa [L, FirstLineAt] using hfixed
  have hrow' : OppNegRow M := by
    simpa [M, SecondLineAt] using hrow
  have hm :
      SupportPair.multipliersAt support r hlt mask = (M.a, 1) := by
    rw [multipliersAt_eq_for_lines]
    exact multipliers_eq_var_second_neg (L := L) (M := M) hfixed' hrow'.2.1
  rcases oppNegSecond_facts hfixed' hrow' with
    ⟨hw1, hw2, hpos, hwa, hwb, hwc⟩
  refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hm]
    simpa [M] using hw1
  · rw [hm]
    simpa using hw2
  · rw [hm]
    simpa [M] using hpos
  · rw [hm]
    simpa [L, M] using hwa
  · rw [hm]
    simpa [L, M] using hwb
  · rw [hm]
    simpa [L, M] using hwc

theorem axisAOnly_applies_of_shape
    {support : TwoSourceFarkasSupport} {r : Nat} {mask : SignMask}
    (hshape : AxisAOnly support r mask) :
    SupportPair.Applies support r mask := by
  refine applies_from_facts ?_
  intro hlt
  rcases hshape hlt with ⟨hsource, hb1, hb2, ha_prod, hc⟩
  let L := SupportPair.firstLineAt support r hlt mask
  let M := SupportPair.secondLineAt support r hlt mask
  have hb1' : L.b = 0 := by
    simpa [L, FirstLineAt] using hb1
  have hb2' : M.b = 0 := by
    simpa [M, SecondLineAt] using hb2
  have hprod' : L.a * M.a < 0 := by
    simpa [L, M, FirstLineAt, SecondLineAt] using ha_prod
  have hm0 :
      SupportPair.multipliersAt support r hlt mask =
        TwoSourceFarkasSupport.multipliersForLines L M := by
    rw [multipliersAt_eq_for_lines]
  have hcases : (0 < L.a /\ M.a < 0) \/ (L.a < 0 /\ 0 < M.a) := by
    exact (mul_neg_iff.mp hprod')
  rcases hcases with hcase | hcase
  · rcases hcase with ⟨hLa_pos, hMa_neg⟩
    have hm : SupportPair.multipliersAt support r hlt mask = (-M.a, L.a) := by
      rw [hm0]
      exact multipliers_eq_axis_pos_neg hLa_pos hMa_neg
    refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · rw [hm]
      linarith
    · rw [hm]
      exact hLa_pos.le
    · rw [hm]
      right
      exact hLa_pos
    · rw [hm]
      ring
    · rw [hm]
      rw [hb1', hb2']
      ring
    · simpa [L, M, FirstLineAt, SecondLineAt] using hc
  · rcases hcase with ⟨hLa_neg, hMa_pos⟩
    have hm : SupportPair.multipliersAt support r hlt mask = (M.a, -L.a) := by
      rw [hm0]
      exact multipliers_eq_axis_neg_pos hLa_neg hMa_pos
    refine ⟨hsource, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · rw [hm]
      exact hMa_pos.le
    · rw [hm]
      linarith
    · rw [hm]
      left
      exact hMa_pos
    · rw [hm]
      ring
    · rw [hm]
      rw [hb1', hb2']
      ring
    · simpa [L, M, FirstLineAt, SecondLineAt] using hc

theorem eqEqPosVarFirst_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (EqEqPosVarFirst support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (eqEqPosVarFirst_applies_of_shape hshape)

theorem eqEqPosVarSecond_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (EqEqPosVarSecond support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (eqEqPosVarSecond_applies_of_shape hshape)

theorem eqEqNegVarFirst_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (EqEqNegVarFirst support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (eqEqNegVarFirst_applies_of_shape hshape)

theorem eqEqNegVarSecond_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (EqEqNegVarSecond support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (eqEqNegVarSecond_applies_of_shape hshape)

theorem oppOneMinusVarFirst_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (OppOneMinusVarFirst support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (oppOneMinusVarFirst_applies_of_shape hshape)

theorem oppOneMinusVarSecond_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (OppOneMinusVarSecond support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (oppOneMinusVarSecond_applies_of_shape hshape)

theorem oppMinusOneVarFirst_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (OppMinusOneVarFirst support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (oppMinusOneVarFirst_applies_of_shape hshape)

theorem oppMinusOneVarSecond_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (OppMinusOneVarSecond support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (oppMinusOneVarSecond_applies_of_shape hshape)

theorem axisAOnly_checkedOn (support : TwoSourceFarkasSupport) :
    SupportFamilyCheckedOn support (AxisAOnly support) := by
  intro r hlt mask hshape
  exact SupportPair.checked_of_applies
    (axisAOnly_applies_of_shape hshape)

theorem eqEqPosVarFirst_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (EqEqPosVarFirst support) :=
  SupportFamilyCheckedOn.kills (eqEqPosVarFirst_checkedOn support)

theorem eqEqPosVarSecond_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (EqEqPosVarSecond support) :=
  SupportFamilyCheckedOn.kills (eqEqPosVarSecond_checkedOn support)

theorem eqEqNegVarFirst_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (EqEqNegVarFirst support) :=
  SupportFamilyCheckedOn.kills (eqEqNegVarFirst_checkedOn support)

theorem eqEqNegVarSecond_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (EqEqNegVarSecond support) :=
  SupportFamilyCheckedOn.kills (eqEqNegVarSecond_checkedOn support)

theorem oppOneMinusVarFirst_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (OppOneMinusVarFirst support) :=
  SupportFamilyCheckedOn.kills (oppOneMinusVarFirst_checkedOn support)

theorem oppOneMinusVarSecond_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (OppOneMinusVarSecond support) :=
  SupportFamilyCheckedOn.kills (oppOneMinusVarSecond_checkedOn support)

theorem oppMinusOneVarFirst_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (OppMinusOneVarFirst support) :=
  SupportFamilyCheckedOn.kills (oppMinusOneVarFirst_checkedOn support)

theorem oppMinusOneVarSecond_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (OppMinusOneVarSecond support) :=
  SupportFamilyCheckedOn.kills (oppMinusOneVarSecond_checkedOn support)

theorem axisAOnly_killsOn (support : TwoSourceFarkasSupport) :
    SupportFamilyKillsOn support (AxisAOnly support) :=
  SupportFamilyCheckedOn.kills (axisAOnly_checkedOn support)

theorem rowRelationTemplates_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
