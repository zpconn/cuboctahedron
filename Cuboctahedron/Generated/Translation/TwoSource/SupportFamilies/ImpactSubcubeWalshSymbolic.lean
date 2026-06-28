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

def WalshQuadratic.coeffEval (q : WalshQuadratic) (mask : SignMask) : Rat :=
  q.c +
  q.y * SignBit.value mask SignBit.y +
  q.z * SignBit.value mask SignBit.z +
  q.d111 * SignBit.value mask SignBit.d111 +
  q.d11m * SignBit.value mask SignBit.d11m +
  q.d1m1 * SignBit.value mask SignBit.d1m1 +
  q.dm11 * SignBit.value mask SignBit.dm11 +
  q.yz * SignBit.value mask SignBit.y * SignBit.value mask SignBit.z +
  q.y_d111 * SignBit.value mask SignBit.y * SignBit.value mask SignBit.d111 +
  q.y_d11m * SignBit.value mask SignBit.y * SignBit.value mask SignBit.d11m +
  q.y_d1m1 * SignBit.value mask SignBit.y * SignBit.value mask SignBit.d1m1 +
  q.y_dm11 * SignBit.value mask SignBit.y * SignBit.value mask SignBit.dm11 +
  q.z_d111 * SignBit.value mask SignBit.z * SignBit.value mask SignBit.d111 +
  q.z_d11m * SignBit.value mask SignBit.z * SignBit.value mask SignBit.d11m +
  q.z_d1m1 * SignBit.value mask SignBit.z * SignBit.value mask SignBit.d1m1 +
  q.z_dm11 * SignBit.value mask SignBit.z * SignBit.value mask SignBit.dm11 +
  q.d111_d11m * SignBit.value mask SignBit.d111 * SignBit.value mask SignBit.d11m +
  q.d111_d1m1 * SignBit.value mask SignBit.d111 * SignBit.value mask SignBit.d1m1 +
  q.d111_dm11 * SignBit.value mask SignBit.d111 * SignBit.value mask SignBit.dm11 +
  q.d11m_d1m1 * SignBit.value mask SignBit.d11m * SignBit.value mask SignBit.d1m1 +
  q.d11m_dm11 * SignBit.value mask SignBit.d11m * SignBit.value mask SignBit.dm11 +
  q.d1m1_dm11 * SignBit.value mask SignBit.d1m1 * SignBit.value mask SignBit.dm11

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

theorem impactSubcubeWalshSymbolic_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
