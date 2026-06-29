import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic

/-!
Integer-scaled Walsh quadratic coefficient certificates.

Generated weighted-denominator leaves should not replay the translation Walsh
recurrence.  Instead, they can emit a compact integer coefficient record with a
positive scale and prove sign facts about the integer evaluator.  This module
provides the reusable bridge from that integer evaluator back to the rational
`WalshQuadratic.coeffEval` surface.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

set_option maxHeartbeats 0

def SignBit.intValue (mask : SignMask) (bit : SignBit) : Int :=
  if maskBitForPair mask bit.toPairId then 1 else -1

@[ext]
theorem WalshQuadratic.ext
    {q r : WalshQuadratic}
    (hc : q.c = r.c)
    (hy : q.y = r.y)
    (hz : q.z = r.z)
    (hd111 : q.d111 = r.d111)
    (hd11m : q.d11m = r.d11m)
    (hd1m1 : q.d1m1 = r.d1m1)
    (hdm11 : q.dm11 = r.dm11)
    (hyz : q.yz = r.yz)
    (hy_d111 : q.y_d111 = r.y_d111)
    (hy_d11m : q.y_d11m = r.y_d11m)
    (hy_d1m1 : q.y_d1m1 = r.y_d1m1)
    (hy_dm11 : q.y_dm11 = r.y_dm11)
    (hz_d111 : q.z_d111 = r.z_d111)
    (hz_d11m : q.z_d11m = r.z_d11m)
    (hz_d1m1 : q.z_d1m1 = r.z_d1m1)
    (hz_dm11 : q.z_dm11 = r.z_dm11)
    (hd111_d11m : q.d111_d11m = r.d111_d11m)
    (hd111_d1m1 : q.d111_d1m1 = r.d111_d1m1)
    (hd111_dm11 : q.d111_dm11 = r.d111_dm11)
    (hd11m_d1m1 : q.d11m_d1m1 = r.d11m_d1m1)
    (hd11m_dm11 : q.d11m_dm11 = r.d11m_dm11)
    (hd1m1_dm11 : q.d1m1_dm11 = r.d1m1_dm11) :
    q = r := by
  cases q
  cases r
  simp_all

/-- A Walsh quadratic whose rational coefficients are all divided by `scale`. -/
structure ScaledWalshQuadratic where
  scale : Nat
  c : Int
  y : Int
  z : Int
  d111 : Int
  d11m : Int
  d1m1 : Int
  dm11 : Int
  yz : Int
  y_d111 : Int
  y_d11m : Int
  y_d1m1 : Int
  y_dm11 : Int
  z_d111 : Int
  z_d11m : Int
  z_d1m1 : Int
  z_dm11 : Int
  d111_d11m : Int
  d111_d1m1 : Int
  d111_dm11 : Int
  d11m_d1m1 : Int
  d11m_dm11 : Int
  d1m1_dm11 : Int
deriving Repr

def ScaledWalshQuadratic.coeffRat
    (q : ScaledWalshQuadratic) (n : Int) : Rat :=
  (n : Rat) / (q.scale : Rat)

def ScaledWalshQuadratic.toQuadratic
    (q : ScaledWalshQuadratic) : WalshQuadratic where
  c := q.coeffRat q.c
  y := q.coeffRat q.y
  z := q.coeffRat q.z
  d111 := q.coeffRat q.d111
  d11m := q.coeffRat q.d11m
  d1m1 := q.coeffRat q.d1m1
  dm11 := q.coeffRat q.dm11
  yz := q.coeffRat q.yz
  y_d111 := q.coeffRat q.y_d111
  y_d11m := q.coeffRat q.y_d11m
  y_d1m1 := q.coeffRat q.y_d1m1
  y_dm11 := q.coeffRat q.y_dm11
  z_d111 := q.coeffRat q.z_d111
  z_d11m := q.coeffRat q.z_d11m
  z_d1m1 := q.coeffRat q.z_d1m1
  z_dm11 := q.coeffRat q.z_dm11
  d111_d11m := q.coeffRat q.d111_d11m
  d111_d1m1 := q.coeffRat q.d111_d1m1
  d111_dm11 := q.coeffRat q.d111_dm11
  d11m_d1m1 := q.coeffRat q.d11m_d1m1
  d11m_dm11 := q.coeffRat q.d11m_dm11
  d1m1_dm11 := q.coeffRat q.d1m1_dm11

