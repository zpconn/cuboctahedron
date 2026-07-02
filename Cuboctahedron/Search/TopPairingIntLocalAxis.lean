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

def faceLinearScale : Face -> Nat
  | Face.xp => 1
  | Face.xm => 1
  | Face.yp => 1
  | Face.ym => 1
  | Face.zp => 1
  | Face.zm => 1
  | Face.tmmm => 3
  | Face.tmmp => 3
  | Face.tmpm => 3
  | Face.tmpp => 3
  | Face.tpmm => 3
  | Face.tpmp => 3
  | Face.tppm => 3
  | Face.tppp => 3

def faceScaledLinearInt (face : Face) : Mat3 Int :=
  matSub (scalarMat (faceLinearScale face : Int) (matId : Mat3 Int))
    (scalarMat (2 : Int) (outer (normalInt face) (normalInt face)))

def scaledLinearAfterFaces : Mat3 Int -> List Face -> Mat3 Int
  | linear, [] => linear
  | linear, face :: rest =>
      scaledLinearAfterFaces
        (matMul linear (faceScaledLinearInt face)) rest

def linearScaleAfterFaces : Nat -> List Face -> Nat
  | scale, [] => scale
  | scale, face :: rest =>
      linearScaleAfterFaces (scale * faceLinearScale face) rest

theorem normalInt_cast (face : Face) :
    (normalInt face).map (fun z : Int => (z : Rat)) = normalQ face := by
  cases face <;> rfl

theorem topPairingLocalAxisInt_cast :
    topPairingLocalAxisInt.map (fun z : Int => (z : Rat)) =
      topPairingLocalAxis := by
  rfl

theorem faceScaledLinearInt_cast (face : Face) :
    (faceScaledLinearInt face).map (fun z : Int => (z : Rat)) =
      scalarMat (faceLinearScale face : Rat) (reflM (normalQ face)) := by
  cases face <;>
    apply Mat3.ext <;>
    norm_num [faceScaledLinearInt, faceLinearScale, normalInt, normalQ,
      reflM, matSub, scalarMat, outer, matId, dot, Mat3.map]

theorem matMap_intCast_rat_matVec (A : Mat3 Int) (v : Vec3 Int) :
    (matVec A v).map (fun z : Int => (z : Rat)) =
      matVec (A.map (fun z : Int => (z : Rat)))
        (v.map (fun z : Int => (z : Rat))) := by
  apply Vec3.ext <;> simp [Vec3.map, Mat3.map, matVec]

theorem matMap_intCast_rat_matMul_local (A B : Mat3 Int) :
    (matMul A B).map (fun z : Int => (z : Rat)) =
      matMul (A.map (fun z : Int => (z : Rat)))
        (B.map (fun z : Int => (z : Rat))) := by
  apply Mat3.ext <;> simp [Mat3.map, matMul]

theorem matMul_scalarMat_scalarMat_rat_local
    (a b : Rat) (A B : Mat3 Rat) :
    matMul (scalarMat a A) (scalarMat b B) =
      scalarMat (a * b) (matMul A B) := by
  apply Mat3.ext <;> simp [matMul, scalarMat] <;> ring

theorem scaledLinearAfterFaces_cast
    {scaled : Mat3 Int} {linear : Mat3 Rat} {scale : Nat} {faces : List Face}
    (hscaled :
      scaled.map (fun z : Int => (z : Rat)) =
        scalarMat (scale : Rat) linear) :
    (scaledLinearAfterFaces scaled faces).map (fun z : Int => (z : Rat)) =
      scalarMat (linearScaleAfterFaces scale faces : Rat)
        (topPairingLinearAfterFaces linear faces) := by
  induction faces generalizing scaled linear scale with
  | nil =>
      simpa [scaledLinearAfterFaces, linearScaleAfterFaces,
        topPairingLinearAfterFaces] using hscaled
  | cons face rest ih =>
      rw [scaledLinearAfterFaces, linearScaleAfterFaces,
        topPairingLinearAfterFaces]
      have hnext :
          (matMul scaled (faceScaledLinearInt face)).map
              (fun z : Int => (z : Rat)) =
            scalarMat ((scale * faceLinearScale face : Nat) : Rat)
              (matMul linear (reflM (normalQ face))) := by
        rw [matMap_intCast_rat_matMul_local, hscaled,
          faceScaledLinearInt_cast,
          matMul_scalarMat_scalarMat_rat_local]
        have hcast :
            ((scale * faceLinearScale face : Nat) : Rat) =
              (scale : Rat) * (faceLinearScale face : Rat) := by
          norm_num
        rw [hcast]
      exact ih hnext

theorem scaledLinearAfterFaces_from_identity_cast (faces : List Face) :
    (scaledLinearAfterFaces (matId : Mat3 Int) faces).map
        (fun z : Int => (z : Rat)) =
      scalarMat (linearScaleAfterFaces 1 faces : Rat)
        (topPairingLinearAfterFaces (matId : Mat3 Rat) faces) := by
  apply scaledLinearAfterFaces_cast
  apply Mat3.ext <;> simp [Mat3.map, scalarMat, matId]

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
