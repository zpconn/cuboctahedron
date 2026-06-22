import Mathlib.Tactic
import Cuboctahedron.Basic.Mat3

/-!
Small integer arithmetic primitives for generated certificates.

This module is intentionally separate from the existing rational geometry and
certificate checkers.  It gives generated semantic-convex certificates a place
to state integer equalities/inequalities and then bridge those facts to the
existing `Rat`/`Real` semantics with tiny, hand-written lemmas.
-/

namespace Cuboctahedron.Generated.Arithmetic

abbrev IVec3 := Cuboctahedron.Vec3 Int
abbrev IMat3 := Cuboctahedron.Mat3 Int

def zeroIVec3 : IVec3 :=
  { x := 0, y := 0, z := 0 }

def ivecAdd (u v : IVec3) : IVec3 :=
  Cuboctahedron.vecAdd u v

def ivecScale (c : Int) (v : IVec3) : IVec3 :=
  Cuboctahedron.scalarMul c v

def ivecDot (u v : IVec3) : Int :=
  Cuboctahedron.dot u v

def imatVec (A : IMat3) (v : IVec3) : IVec3 :=
  Cuboctahedron.matVec A v

def imatMul (A B : IMat3) : IMat3 :=
  Cuboctahedron.matMul A B

namespace IVec3

def toRat (v : IVec3) : Cuboctahedron.Vec3 Rat :=
  v.map fun z => (z : Rat)

def toReal (v : IVec3) : Cuboctahedron.Vec3 Real :=
  v.map fun z => (z : Real)

@[simp] theorem toRat_x (v : IVec3) : (toRat v).x = (v.x : Rat) := rfl
@[simp] theorem toRat_y (v : IVec3) : (toRat v).y = (v.y : Rat) := rfl
@[simp] theorem toRat_z (v : IVec3) : (toRat v).z = (v.z : Rat) := rfl

@[simp] theorem toReal_x (v : IVec3) : (toReal v).x = (v.x : Real) := rfl
@[simp] theorem toReal_y (v : IVec3) : (toReal v).y = (v.y : Real) := rfl
@[simp] theorem toReal_z (v : IVec3) : (toReal v).z = (v.z : Real) := rfl

theorem toReal_eq_toRat_map (v : IVec3) :
    toReal v = (toRat v).map fun q => (q : Real) := by
  apply Cuboctahedron.Vec3.ext <;> simp [toReal, toRat]

end IVec3

namespace IMat3

def toRat (A : IMat3) : Cuboctahedron.Mat3 Rat :=
  A.map fun z => (z : Rat)

def toReal (A : IMat3) : Cuboctahedron.Mat3 Real :=
  A.map fun z => (z : Real)

@[simp] theorem toRat_m00 (A : IMat3) : (toRat A).m00 = (A.m00 : Rat) := rfl
@[simp] theorem toReal_m00 (A : IMat3) : (toReal A).m00 = (A.m00 : Real) := rfl

theorem toReal_eq_toRat_map (A : IMat3) :
    toReal A = (toRat A).map fun q => (q : Real) := by
  apply Cuboctahedron.Mat3.ext <;> simp [toReal, toRat]

end IMat3

theorem ivecDot_toRat (u v : IVec3) :
    ((ivecDot u v : Int) : Rat) =
      Cuboctahedron.dot (IVec3.toRat u) (IVec3.toRat v) := by
  simp [ivecDot, IVec3.toRat, Cuboctahedron.dot]

theorem ivecDot_toReal (u v : IVec3) :
    ((ivecDot u v : Int) : Real) =
      Cuboctahedron.dot (IVec3.toReal u) (IVec3.toReal v) := by
  simp [ivecDot, IVec3.toReal, Cuboctahedron.dot]

theorem ivecAdd_toRat (u v : IVec3) :
    IVec3.toRat (ivecAdd u v) =
      Cuboctahedron.vecAdd (IVec3.toRat u) (IVec3.toRat v) := by
  apply Cuboctahedron.Vec3.ext <;> simp [ivecAdd, IVec3.toRat, Cuboctahedron.vecAdd]

