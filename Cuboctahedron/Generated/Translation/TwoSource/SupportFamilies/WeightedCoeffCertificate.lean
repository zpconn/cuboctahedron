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
