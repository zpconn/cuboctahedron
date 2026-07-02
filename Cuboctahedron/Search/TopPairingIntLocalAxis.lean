import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Integer-scaled local-axis facts for the top-pairing language.

Generated transition providers should avoid repeatedly reducing rational
reflection products.  This module gives a small bridge: if an integer matrix is
a positive scale multiple of the rational linear state, then the sign of the
integer local-axis dot product controls `TopPairingLocalAxisAllows`.
-/

namespace Cuboctahedron

def normalInt : Face -> Vec3 Int
  | Face.xp => { x := 1, y := 0, z := 0 }
  | Face.xm => { x := -1, y := 0, z := 0 }
  | Face.yp => { x := 0, y := 1, z := 0 }
  | Face.ym => { x := 0, y := -1, z := 0 }
  | Face.zp => { x := 0, y := 0, z := 1 }
  | Face.zm => { x := 0, y := 0, z := -1 }
  | Face.tmmm => { x := -1, y := -1, z := -1 }
  | Face.tmmp => { x := -1, y := -1, z := 1 }
  | Face.tmpm => { x := -1, y := 1, z := -1 }
  | Face.tmpp => { x := -1, y := 1, z := 1 }
  | Face.tpmm => { x := 1, y := -1, z := -1 }
  | Face.tpmp => { x := 1, y := -1, z := 1 }
  | Face.tppm => { x := 1, y := 1, z := -1 }
  | Face.tppp => { x := 1, y := 1, z := 1 }

def topPairingLocalAxisInt : Vec3 Int where
  x := -1
  y := -1
  z := -3

def intLocalAxisDot (linear : Mat3 Int) (face : Face) : Int :=
  dot (matVec linear (normalInt face)) topPairingLocalAxisInt

theorem normalInt_cast (face : Face) :
    (normalInt face).map (fun z : Int => (z : Rat)) = normalQ face := by
  cases face <;> rfl

theorem topPairingLocalAxisInt_cast :
    topPairingLocalAxisInt.map (fun z : Int => (z : Rat)) =
      topPairingLocalAxis := by
  rfl

theorem intLocalAxisDot_scaled_eq
    {linear : Mat3 Rat} {scaled : Mat3 Int} {scale : Nat} {face : Face}
    (hscaled :
      scaled.map (fun z : Int => (z : Rat)) =
        scalarMat (scale : Rat) linear) :
    ((intLocalAxisDot scaled face : Int) : Rat) =
      (scale : Rat) *
        dot (matVec linear (normalQ face)) topPairingLocalAxis := by
  cases scaled
  cases linear
  cases face <;>
    (simp [intLocalAxisDot, normalInt, topPairingLocalAxisInt, normalQ,
      topPairingLocalAxis, Mat3.map, scalarMat, matVec, dot] at hscaled ⊢) <;>
    nlinarith

theorem not_localAxisAllows_of_scaled_int_dot_nonpos
    {linear : Mat3 Rat} {scaled : Mat3 Int} {scale : Nat} {face : Face}
    (hscale : 0 < scale)
    (hscaled :
      scaled.map (fun z : Int => (z : Rat)) =
        scalarMat (scale : Rat) linear)
    (hdot : intLocalAxisDot scaled face <= 0) :
    ¬ TopPairingLocalAxisAllows linear face := by
  intro hallow
  have hdot_eq :=
    intLocalAxisDot_scaled_eq
      (linear := linear) (scaled := scaled) (scale := scale) (face := face)
      hscaled
  have hdot_rat : ((intLocalAxisDot scaled face : Int) : Rat) <= 0 := by
    exact_mod_cast hdot
  have hscale_rat : (0 : Rat) < (scale : Rat) := by
    exact_mod_cast hscale
  unfold TopPairingLocalAxisAllows at hallow
  nlinarith

end Cuboctahedron