theorem ivecScale_toRat (c : Int) (v : IVec3) :
    IVec3.toRat (ivecScale c v) =
      Cuboctahedron.scalarMul (c : Rat) (IVec3.toRat v) := by
  apply Cuboctahedron.Vec3.ext <;> simp [ivecScale, IVec3.toRat, Cuboctahedron.scalarMul]

theorem imatVec_toRat (A : IMat3) (v : IVec3) :
    IVec3.toRat (imatVec A v) =
      Cuboctahedron.matVec (IMat3.toRat A) (IVec3.toRat v) := by
  apply Cuboctahedron.Vec3.ext <;>
    simp [imatVec, IMat3.toRat, IVec3.toRat, Cuboctahedron.matVec]

theorem imatMul_toRat (A B : IMat3) :
    IMat3.toRat (imatMul A B) =
      Cuboctahedron.matMul (IMat3.toRat A) (IMat3.toRat B) := by
  apply Cuboctahedron.Mat3.ext <;>
    simp [imatMul, IMat3.toRat, Cuboctahedron.matMul]

structure HVec3 where
  x : Int
  y : Int
  z : Int
  w : Int
deriving Repr, DecidableEq, Inhabited

namespace HVec3

def validDen (p : HVec3) : Prop :=
  0 < p.w

def toRatVec3 (p : HVec3) : Cuboctahedron.Vec3 Rat :=
  { x := (p.x : Rat) / (p.w : Rat)
    y := (p.y : Rat) / (p.w : Rat)
    z := (p.z : Rat) / (p.w : Rat) }

noncomputable def toRealVec3 (p : HVec3) : Cuboctahedron.Vec3 Real :=
  { x := (p.x : Real) / (p.w : Real)
    y := (p.y : Real) / (p.w : Real)
    z := (p.z : Real) / (p.w : Real) }

theorem toRealVec3_eq_toRatVec3_map (p : HVec3) :
    toRealVec3 p = (toRatVec3 p).map fun q => (q : Real) := by
  apply Cuboctahedron.Vec3.ext <;> simp [toRealVec3, toRatVec3]

end HVec3

def hdot (n : IVec3) (p : HVec3) : Int :=
  n.x * p.x + n.y * p.y + n.z * p.z

theorem dot_toRealVec3_eq_hdot_div
    (n : IVec3) (p : HVec3) (hw : p.w ≠ 0) :
    Cuboctahedron.dot (IVec3.toReal n) (HVec3.toRealVec3 p) =
      ((hdot n p : Int) : Real) / (p.w : Real) := by
  have hwReal : (p.w : Real) ≠ 0 := by exact_mod_cast hw
  dsimp [HVec3.toRealVec3, IVec3.toReal, Cuboctahedron.dot, hdot]
  field_simp [hwReal]
  norm_num

theorem dot_toRealVec3_pos_of_hdot_pos
    {n : IVec3} {p : HVec3}
    (hw : HVec3.validDen p) (hpos : 0 < hdot n p) :
    0 < Cuboctahedron.dot (IVec3.toReal n) (HVec3.toRealVec3 p) := by
  have hwReal : 0 < (p.w : Real) := by exact_mod_cast hw
  rw [dot_toRealVec3_eq_hdot_div n p (ne_of_gt hw)]
  exact div_pos (by exact_mod_cast hpos) hwReal

