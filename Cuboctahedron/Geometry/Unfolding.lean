import Cuboctahedron.Geometry.Reflection

/-!
Exact affine products for unfolded face sequences.
-/

namespace Cuboctahedron

/--
Natural prefix products. `prefixAffNat seq i` is the affine map obtained by
applying the first `i` face reflections in itinerary order:
`r_F(i-1) o ... o r_F0`.
-/
def prefixAffNat (seq : Fin 14 -> Face) : Nat -> Aff3 Rat
  | 0 => affId
  | n + 1 =>
      if h : n < 14 then
        affCompose (faceReflectionQ (seq ⟨n, h⟩)) (prefixAffNat seq n)
      else
        prefixAffNat seq n

/--
The natural prefix product indexed by `Fin 15`. In particular,
`prefixAff seq 0 = affId` and `prefixAff seq 14` applies all itinerary faces
in order `0, 1, ..., 13`.
-/
def prefixAff (seq : Fin 14 -> Face) (i : Fin 15) : Aff3 Rat :=
  prefixAffNat seq i.val

def composeFaceList (seq : Fin 14 -> Face) : List (Fin 14) -> Aff3 Rat
  | [] => affId
  | i :: is => affCompose (faceReflectionQ (seq i)) (composeFaceList seq is)

/--
Total composition order matching the C++ verifier convention:
`A = r_F1 o r_F2 o ... o r_F13 o r_F0`, with `r_F0` applied first.

This is intentionally different from the natural prefix order.
-/
def totalOrder : List (Fin 14) :=
  [⟨1, by decide⟩, ⟨2, by decide⟩, ⟨3, by decide⟩, ⟨4, by decide⟩,
   ⟨5, by decide⟩, ⟨6, by decide⟩, ⟨7, by decide⟩, ⟨8, by decide⟩,
   ⟨9, by decide⟩, ⟨10, by decide⟩, ⟨11, by decide⟩, ⟨12, by decide⟩,
   ⟨13, by decide⟩, ⟨0, by decide⟩]

def totalAff (seq : Fin 14 -> Face) : Aff3 Rat :=
  composeFaceList seq totalOrder

def totalLinear (seq : Fin 14 -> Face) : Mat3 Rat :=
  (totalAff seq).M

@[simp] theorem prefixAff_zero (seq : Fin 14 -> Face) :
    prefixAff seq ⟨0, by decide⟩ = affId := rfl

@[simp] theorem prefixAff_one (seq : Fin 14 -> Face) :
    prefixAff seq ⟨1, by decide⟩ =
      affCompose (faceReflectionQ (seq ⟨0, by decide⟩)) affId := by
  simp [prefixAff, prefixAffNat]

@[simp] theorem totalLinear_eq_M (seq : Fin 14 -> Face) :
    totalLinear seq = (totalAff seq).M := rfl

def constantSeq (f : Face) : Fin 14 -> Face :=
  fun _ => f

#eval totalOrder.length
#eval (prefixAff (constantSeq Face.xp) ⟨1, by decide⟩).M
#eval (totalAff (constantSeq Face.xp)).M

end Cuboctahedron