theorem rat_eq_div_of_mul_eq_nat_scale
    {scale : Nat} (hscale : 0 < scale) {a : Rat} {n : Int}
    (h : a * (scale : Rat) = (n : Rat)) :
    a = (n : Rat) / (scale : Rat) := by
  have hs : (scale : Rat) ≠ 0 := by
    exact_mod_cast (ne_of_gt hscale)
  apply (mul_right_inj' hs).mp
  rw [mul_comm (scale : Rat) a, h]
  field_simp [hs]

theorem ScaledWalshQuadratic.toQuadratic_eq_of_scaled_coeffs
    (q : ScaledWalshQuadratic) (hscale : 0 < q.scale)
    {p : WalshQuadratic}
    (hc : p.c * (q.scale : Rat) = (q.c : Rat))
    (hy : p.y * (q.scale : Rat) = (q.y : Rat))
    (hz : p.z * (q.scale : Rat) = (q.z : Rat))
    (hd111 : p.d111 * (q.scale : Rat) = (q.d111 : Rat))
    (hd11m : p.d11m * (q.scale : Rat) = (q.d11m : Rat))
    (hd1m1 : p.d1m1 * (q.scale : Rat) = (q.d1m1 : Rat))
    (hdm11 : p.dm11 * (q.scale : Rat) = (q.dm11 : Rat))
    (hyz : p.yz * (q.scale : Rat) = (q.yz : Rat))
    (hy_d111 : p.y_d111 * (q.scale : Rat) = (q.y_d111 : Rat))
    (hy_d11m : p.y_d11m * (q.scale : Rat) = (q.y_d11m : Rat))
    (hy_d1m1 : p.y_d1m1 * (q.scale : Rat) = (q.y_d1m1 : Rat))
    (hy_dm11 : p.y_dm11 * (q.scale : Rat) = (q.y_dm11 : Rat))
    (hz_d111 : p.z_d111 * (q.scale : Rat) = (q.z_d111 : Rat))
    (hz_d11m : p.z_d11m * (q.scale : Rat) = (q.z_d11m : Rat))
    (hz_d1m1 : p.z_d1m1 * (q.scale : Rat) = (q.z_d1m1 : Rat))
    (hz_dm11 : p.z_dm11 * (q.scale : Rat) = (q.z_dm11 : Rat))
    (hd111_d11m : p.d111_d11m * (q.scale : Rat) = (q.d111_d11m : Rat))
    (hd111_d1m1 : p.d111_d1m1 * (q.scale : Rat) = (q.d111_d1m1 : Rat))
    (hd111_dm11 : p.d111_dm11 * (q.scale : Rat) = (q.d111_dm11 : Rat))
    (hd11m_d1m1 : p.d11m_d1m1 * (q.scale : Rat) = (q.d11m_d1m1 : Rat))
    (hd11m_dm11 : p.d11m_dm11 * (q.scale : Rat) = (q.d11m_dm11 : Rat))
    (hd1m1_dm11 : p.d1m1_dm11 * (q.scale : Rat) = (q.d1m1_dm11 : Rat)) :
    p = q.toQuadratic := by
  apply WalshQuadratic.ext
  · change p.c = (q.c : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hc
  · change p.y = (q.y : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hy
  · change p.z = (q.z : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hz
  · change p.d111 = (q.d111 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd111
  · change p.d11m = (q.d11m : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd11m
  · change p.d1m1 = (q.d1m1 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd1m1
  · change p.dm11 = (q.dm11 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hdm11
  · change p.yz = (q.yz : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hyz
  · change p.y_d111 = (q.y_d111 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hy_d111
  · change p.y_d11m = (q.y_d11m : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hy_d11m
  · change p.y_d1m1 = (q.y_d1m1 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hy_d1m1
  · change p.y_dm11 = (q.y_dm11 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hy_dm11
  · change p.z_d111 = (q.z_d111 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hz_d111
  · change p.z_d11m = (q.z_d11m : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hz_d11m
  · change p.z_d1m1 = (q.z_d1m1 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hz_d1m1
  · change p.z_dm11 = (q.z_dm11 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hz_dm11
  · change p.d111_d11m = (q.d111_d11m : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd111_d11m
  · change p.d111_d1m1 = (q.d111_d1m1 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd111_d1m1
  · change p.d111_dm11 = (q.d111_dm11 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd111_dm11
  · change p.d11m_d1m1 = (q.d11m_d1m1 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd11m_d1m1
  · change p.d11m_dm11 = (q.d11m_dm11 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd11m_dm11
  · change p.d1m1_dm11 = (q.d1m1_dm11 : Rat) / (q.scale : Rat)
    exact rat_eq_div_of_mul_eq_nat_scale hscale hd1m1_dm11

def ScaledWalshQuadratic.intEval
    (q : ScaledWalshQuadratic) (mask : SignMask) : Int :=
  q.c +
  q.y * SignBit.intValue mask SignBit.y +
  q.z * SignBit.intValue mask SignBit.z +
  q.d111 * SignBit.intValue mask SignBit.d111 +
  q.d11m * SignBit.intValue mask SignBit.d11m +
  q.d1m1 * SignBit.intValue mask SignBit.d1m1 +
  q.dm11 * SignBit.intValue mask SignBit.dm11 +
  q.yz * SignBit.intValue mask SignBit.y *
    SignBit.intValue mask SignBit.z +
  q.y_d111 * SignBit.intValue mask SignBit.y *
    SignBit.intValue mask SignBit.d111 +
  q.y_d11m * SignBit.intValue mask SignBit.y *
    SignBit.intValue mask SignBit.d11m +
  q.y_d1m1 * SignBit.intValue mask SignBit.y *
    SignBit.intValue mask SignBit.d1m1 +
  q.y_dm11 * SignBit.intValue mask SignBit.y *
    SignBit.intValue mask SignBit.dm11 +
  q.z_d111 * SignBit.intValue mask SignBit.z *
    SignBit.intValue mask SignBit.d111 +
  q.z_d11m * SignBit.intValue mask SignBit.z *
    SignBit.intValue mask SignBit.d11m +
  q.z_d1m1 * SignBit.intValue mask SignBit.z *
    SignBit.intValue mask SignBit.d1m1 +
  q.z_dm11 * SignBit.intValue mask SignBit.z *
    SignBit.intValue mask SignBit.dm11 +
  q.d111_d11m * SignBit.intValue mask SignBit.d111 *
    SignBit.intValue mask SignBit.d11m +
  q.d111_d1m1 * SignBit.intValue mask SignBit.d111 *
    SignBit.intValue mask SignBit.d1m1 +
  q.d111_dm11 * SignBit.intValue mask SignBit.d111 *
    SignBit.intValue mask SignBit.dm11 +
  q.d11m_d1m1 * SignBit.intValue mask SignBit.d11m *
    SignBit.intValue mask SignBit.d1m1 +
  q.d11m_dm11 * SignBit.intValue mask SignBit.d11m *
    SignBit.intValue mask SignBit.dm11 +
  q.d1m1_dm11 * SignBit.intValue mask SignBit.d1m1 *
    SignBit.intValue mask SignBit.dm11

theorem ScaledWalshQuadratic.coeffEval_eq_intEval_div
    (q : ScaledWalshQuadratic) (mask : SignMask) :
    q.toQuadratic.coeffEval mask =
      (q.intEval mask : Rat) / (q.scale : Rat) := by
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> simp [ScaledWalshQuadratic.toQuadratic,
      ScaledWalshQuadratic.coeffRat, ScaledWalshQuadratic.intEval,
      WalshQuadratic.coeffEval, SignBit.value, SignBit.intValue,
      SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]
    <;> ring

theorem ScaledWalshQuadratic.coeffEval_nonpos_of_intEval_nonpos
    (q : ScaledWalshQuadratic) (hscale : 0 < q.scale)
    {mask : SignMask}
    (h : q.intEval mask <= 0) :
    q.toQuadratic.coeffEval mask <= 0 := by
  rw [q.coeffEval_eq_intEval_div]
  have hnum : ((q.intEval mask : Int) : Rat) <= 0 := by
    exact_mod_cast h
  have hden : (0 : Rat) <= (q.scale : Rat) := by
    exact_mod_cast (le_of_lt hscale)
  exact div_nonpos_of_nonpos_of_nonneg hnum hden

theorem weightedCoeffCertificate_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