theorem hdot_nonpos_of_dot_toRealVec3_nonpos
    {n : IVec3} {p : HVec3}
    (hw : HVec3.validDen p)
    (hdotReal : Cuboctahedron.dot (IVec3.toReal n) (HVec3.toRealVec3 p) <= 0) :
    hdot n p <= 0 := by
  have hwReal : 0 < (p.w : Real) := by exact_mod_cast hw
  rw [dot_toRealVec3_eq_hdot_div n p (ne_of_gt hw)] at hdotReal
  have hmul := mul_le_mul_of_nonneg_right hdotReal (le_of_lt hwReal)
  have hcancel :
      (((hdot n p : Int) : Real) / (p.w : Real)) * (p.w : Real) =
        ((hdot n p : Int) : Real) := by
    field_simp [ne_of_gt hwReal]
  have hreal : ((hdot n p : Int) : Real) <= 0 := by
    simpa [hcancel] using hmul
  exact_mod_cast hreal

def weighted3NormalSum
    (w0 : Int) (n0 : IVec3)
    (w1 : Int) (n1 : IVec3)
    (w2 : Int) (n2 : IVec3) : IVec3 :=
  ivecAdd (ivecScale w0 n0)
    (ivecAdd (ivecScale w1 n1) (ivecScale w2 n2))

def weighted3DotReal
    (w0 : Int) (n0 : IVec3)
    (w1 : Int) (n1 : IVec3)
    (w2 : Int) (n2 : IVec3)
    (v : Cuboctahedron.Vec3 Real) : Real :=
  (w0 : Real) * Cuboctahedron.dot (IVec3.toReal n0) v +
    ((w1 : Real) * Cuboctahedron.dot (IVec3.toReal n1) v +
      (w2 : Real) * Cuboctahedron.dot (IVec3.toReal n2) v)

theorem dot_weighted3NormalSum_toReal
    (w0 : Int) (n0 : IVec3)
    (w1 : Int) (n1 : IVec3)
    (w2 : Int) (n2 : IVec3)
    (v : Cuboctahedron.Vec3 Real) :
    Cuboctahedron.dot
        (IVec3.toReal (weighted3NormalSum w0 n0 w1 n1 w2 n2)) v =
      weighted3DotReal w0 n0 w1 n1 w2 n2 v := by
  simp [weighted3NormalSum, weighted3DotReal, ivecAdd, ivecScale,
    IVec3.toReal, Cuboctahedron.vecAdd, Cuboctahedron.scalarMul,
    Cuboctahedron.dot]
  ring

theorem no_ray_of_int_empty_cone3
    {w0 w1 w2 : Int}
    {n0 n1 n2 : IVec3}
    {v : Cuboctahedron.Vec3 Real}
    (h0 : 0 <= w0) (h1 : 0 <= w1) (h2 : 0 <= w2)
    (hpos : 0 < w0 ∨ 0 < w1 ∨ 0 < w2)
    (hsum : weighted3NormalSum w0 n0 w1 n1 w2 n2 = zeroIVec3)
    (hp0 : 0 < Cuboctahedron.dot (IVec3.toReal n0) v)
    (hp1 : 0 < Cuboctahedron.dot (IVec3.toReal n1) v)
    (hp2 : 0 < Cuboctahedron.dot (IVec3.toReal n2) v) :
    False := by
  have hsum_zero :
      weighted3DotReal w0 n0 w1 n1 w2 n2 v = 0 := by
    rw [← dot_weighted3NormalSum_toReal]
    rw [hsum]
    simp [zeroIVec3, IVec3.toReal, Cuboctahedron.dot]
  have h0r : (0 : Real) <= (w0 : Real) := by exact_mod_cast h0
  have h1r : (0 : Real) <= (w1 : Real) := by exact_mod_cast h1
  have h2r : (0 : Real) <= (w2 : Real) := by exact_mod_cast h2
  have t0_nonneg :
      0 <= (w0 : Real) * Cuboctahedron.dot (IVec3.toReal n0) v :=
    mul_nonneg h0r (le_of_lt hp0)
  have t1_nonneg :
      0 <= (w1 : Real) * Cuboctahedron.dot (IVec3.toReal n1) v :=
    mul_nonneg h1r (le_of_lt hp1)
  have t2_nonneg :
      0 <= (w2 : Real) * Cuboctahedron.dot (IVec3.toReal n2) v :=
    mul_nonneg h2r (le_of_lt hp2)
  have hsum_pos :
      0 < weighted3DotReal w0 n0 w1 n1 w2 n2 v := by
    rcases hpos with hpos0 | hpos1 | hpos2
    · have h0pos : (0 : Real) < (w0 : Real) := by exact_mod_cast hpos0
      have t0_pos :
          0 < (w0 : Real) * Cuboctahedron.dot (IVec3.toReal n0) v :=
        mul_pos h0pos hp0
      unfold weighted3DotReal
      linarith
    · have h1pos : (0 : Real) < (w1 : Real) := by exact_mod_cast hpos1
      have t1_pos :
          0 < (w1 : Real) * Cuboctahedron.dot (IVec3.toReal n1) v :=
        mul_pos h1pos hp1
      unfold weighted3DotReal
      linarith
    · have h2pos : (0 : Real) < (w2 : Real) := by exact_mod_cast hpos2
      have t2_pos :
          0 < (w2 : Real) * Cuboctahedron.dot (IVec3.toReal n2) v :=
        mul_pos h2pos hp2
      unfold weighted3DotReal
      linarith
  linarith

