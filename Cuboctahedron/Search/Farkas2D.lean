import Cuboctahedron.Search.LinearConstraints

/-!
Sparse exact Farkas certificates for strict two-dimensional systems.
-/

namespace Cuboctahedron

structure FarkasCert where
  terms : List (Nat × Rat)
deriving DecidableEq, Repr

def constraintAt : List StrictLin2 -> Nat -> StrictLin2
  | [], _ => StrictLin2.zero
  | L :: _, 0 => L
  | _ :: constraints, n + 1 => constraintAt constraints n

def termLinear (constraints : List StrictLin2) (term : Nat × Rat) : StrictLin2 :=
  StrictLin2.scale term.2 (constraintAt constraints term.1)

def weightedSum (constraints : List StrictLin2) : List (Nat × Rat) -> StrictLin2
  | [] => StrictLin2.zero
  | term :: terms => StrictLin2.add (termLinear constraints term)
      (weightedSum constraints terms)

namespace FarkasCert

def TermValid (constraints : List StrictLin2) (term : Nat × Rat) : Prop :=
  term.1 < constraints.length /\ 0 <= term.2

def TermPositive (term : Nat × Rat) : Prop :=
  0 < term.2

def Valid (constraints : List StrictLin2) (cert : FarkasCert) : Prop :=
  (forall term, term ∈ cert.terms -> TermValid constraints term) /\
    (exists term, term ∈ cert.terms /\ TermPositive term) /\
    (weightedSum constraints cert.terms).a = 0 /\
    (weightedSum constraints cert.terms).b = 0 /\
    (weightedSum constraints cert.terms).c <= 0

end FarkasCert

def checkFarkasTerm (constraints : List StrictLin2) (term : Nat × Rat) : Bool :=
  decide (term.1 < constraints.length) && decide (0 <= term.2)

def checkFarkasPositive (term : Nat × Rat) : Bool :=
  decide (0 < term.2)

def checkFarkas (constraints : List StrictLin2) (cert : FarkasCert) : Bool :=
  cert.terms.all (checkFarkasTerm constraints) &&
    cert.terms.any checkFarkasPositive &&
    decide ((weightedSum constraints cert.terms).a = 0) &&
    decide ((weightedSum constraints cert.terms).b = 0) &&
    decide ((weightedSum constraints cert.terms).c <= 0)

theorem checkFarkas_valid {constraints : List StrictLin2} {cert : FarkasCert}
    (hcheck : checkFarkas constraints cert = true) :
    cert.Valid constraints := by
  unfold checkFarkas checkFarkasTerm checkFarkasPositive at hcheck
  unfold FarkasCert.Valid FarkasCert.TermValid FarkasCert.TermPositive
  simp only [Bool.and_eq_true, List.all_eq_true, List.any_eq_true,
    decide_eq_true_eq] at hcheck
  rcases hcheck with ⟨⟨⟨⟨hTerms, hPos⟩, ha⟩, hb⟩, hc⟩
  exact ⟨hTerms, hPos, ha, hb, hc⟩

theorem constraintAt_mem_of_lt
    {constraints : List StrictLin2} {idx : Nat}
    (hidx : idx < constraints.length) :
    constraintAt constraints idx ∈ constraints := by
  induction constraints generalizing idx with
  | nil =>
      simp at hidx
  | cons L constraints ih =>
      cases idx with
      | zero =>
          simp [constraintAt]
      | succ idx =>
          have htail : idx < constraints.length := by
            simpa using Nat.succ_lt_succ_iff.mp hidx
          have hmem := ih htail
          simp [constraintAt, hmem]

theorem termLinear_eval_le_c_of_valid
    {constraints : List StrictLin2} {term : Nat × Rat} {y z : Real}
    (hAll : forall L, L ∈ constraints -> L.Holds y z)
    (hValid : FarkasCert.TermValid constraints term) :
    (termLinear constraints term).eval y z <=
      ((termLinear constraints term).c : Real) := by
  rcases hValid with ⟨hidx, hnonneg⟩
  unfold termLinear
  exact StrictLin2.scale_eval_le_c_of_nonneg hnonneg
    (hAll _ (constraintAt_mem_of_lt hidx))

theorem termLinear_eval_lt_c_of_valid_pos
    {constraints : List StrictLin2} {term : Nat × Rat} {y z : Real}
    (hAll : forall L, L ∈ constraints -> L.Holds y z)
    (hValid : FarkasCert.TermValid constraints term)
    (hPos : FarkasCert.TermPositive term) :
    (termLinear constraints term).eval y z <
      ((termLinear constraints term).c : Real) := by
  rcases hValid with ⟨hidx, _⟩
  unfold termLinear
  exact StrictLin2.scale_eval_lt_c_of_pos hPos
    (hAll _ (constraintAt_mem_of_lt hidx))

theorem weightedSum_eval_le_c_of_terms_valid
    {constraints : List StrictLin2} {terms : List (Nat × Rat)} {y z : Real}
    (hTerms : forall term, term ∈ terms -> FarkasCert.TermValid constraints term)
    (hAll : forall L, L ∈ constraints -> L.Holds y z) :
    (weightedSum constraints terms).eval y z <=
      ((weightedSum constraints terms).c : Real) := by
  induction terms with
  | nil =>
      simp [weightedSum]
  | cons term terms ih =>
      have hTerm : FarkasCert.TermValid constraints term := hTerms term (by simp)
      have hTail :
          forall term, term ∈ terms -> FarkasCert.TermValid constraints term := by
        intro t ht
        exact hTerms t (by simp [ht])
      have hterm_le := termLinear_eval_le_c_of_valid hAll hTerm
      have htail_le := ih hTail
      unfold weightedSum
      rw [StrictLin2.eval_add, StrictLin2.c_add]
      linarith

theorem weightedSum_eval_lt_c_of_terms_valid_pos
    {constraints : List StrictLin2} {terms : List (Nat × Rat)} {y z : Real}
    (hTerms : forall term, term ∈ terms -> FarkasCert.TermValid constraints term)
    (hPos : exists term, term ∈ terms /\ FarkasCert.TermPositive term)
    (hAll : forall L, L ∈ constraints -> L.Holds y z) :
    (weightedSum constraints terms).eval y z <
      ((weightedSum constraints terms).c : Real) := by
  induction terms with
  | nil =>
      rcases hPos with ⟨term, hmem, _⟩
      simp at hmem
  | cons term terms ih =>
      have hTerm : FarkasCert.TermValid constraints term := hTerms term (by simp)
      have hTail :
          forall term, term ∈ terms -> FarkasCert.TermValid constraints term := by
        intro t ht
        exact hTerms t (by simp [ht])
      rcases hPos with ⟨witness, hmem, hwitness_pos⟩
      simp at hmem
      rcases hmem with hwitness_eq | hwitness_tail
      · subst witness
        have hterm_lt := termLinear_eval_lt_c_of_valid_pos hAll hTerm hwitness_pos
        have htail_le := weightedSum_eval_le_c_of_terms_valid hTail hAll
        unfold weightedSum
        rw [StrictLin2.eval_add, StrictLin2.c_add]
        linarith
      · have hterm_le := termLinear_eval_le_c_of_valid hAll hTerm
        have htail_lt := ih hTail ⟨witness, hwitness_tail, hwitness_pos⟩
        unfold weightedSum
        rw [StrictLin2.eval_add, StrictLin2.c_add]
        linarith

theorem checkFarkas_sound
    {constraints : List StrictLin2}
    {cert : FarkasCert}
    (hcheck : checkFarkas constraints cert = true) :
    ¬ exists y z : Real,
      forall L, L ∈ constraints -> L.Holds y z := by
  intro hfeas
  rcases hfeas with ⟨y, z, hAll⟩
  rcases checkFarkas_valid hcheck with
    ⟨hTerms, hPos, ha, hb, hc⟩
  have hlt := weightedSum_eval_lt_c_of_terms_valid_pos hTerms hPos hAll
  have heval :
      (weightedSum constraints cert.terms).eval y z = 0 := by
    simp [StrictLin2.eval, ha, hb]
  have hcReal : (((weightedSum constraints cert.terms).c : Rat) : Real) <= 0 := by
    exact_mod_cast hc
  linarith

def tinyContradictionConstraints : List StrictLin2 :=
  [{ a := 1, b := 0, c := 0 }, { a := -1, b := 0, c := 0 }]

def tinyContradictionCert : FarkasCert where
  terms := [(0, 1), (1, 1)]

example : checkFarkas tinyContradictionConstraints tinyContradictionCert = true := by
  norm_num [checkFarkas, checkFarkasTerm, checkFarkasPositive,
    tinyContradictionConstraints, tinyContradictionCert, weightedSum,
    termLinear, constraintAt, StrictLin2.add, StrictLin2.scale, StrictLin2.zero]

example :
    ¬ exists y z : Real,
      forall L, L ∈ tinyContradictionConstraints -> L.Holds y z :=
  checkFarkas_sound (constraints := tinyContradictionConstraints)
    (cert := tinyContradictionCert) (by
    norm_num [checkFarkas, checkFarkasTerm, checkFarkasPositive,
      tinyContradictionConstraints, tinyContradictionCert, weightedSum,
      termLinear, constraintAt, StrictLin2.add, StrictLin2.scale,
      StrictLin2.zero])

example :
    checkFarkas tinyContradictionConstraints { terms := [(2, 1)] } = false := by
  decide

example :
    checkFarkas tinyContradictionConstraints { terms := [(0, 0), (1, 0)] } =
      false := by
  decide

example :
    checkFarkas tinyContradictionConstraints { terms := [(0, 1)] } = false := by
  norm_num [checkFarkas, checkFarkasTerm, checkFarkasPositive,
    tinyContradictionConstraints, weightedSum, termLinear, constraintAt,
    StrictLin2.add, StrictLin2.scale, StrictLin2.zero]

#check checkFarkas
#check checkFarkas_sound

end Cuboctahedron
