import Cuboctahedron.Basic.Vec3
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic

/-!
AP.16BV symbolic Walsh algebra.

AP16BT rejected generated proofs that unfold the full translation geometry
under six sign-bit branches.  AP16BU introduced a fixed quadratic coefficient
surface.  This module adds the next small, reusable algebra layer: affine
Walsh forms in the six translation sign bits and multiplication into a
quadratic coefficient record.

The intended production bridge is:

1. compute prefix normals and translation vectors into affine Walsh forms;
2. form denominators by affine multiplication/dot products;
3. compare the resulting small coefficient records to generated
   `WalshQuadratic` data.

This keeps Lean away from rank/mask replay and away from broad `totalAff`
unfolding under Boolean branches.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

structure WalshAffine where
  c : Rat
  y : Rat
  z : Rat
  d111 : Rat
  d11m : Rat
  d1m1 : Rat
  dm11 : Rat
deriving Repr

def WalshAffine.eval (a : WalshAffine) (mask : SignMask) : Rat :=
  a.c +
  a.y * SignBit.value mask SignBit.y +
  a.z * SignBit.value mask SignBit.z +
  a.d111 * SignBit.value mask SignBit.d111 +
  a.d11m * SignBit.value mask SignBit.d11m +
  a.d1m1 * SignBit.value mask SignBit.d1m1 +
  a.dm11 * SignBit.value mask SignBit.dm11

def WalshAffine.mul (a b : WalshAffine) : WalshQuadratic where
  c := a.c * b.c + a.y * b.y + a.z * b.z + a.d111 * b.d111 +
    a.d11m * b.d11m + a.d1m1 * b.d1m1 + a.dm11 * b.dm11
  y := a.c * b.y + a.y * b.c
  z := a.c * b.z + a.z * b.c
  d111 := a.c * b.d111 + a.d111 * b.c
  d11m := a.c * b.d11m + a.d11m * b.c
  d1m1 := a.c * b.d1m1 + a.d1m1 * b.c
  dm11 := a.c * b.dm11 + a.dm11 * b.c
  yz := a.y * b.z + a.z * b.y
  y_d111 := a.y * b.d111 + a.d111 * b.y
  y_d11m := a.y * b.d11m + a.d11m * b.y
  y_d1m1 := a.y * b.d1m1 + a.d1m1 * b.y
  y_dm11 := a.y * b.dm11 + a.dm11 * b.y
  z_d111 := a.z * b.d111 + a.d111 * b.z
  z_d11m := a.z * b.d11m + a.d11m * b.z
  z_d1m1 := a.z * b.d1m1 + a.d1m1 * b.z
  z_dm11 := a.z * b.dm11 + a.dm11 * b.z
  d111_d11m := a.d111 * b.d11m + a.d11m * b.d111
  d111_d1m1 := a.d111 * b.d1m1 + a.d1m1 * b.d111
  d111_dm11 := a.d111 * b.dm11 + a.dm11 * b.d111
  d11m_d1m1 := a.d11m * b.d1m1 + a.d1m1 * b.d11m
  d11m_dm11 := a.d11m * b.dm11 + a.dm11 * b.d11m
  d1m1_dm11 := a.d1m1 * b.dm11 + a.dm11 * b.d1m1

theorem WalshAffine.mul_coeffEval
    (a b : WalshAffine) (mask : SignMask) :
    (WalshAffine.mul a b).coeffEval mask = a.eval mask * b.eval mask := by
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> simp [WalshAffine.mul, WalshQuadratic.coeffEval, WalshAffine.eval,
      SignBit.value, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1,
      h_dm11]
    <;> ring

def WalshQuadratic.add (q r : WalshQuadratic) : WalshQuadratic where
  c := q.c + r.c
  y := q.y + r.y
  z := q.z + r.z
  d111 := q.d111 + r.d111
  d11m := q.d11m + r.d11m
  d1m1 := q.d1m1 + r.d1m1
  dm11 := q.dm11 + r.dm11
  yz := q.yz + r.yz
  y_d111 := q.y_d111 + r.y_d111
  y_d11m := q.y_d11m + r.y_d11m
  y_d1m1 := q.y_d1m1 + r.y_d1m1
  y_dm11 := q.y_dm11 + r.y_dm11
  z_d111 := q.z_d111 + r.z_d111
  z_d11m := q.z_d11m + r.z_d11m
  z_d1m1 := q.z_d1m1 + r.z_d1m1
  z_dm11 := q.z_dm11 + r.z_dm11
  d111_d11m := q.d111_d11m + r.d111_d11m
  d111_d1m1 := q.d111_d1m1 + r.d111_d1m1
  d111_dm11 := q.d111_dm11 + r.d111_dm11
  d11m_d1m1 := q.d11m_d1m1 + r.d11m_d1m1
  d11m_dm11 := q.d11m_dm11 + r.d11m_dm11
  d1m1_dm11 := q.d1m1_dm11 + r.d1m1_dm11

theorem WalshQuadratic.add_coeffEval
    (q r : WalshQuadratic) (mask : SignMask) :
    (WalshQuadratic.add q r).coeffEval mask =
      q.coeffEval mask + r.coeffEval mask := by
  simp [WalshQuadratic.add, WalshQuadratic.coeffEval]
  ring

structure WalshAffineVec3 where
  x : WalshAffine
  y : WalshAffine
  z : WalshAffine
deriving Repr

def WalshAffineVec3.eval (v : WalshAffineVec3) (mask : SignMask) :
    Vec3 Rat where
  x := v.x.eval mask
  y := v.y.eval mask
  z := v.z.eval mask

def WalshAffineVec3.dot (a b : WalshAffineVec3) : WalshQuadratic :=
  WalshQuadratic.add
    (WalshQuadratic.add (WalshAffine.mul a.x b.x) (WalshAffine.mul a.y b.y))
    (WalshAffine.mul a.z b.z)

theorem WalshAffineVec3.dot_coeffEval
    (a b : WalshAffineVec3) (mask : SignMask) :
    (WalshAffineVec3.dot a b).coeffEval mask =
      Cuboctahedron.dot (a.eval mask) (b.eval mask) := by
  simp [WalshAffineVec3.dot, WalshAffineVec3.eval, Cuboctahedron.dot,
    WalshQuadratic.add_coeffEval, WalshAffine.mul_coeffEval]

theorem impactSubcubeWalshSymbolic_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
