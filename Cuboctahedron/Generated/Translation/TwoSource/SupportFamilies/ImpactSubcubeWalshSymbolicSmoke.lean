import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic

/-!
AP.16BX symbolic Walsh coefficient smoke.

This module checks the AP16BS rank `100805`, impact `1` denominator at the
coefficient level.  It does not unfold `impactDenomAtRank`, `totalAff`, or
`translationChoiceSeq`; those are the heavy reductions rejected by AP16BT.

Instead, it records the exact affine Walsh normal and translation vector
computed externally, forms their dot product through the AP16BW symbolic
algebra, and proves that the resulting `WalshQuadratic` is the AP16BS
coefficient record for impact `1`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

private def zeroAffine : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16bxImpact1Normal : WalshAffineVec3 where
  x := { zeroAffine with c := -1 }
  y := zeroAffine
  z := zeroAffine

private def ap16bxTranslationVector : WalshAffineVec3 where
  x := {
    c := -4
    y := 0
    z := -32/9
    d111 := -104/27
    d11m := -8/9
    d1m1 := -40/27
    dm11 := 8/3
  }
  y := {
    c := 0
    y := 4
    z := 16/9
    d111 := -56/27
    d11m := 40/9
    d1m1 := 56/27
    dm11 := 8/3
  }
  z := {
    c := 0
    y := 0
    z := 4/9
    d111 := 40/27
    d11m := -8/9
    d1m1 := 104/27
    dm11 := 8/3
  }

private def ap16bxImpact1Expected : WalshQuadratic where
  c := 4
  y := 0
  z := 32/9
  d111 := 104/27
  d11m := 8/9
  d1m1 := 40/27
  dm11 := -8/3
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem ap16bxImpact1_dot_coefficients :
    WalshAffineVec3.dot ap16bxImpact1Normal ap16bxTranslationVector =
      ap16bxImpact1Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16bxImpact1Normal, ap16bxTranslationVector,
    ap16bxImpact1Expected, zeroAffine]

theorem ap16bxImpact1_coeffEval_matches_symbolic_dot
    (mask : SignMask) :
    ap16bxImpact1Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16bxImpact1Normal.eval mask)
        (ap16bxTranslationVector.eval mask) := by
  rw [← ap16bxImpact1_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16bxImpact1Normal ap16bxTranslationVector mask

theorem impactSubcubeWalshSymbolicSmoke_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
