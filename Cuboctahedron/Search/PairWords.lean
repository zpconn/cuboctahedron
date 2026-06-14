import Mathlib.Tactic
import Mathlib.Data.Vector.Basic
import Cuboctahedron.Geometry.Faces

/-!
Opposite face-pairs and length-13 pair words.
-/

namespace Cuboctahedron

inductive PairId
  | x | y | z | d111 | d11m | d1m1 | dm11
deriving DecidableEq, Repr, Fintype

def pairOfFace : Face -> PairId
  | Face.xp => PairId.x
  | Face.xm => PairId.x
  | Face.yp => PairId.y
  | Face.ym => PairId.y
  | Face.zp => PairId.z
  | Face.zm => PairId.z
  | Face.tppp => PairId.d111
  | Face.tmmm => PairId.d111
  | Face.tppm => PairId.d11m
  | Face.tmmp => PairId.d11m
  | Face.tpmp => PairId.d1m1
  | Face.tmpm => PairId.d1m1
  | Face.tmpp => PairId.dm11
  | Face.tpmm => PairId.dm11

def canonicalNormalQ : PairId -> Vec3 Rat
  | PairId.x => { x := 1, y := 0, z := 0 }
  | PairId.y => { x := 0, y := 1, z := 0 }
  | PairId.z => { x := 0, y := 0, z := 1 }
  | PairId.d111 => { x := 1, y := 1, z := 1 }
  | PairId.d11m => { x := 1, y := 1, z := -1 }
  | PairId.d1m1 => { x := 1, y := -1, z := 1 }
  | PairId.dm11 => { x := -1, y := 1, z := 1 }

def faceOfPairSign : PairId -> Bool -> Face
  | PairId.x, true => Face.xp
  | PairId.x, false => Face.xm
  | PairId.y, true => Face.yp
  | PairId.y, false => Face.ym
  | PairId.z, true => Face.zp
  | PairId.z, false => Face.zm
  | PairId.d111, true => Face.tppp
  | PairId.d111, false => Face.tmmm
  | PairId.d11m, true => Face.tppm
  | PairId.d11m, false => Face.tmmp
  | PairId.d1m1, true => Face.tpmp
  | PairId.d1m1, false => Face.tmpm
  | PairId.dm11, true => Face.tmpp
  | PairId.dm11, false => Face.tpmm

abbrev PairWord := Vector PairId 13

abbrev pairCount (p : PairId) (w : PairWord) : Nat :=
  Fintype.card { i : Fin 13 // w.get i = p }

def ValidPairWord (w : PairWord) : Prop :=
  pairCount PairId.x w = 1 /\
    pairCount PairId.y w = 2 /\
    pairCount PairId.z w = 2 /\
    pairCount PairId.d111 w = 2 /\
    pairCount PairId.d11m w = 2 /\
    pairCount PairId.d1m1 w = 2 /\
    pairCount PairId.dm11 w = 2

@[simp] theorem pairOfFace_faceOfPairSign (p : PairId) (positive : Bool) :
    pairOfFace (faceOfPairSign p positive) = p := by
  cases p <;> cases positive <;> rfl

@[simp] theorem normalQ_faceOfPairSign_true (p : PairId) :
    normalQ (faceOfPairSign p true) = canonicalNormalQ p := by
  cases p <;> rfl

@[simp] theorem pairCount_eq_card_get (p : PairId) (w : PairWord) :
    pairCount p w = Fintype.card { i : Fin 13 // w.get i = p } := rfl

#eval pairOfFace Face.xp
#eval canonicalNormalQ PairId.d111
#eval faceOfPairSign PairId.dm11 true

end Cuboctahedron