structure EmptyCone3Cert where
  w0 : Int
  n0 : IVec3
  w1 : Int
  n1 : IVec3
  w2 : Int
  n2 : IVec3
deriving Repr, DecidableEq

namespace EmptyCone3Cert

def normalSum (cert : EmptyCone3Cert) : IVec3 :=
  weighted3NormalSum cert.w0 cert.n0 cert.w1 cert.n1 cert.w2 cert.n2

def Checked (cert : EmptyCone3Cert) : Prop :=
  0 <= cert.w0 ∧ 0 <= cert.w1 ∧ 0 <= cert.w2 ∧
    (0 < cert.w0 ∨ 0 < cert.w1 ∨ 0 < cert.w2) ∧
      cert.normalSum = zeroIVec3

theorem sound
    (cert : EmptyCone3Cert) (hcheck : cert.Checked)
    {v : Cuboctahedron.Vec3 Real}
    (hp0 : 0 < Cuboctahedron.dot (IVec3.toReal cert.n0) v)
    (hp1 : 0 < Cuboctahedron.dot (IVec3.toReal cert.n1) v)
    (hp2 : 0 < Cuboctahedron.dot (IVec3.toReal cert.n2) v) :
    False := by
  rcases hcheck with ⟨h0, h1, h2, hpos, hsum⟩
  exact no_ray_of_int_empty_cone3 h0 h1 h2 hpos hsum hp0 hp1 hp2

end EmptyCone3Cert

def sampleEmptyCone3Cert : EmptyCone3Cert where
  w0 := 1
  n0 := { x := 1, y := 0, z := 0 }
  w1 := 1
  n1 := { x := -1, y := 0, z := 0 }
  w2 := 0
  n2 := { x := 0, y := 1, z := 0 }

theorem sampleEmptyCone3Cert_checked :
    sampleEmptyCone3Cert.Checked := by
  unfold EmptyCone3Cert.Checked EmptyCone3Cert.normalSum sampleEmptyCone3Cert
  simp [weighted3NormalSum, zeroIVec3, ivecAdd, ivecScale,
    Cuboctahedron.vecAdd, Cuboctahedron.scalarMul]

theorem sampleEmptyCone3Cert_no_ray
    {v : Cuboctahedron.Vec3 Real}
    (hp0 :
      0 < Cuboctahedron.dot
        (IVec3.toReal sampleEmptyCone3Cert.n0) v)
    (hp1 :
      0 < Cuboctahedron.dot
        (IVec3.toReal sampleEmptyCone3Cert.n1) v)
    (hp2 :
      0 < Cuboctahedron.dot
        (IVec3.toReal sampleEmptyCone3Cert.n2) v) :
    False :=
  sampleEmptyCone3Cert.sound sampleEmptyCone3Cert_checked hp0 hp1 hp2

end Cuboctahedron.Generated.Arithmetic
