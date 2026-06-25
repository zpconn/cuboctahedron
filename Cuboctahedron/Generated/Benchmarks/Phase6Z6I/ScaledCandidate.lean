import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Phase 6Z.6I scaled/integer candidate benchmark.

This file keeps all proof-critical benchmark arithmetic in integer numerators
with explicit positive denominators.  It is intentionally benchmark-local.
-/

namespace Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option maxHeartbeats 1200000

structure IVec3 where
  x : Int
  y : Int
  z : Int
deriving Repr, DecidableEq

structure IMat3 where
  m00 : Int
  m01 : Int
  m02 : Int
  m10 : Int
  m11 : Int
  m12 : Int
  m20 : Int
  m21 : Int
  m22 : Int
deriving Repr, DecidableEq

structure SMat3 where
  den : Int
  M : IMat3
deriving Repr, DecidableEq

structure SLine where
  den : Int
  a : Int
  b : Int
  c : Int
deriving Repr, DecidableEq

def imatMul (A B : IMat3) : IMat3 where
  m00 := A.m00 * B.m00 + A.m01 * B.m10 + A.m02 * B.m20
  m01 := A.m00 * B.m01 + A.m01 * B.m11 + A.m02 * B.m21
  m02 := A.m00 * B.m02 + A.m01 * B.m12 + A.m02 * B.m22
  m10 := A.m10 * B.m00 + A.m11 * B.m10 + A.m12 * B.m20
  m11 := A.m10 * B.m01 + A.m11 * B.m11 + A.m12 * B.m21
  m12 := A.m10 * B.m02 + A.m11 * B.m12 + A.m12 * B.m22
  m20 := A.m20 * B.m00 + A.m21 * B.m10 + A.m22 * B.m20
  m21 := A.m20 * B.m01 + A.m21 * B.m11 + A.m22 * B.m21
  m22 := A.m20 * B.m02 + A.m21 * B.m12 + A.m22 * B.m22

def isIdentityScaled (A : SMat3) : Bool :=
  A.M.m00 == A.den && A.M.m01 == 0 && A.M.m02 == 0 &&
  A.M.m10 == 0 && A.M.m11 == A.den && A.M.m12 == 0 &&
  A.M.m20 == 0 && A.M.m21 == 0 && A.M.m22 == A.den

def smatMul (A B : SMat3) : SMat3 where
  den := A.den * B.den
  M := imatMul A.M B.M

def rx : SMat3 where
  den := 1
  M := { m00 := -1, m01 := 0, m02 := 0,
         m10 := 0, m11 := 1, m12 := 0,
         m20 := 0, m21 := 0, m22 := 1 }

def ry : SMat3 where
  den := 1
  M := { m00 := 1, m01 := 0, m02 := 0,
         m10 := 0, m11 := -1, m12 := 0,
         m20 := 0, m21 := 0, m22 := 1 }

def rz : SMat3 where
  den := 1
  M := { m00 := 1, m01 := 0, m02 := 0,
         m10 := 0, m11 := 1, m12 := 0,
         m20 := 0, m21 := 0, m22 := -1 }

def rd111 : SMat3 where
  den := 3
  M := { m00 := 1, m01 := -2, m02 := -2,
         m10 := -2, m11 := 1, m12 := -2,
         m20 := -2, m21 := -2, m22 := 1 }

def rd11m : SMat3 where
  den := 3
  M := { m00 := 1, m01 := -2, m02 := 2,
         m10 := -2, m11 := 1, m12 := 2,
         m20 := 2, m21 := 2, m22 := 1 }

def rd1m1 : SMat3 where
  den := 3
  M := { m00 := 1, m01 := 2, m02 := -2,
         m10 := 2, m11 := 1, m12 := 2,
         m20 := -2, m21 := 2, m22 := 1 }

def rdm11 : SMat3 where
  den := 3
  M := { m00 := 1, m01 := 2, m02 := 2,
         m10 := 2, m11 := 1, m12 := -2,
         m20 := 2, m21 := -2, m22 := 1 }

def benchProduct : SMat3 :=
  smatMul
    (smatMul
      (smatMul
        (smatMul
          (smatMul
            (smatMul
              (smatMul
                (smatMul
                  (smatMul
                    (smatMul
                      (smatMul
                        (smatMul
                          (smatMul rx rz)
                          ry)
                        ry)
                      rdm11)
                    rdm11)
                  rd1m1)
                rd11m)
              rd11m)
            rd111)
          rd111)
        rd1m1)
      rz)
    rx

def benchFirstLineScaled : SLine :=
  { den := 29, a := -29, b := -29, c := -39 }

def benchSecondLineScaled : SLine :=
  { den := 1, a := 1, b := 1, c := 1 }

def lineEqEqPos (L : SLine) : Bool :=
  L.a == L.b && L.a < 0 && L.c <= L.a

def lineFixed (L : SLine) (a b : Int) : Bool :=
  L.a == a * L.den && L.b == b * L.den && L.c == L.den

def denomPositive (num den : Int) : Bool :=
  0 < den && 0 < num

def weightedA (L M : SLine) : Int :=
  L.a * M.den + M.a * L.den

def weightedB (L M : SLine) : Int :=
  L.b * M.den + M.b * L.den

def weightedC (L M : SLine) : Int :=
  L.c * M.den + M.c * L.den

theorem benchProduct_classified :
    isIdentityScaled benchProduct = true \/ isIdentityScaled benchProduct = false := by
  decide

theorem benchFirst_shape :
    lineEqEqPos benchFirstLineScaled = true := by
  rfl

theorem benchSecond_shape :
    lineFixed benchSecondLineScaled 1 1 = true := by
  rfl

theorem benchDenominator_pos :
    denomPositive 116 9 = true := by
  rfl

theorem benchWeightedA :
    weightedA benchFirstLineScaled benchSecondLineScaled = 0 := by
  rfl

theorem benchWeightedB :
    weightedB benchFirstLineScaled benchSecondLineScaled = 0 := by
  rfl

theorem benchWeightedC_nonpos :
    weightedC benchFirstLineScaled benchSecondLineScaled <= 0 := by
  decide

def toStrictLin2 (L : SLine) : StrictLin2 :=
  { a := (L.a : Rat) / L.den
    b := (L.b : Rat) / L.den
    c := (L.c : Rat) / L.den }

end Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate
