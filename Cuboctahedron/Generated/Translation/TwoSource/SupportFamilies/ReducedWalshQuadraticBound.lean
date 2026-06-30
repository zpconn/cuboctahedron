import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic
import Mathlib.Tactic.Linarith

/-!
Reduced Walsh quadratic bounds over Boolean subcubes.

Generated weighted-denominator leaves often become small after substituting the
cube's fixed sign bits and collecting cancellations.  This module provides the
hand-written proof layer for that shape:

* a reduced quadratic agrees with the original on a subcube;
* `constant + sum(abs(nonconstant coefficients)) <= 0` proves the reduced
  quadratic is nonpositive on the subcube;
* a tiny split tree can handle the rare cube where one further fixed bit is
  needed.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

def MaskSubcube.withFixed
    (cube : MaskSubcube) (bit : SignBit) (value : Bool) : MaskSubcube where
  fixed query :=
    if query = bit then some value else cube.fixed query

theorem MaskSubcube.member_withFixed
    {cube : MaskSubcube} {bit : SignBit} {value : Bool}
    {mask : SignMask}
    (hmember : cube.Member mask)
    (hbit : maskBitForPair mask bit.toPairId = value) :
    (cube.withFixed bit value).Member mask := by
  intro query
  by_cases hquery : query = bit
  · subst query
    simpa [MaskSubcube.withFixed, hbit]
  · simpa [MaskSubcube.withFixed, hquery] using hmember query

def WalshQuadratic.absBoundSum (q : WalshQuadratic) : Rat :=
  q.c +
    |q.y| + |q.z| + |q.d111| + |q.d11m| + |q.d1m1| + |q.dm11| +
    |q.yz| + |q.y_d111| + |q.y_d11m| + |q.y_d1m1| + |q.y_dm11| +
    |q.z_d111| + |q.z_d11m| + |q.z_d1m1| + |q.z_dm11| +
    |q.d111_d11m| + |q.d111_d1m1| + |q.d111_dm11| +
    |q.d11m_d1m1| + |q.d11m_dm11| + |q.d1m1_dm11|

theorem SignBit.value_eq_one_or_neg_one (mask : SignMask) (bit : SignBit) :
    SignBit.value mask bit = 1 ∨ SignBit.value mask bit = -1 := by
  unfold SignBit.value
  by_cases h : maskBitForPair mask bit.toPairId
  · simp [h]
  · simp [h]

theorem rat_mul_sign_le_abs
    (a s : Rat) (hs : s = 1 ∨ s = -1) :
    a * s <= |a| := by
  rcases hs with rfl | rfl
  · simpa using le_abs_self a
  · simpa using neg_le_abs a

theorem rat_mul_two_signs_le_abs
    (a s t : Rat)
    (hs : s = 1 ∨ s = -1)
    (ht : t = 1 ∨ t = -1) :
    a * s * t <= |a| := by
  rcases hs with rfl | rfl <;> rcases ht with rfl | rfl
  · simpa using le_abs_self a
  · simpa using neg_le_abs a
  · simpa using neg_le_abs a
  · simpa using le_abs_self a

theorem WalshQuadratic.coeffEval_le_absBoundSum
    (q : WalshQuadratic) (mask : SignMask) :
    q.coeffEval mask <= q.absBoundSum := by
  have hy := rat_mul_sign_le_abs q.y
    (SignBit.value mask SignBit.y)
    (SignBit.value_eq_one_or_neg_one mask SignBit.y)
  have hz := rat_mul_sign_le_abs q.z
    (SignBit.value mask SignBit.z)
    (SignBit.value_eq_one_or_neg_one mask SignBit.z)
  have hd111 := rat_mul_sign_le_abs q.d111
    (SignBit.value mask SignBit.d111)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d111)
  have hd11m := rat_mul_sign_le_abs q.d11m
    (SignBit.value mask SignBit.d11m)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d11m)
  have hd1m1 := rat_mul_sign_le_abs q.d1m1
    (SignBit.value mask SignBit.d1m1)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d1m1)
  have hdm11 := rat_mul_sign_le_abs q.dm11
    (SignBit.value mask SignBit.dm11)
    (SignBit.value_eq_one_or_neg_one mask SignBit.dm11)
  have hyz := rat_mul_two_signs_le_abs q.yz
    (SignBit.value mask SignBit.y)
    (SignBit.value mask SignBit.z)
    (SignBit.value_eq_one_or_neg_one mask SignBit.y)
    (SignBit.value_eq_one_or_neg_one mask SignBit.z)
  have hy_d111 := rat_mul_two_signs_le_abs q.y_d111
    (SignBit.value mask SignBit.y)
    (SignBit.value mask SignBit.d111)
    (SignBit.value_eq_one_or_neg_one mask SignBit.y)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d111)
  have hy_d11m := rat_mul_two_signs_le_abs q.y_d11m
    (SignBit.value mask SignBit.y)
    (SignBit.value mask SignBit.d11m)
    (SignBit.value_eq_one_or_neg_one mask SignBit.y)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d11m)
  have hy_d1m1 := rat_mul_two_signs_le_abs q.y_d1m1
    (SignBit.value mask SignBit.y)
    (SignBit.value mask SignBit.d1m1)
    (SignBit.value_eq_one_or_neg_one mask SignBit.y)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d1m1)
  have hy_dm11 := rat_mul_two_signs_le_abs q.y_dm11
    (SignBit.value mask SignBit.y)
    (SignBit.value mask SignBit.dm11)
    (SignBit.value_eq_one_or_neg_one mask SignBit.y)
    (SignBit.value_eq_one_or_neg_one mask SignBit.dm11)
  have hz_d111 := rat_mul_two_signs_le_abs q.z_d111
    (SignBit.value mask SignBit.z)
    (SignBit.value mask SignBit.d111)
    (SignBit.value_eq_one_or_neg_one mask SignBit.z)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d111)
  have hz_d11m := rat_mul_two_signs_le_abs q.z_d11m
    (SignBit.value mask SignBit.z)
    (SignBit.value mask SignBit.d11m)
    (SignBit.value_eq_one_or_neg_one mask SignBit.z)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d11m)
  have hz_d1m1 := rat_mul_two_signs_le_abs q.z_d1m1
    (SignBit.value mask SignBit.z)
    (SignBit.value mask SignBit.d1m1)
    (SignBit.value_eq_one_or_neg_one mask SignBit.z)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d1m1)
  have hz_dm11 := rat_mul_two_signs_le_abs q.z_dm11
    (SignBit.value mask SignBit.z)
    (SignBit.value mask SignBit.dm11)
    (SignBit.value_eq_one_or_neg_one mask SignBit.z)
    (SignBit.value_eq_one_or_neg_one mask SignBit.dm11)
  have hd111_d11m := rat_mul_two_signs_le_abs q.d111_d11m
    (SignBit.value mask SignBit.d111)
    (SignBit.value mask SignBit.d11m)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d111)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d11m)
  have hd111_d1m1 := rat_mul_two_signs_le_abs q.d111_d1m1
    (SignBit.value mask SignBit.d111)
    (SignBit.value mask SignBit.d1m1)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d111)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d1m1)
  have hd111_dm11 := rat_mul_two_signs_le_abs q.d111_dm11
    (SignBit.value mask SignBit.d111)
    (SignBit.value mask SignBit.dm11)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d111)
    (SignBit.value_eq_one_or_neg_one mask SignBit.dm11)
  have hd11m_d1m1 := rat_mul_two_signs_le_abs q.d11m_d1m1
    (SignBit.value mask SignBit.d11m)
    (SignBit.value mask SignBit.d1m1)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d11m)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d1m1)
  have hd11m_dm11 := rat_mul_two_signs_le_abs q.d11m_dm11
    (SignBit.value mask SignBit.d11m)
    (SignBit.value mask SignBit.dm11)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d11m)
    (SignBit.value_eq_one_or_neg_one mask SignBit.dm11)
  have hd1m1_dm11 := rat_mul_two_signs_le_abs q.d1m1_dm11
    (SignBit.value mask SignBit.d1m1)
    (SignBit.value mask SignBit.dm11)
    (SignBit.value_eq_one_or_neg_one mask SignBit.d1m1)
    (SignBit.value_eq_one_or_neg_one mask SignBit.dm11)
  dsimp [WalshQuadratic.coeffEval, WalshQuadratic.absBoundSum]
  linarith

structure WalshQuadraticReducedAbsBound
    (cube : MaskSubcube) (q : WalshQuadratic) where
  reduced : WalshQuadratic
  eq_on_cube :
    forall {mask : SignMask}, cube.Member mask ->
      q.coeffEval mask = reduced.coeffEval mask
  abs_bound_nonpos : reduced.absBoundSum <= 0

theorem WalshQuadraticReducedAbsBound.coeffEval_nonpos
    {cube : MaskSubcube} {q : WalshQuadratic}
    (cert : WalshQuadraticReducedAbsBound cube q)
    {mask : SignMask} (hmask : cube.Member mask) :
    q.coeffEval mask <= 0 := by
  rw [cert.eq_on_cube hmask]
  exact le_trans (cert.reduced.coeffEval_le_absBoundSum mask)
    cert.abs_bound_nonpos

inductive WalshQuadraticCubeBound : MaskSubcube -> WalshQuadratic -> Type where
  | leaf {cube : MaskSubcube} {q : WalshQuadratic}
      (cert : WalshQuadraticReducedAbsBound cube q) :
      WalshQuadraticCubeBound cube q
  | split {cube : MaskSubcube} {q : WalshQuadratic}
      (bit : SignBit)
      (low : WalshQuadraticCubeBound (cube.withFixed bit false) q)
      (high : WalshQuadraticCubeBound (cube.withFixed bit true) q) :
      WalshQuadraticCubeBound cube q

theorem WalshQuadraticCubeBound.coeffEval_nonpos
    {cube : MaskSubcube} {q : WalshQuadratic}
    (cert : WalshQuadraticCubeBound cube q)
    {mask : SignMask} (hmask : cube.Member mask) :
    q.coeffEval mask <= 0 := by
  induction cert generalizing mask with
  | leaf cert =>
      exact cert.coeffEval_nonpos hmask
  | split bit low high ihLow ihHigh =>
      by_cases hbit : maskBitForPair mask bit.toPairId
      · exact ihHigh (MaskSubcube.member_withFixed hmask (by simpa [hbit]))
      · exact ihLow (MaskSubcube.member_withFixed hmask (by simpa [hbit]))

theorem reducedWalshQuadraticBound_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
