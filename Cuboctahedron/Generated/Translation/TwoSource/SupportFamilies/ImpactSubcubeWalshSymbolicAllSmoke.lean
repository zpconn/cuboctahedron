import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic

/-!
AP.16BY generated all-selected-impact symbolic Walsh coefficient smoke.

This generated smoke checks all AP16BS selected impacts for rank `100805`
at the coefficient level.  It intentionally does not unfold
`impactDenomAtRank`, `totalAff`, or `translationChoiceSeq`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

/-- AP16BS rank 100805, impact 1. -/
private def ap16byImpact1_Normal_x : WalshAffine where
  c := -1
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact1_Normal_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact1_Normal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact1_Normal : WalshAffineVec3 where
  x := ap16byImpact1_Normal_x
  y := ap16byImpact1_Normal_y
  z := ap16byImpact1_Normal_z

private def ap16byImpact1_Vector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def ap16byImpact1_Vector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def ap16byImpact1_Vector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def ap16byImpact1_Vector : WalshAffineVec3 where
  x := ap16byImpact1_Vector_x
  y := ap16byImpact1_Vector_y
  z := ap16byImpact1_Vector_z

private def ap16byImpact1_Expected : WalshQuadratic where
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

private theorem ap16byImpact1_dot_coefficients :
    WalshAffineVec3.dot ap16byImpact1_Normal ap16byImpact1_Vector =
      ap16byImpact1_Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16byImpact1_Normal, ap16byImpact1_Vector,
    ap16byImpact1_Expected,
    ap16byImpact1_Normal_x, ap16byImpact1_Normal_y, ap16byImpact1_Normal_z,
    ap16byImpact1_Vector_x, ap16byImpact1_Vector_y, ap16byImpact1_Vector_z]

theorem ap16byImpact1_coeffEval_matches_symbolic_dot (mask : SignMask) :
    ap16byImpact1_Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16byImpact1_Normal.eval mask)
        (ap16byImpact1_Vector.eval mask) := by
  rw [← ap16byImpact1_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16byImpact1_Normal ap16byImpact1_Vector mask

/-- AP16BS rank 100805, impact 2. -/
private def ap16byImpact2_Normal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact2_Normal_y : WalshAffine where
  c := 0
  y := 1
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact2_Normal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact2_Normal : WalshAffineVec3 where
  x := ap16byImpact2_Normal_x
  y := ap16byImpact2_Normal_y
  z := ap16byImpact2_Normal_z

private def ap16byImpact2_Vector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def ap16byImpact2_Vector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def ap16byImpact2_Vector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def ap16byImpact2_Vector : WalshAffineVec3 where
  x := ap16byImpact2_Vector_x
  y := ap16byImpact2_Vector_y
  z := ap16byImpact2_Vector_z

private def ap16byImpact2_Expected : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 16/9
  y_d111 := -56/27
  y_d11m := 40/9
  y_d1m1 := 56/27
  y_dm11 := 8/3
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

private theorem ap16byImpact2_dot_coefficients :
    WalshAffineVec3.dot ap16byImpact2_Normal ap16byImpact2_Vector =
      ap16byImpact2_Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16byImpact2_Normal, ap16byImpact2_Vector,
    ap16byImpact2_Expected,
    ap16byImpact2_Normal_x, ap16byImpact2_Normal_y, ap16byImpact2_Normal_z,
    ap16byImpact2_Vector_x, ap16byImpact2_Vector_y, ap16byImpact2_Vector_z]

theorem ap16byImpact2_coeffEval_matches_symbolic_dot (mask : SignMask) :
    ap16byImpact2_Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16byImpact2_Normal.eval mask)
        (ap16byImpact2_Vector.eval mask) := by
  rw [← ap16byImpact2_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16byImpact2_Normal ap16byImpact2_Vector mask

/-- AP16BS rank 100805, impact 4. -/
private def ap16byImpact4_Normal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def ap16byImpact4_Normal_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def ap16byImpact4_Normal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def ap16byImpact4_Normal : WalshAffineVec3 where
  x := ap16byImpact4_Normal_x
  y := ap16byImpact4_Normal_y
  z := ap16byImpact4_Normal_z

private def ap16byImpact4_Vector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def ap16byImpact4_Vector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def ap16byImpact4_Vector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def ap16byImpact4_Vector : WalshAffineVec3 where
  x := ap16byImpact4_Vector_x
  y := ap16byImpact4_Vector_y
  z := ap16byImpact4_Vector_z

private def ap16byImpact4_Expected : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -4
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 4
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := -4/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := -40/9
  d11m_d1m1 := 0
  d11m_dm11 := 8/3
  d1m1_dm11 := 40/9

private theorem ap16byImpact4_dot_coefficients :
    WalshAffineVec3.dot ap16byImpact4_Normal ap16byImpact4_Vector =
      ap16byImpact4_Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16byImpact4_Normal, ap16byImpact4_Vector,
    ap16byImpact4_Expected,
    ap16byImpact4_Normal_x, ap16byImpact4_Normal_y, ap16byImpact4_Normal_z,
    ap16byImpact4_Vector_x, ap16byImpact4_Vector_y, ap16byImpact4_Vector_z]

theorem ap16byImpact4_coeffEval_matches_symbolic_dot (mask : SignMask) :
    ap16byImpact4_Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16byImpact4_Normal.eval mask)
        (ap16byImpact4_Vector.eval mask) := by
  rw [← ap16byImpact4_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16byImpact4_Normal ap16byImpact4_Vector mask

/-- AP16BS rank 100805, impact 5. -/
private def ap16byImpact5_Normal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1/3
  d1m1 := 0
  dm11 := 0

private def ap16byImpact5_Normal_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 5/3
  d1m1 := 0
  dm11 := 0

private def ap16byImpact5_Normal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1/3
  d1m1 := 0
  dm11 := 0

private def ap16byImpact5_Normal : WalshAffineVec3 where
  x := ap16byImpact5_Normal_x
  y := ap16byImpact5_Normal_y
  z := ap16byImpact5_Normal_z

private def ap16byImpact5_Vector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def ap16byImpact5_Vector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def ap16byImpact5_Vector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def ap16byImpact5_Vector : WalshAffineVec3 where
  x := ap16byImpact5_Vector_x
  y := ap16byImpact5_Vector_y
  z := ap16byImpact5_Vector_z

private def ap16byImpact5_Expected : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 4/3
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 20/3
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := -8/3
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 8/3
  d1m1_dm11 := 0

private theorem ap16byImpact5_dot_coefficients :
    WalshAffineVec3.dot ap16byImpact5_Normal ap16byImpact5_Vector =
      ap16byImpact5_Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16byImpact5_Normal, ap16byImpact5_Vector,
    ap16byImpact5_Expected,
    ap16byImpact5_Normal_x, ap16byImpact5_Normal_y, ap16byImpact5_Normal_z,
    ap16byImpact5_Vector_x, ap16byImpact5_Vector_y, ap16byImpact5_Vector_z]

theorem ap16byImpact5_coeffEval_matches_symbolic_dot (mask : SignMask) :
    ap16byImpact5_Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16byImpact5_Normal.eval mask)
        (ap16byImpact5_Vector.eval mask) := by
  rw [← ap16byImpact5_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16byImpact5_Normal ap16byImpact5_Vector mask

/-- AP16BS rank 100805, impact 6. -/
private def ap16byImpact6_Normal_x : WalshAffine where
  c := 0
  y := 0
  z := -8/9
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact6_Normal_y : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact6_Normal_z : WalshAffine where
  c := 0
  y := 0
  z := 1/9
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact6_Normal : WalshAffineVec3 where
  x := ap16byImpact6_Normal_x
  y := ap16byImpact6_Normal_y
  z := ap16byImpact6_Normal_z

private def ap16byImpact6_Vector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def ap16byImpact6_Vector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def ap16byImpact6_Vector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def ap16byImpact6_Vector : WalshAffineVec3 where
  x := ap16byImpact6_Vector_x
  y := ap16byImpact6_Vector_y
  z := ap16byImpact6_Vector_z

private def ap16byImpact6_Expected : WalshQuadratic where
  c := 4
  y := 0
  z := 32/9
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 16/9
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 8/3
  z_d11m := 8/3
  z_d1m1 := 8/3
  z_dm11 := -8/9
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem ap16byImpact6_dot_coefficients :
    WalshAffineVec3.dot ap16byImpact6_Normal ap16byImpact6_Vector =
      ap16byImpact6_Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16byImpact6_Normal, ap16byImpact6_Vector,
    ap16byImpact6_Expected,
    ap16byImpact6_Normal_x, ap16byImpact6_Normal_y, ap16byImpact6_Normal_z,
    ap16byImpact6_Vector_x, ap16byImpact6_Vector_y, ap16byImpact6_Vector_z]

theorem ap16byImpact6_coeffEval_matches_symbolic_dot (mask : SignMask) :
    ap16byImpact6_Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16byImpact6_Normal.eval mask)
        (ap16byImpact6_Vector.eval mask) := by
  rw [← ap16byImpact6_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16byImpact6_Normal ap16byImpact6_Vector mask

/-- AP16BS rank 100805, impact 8. -/
private def ap16byImpact8_Normal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -13/9
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact8_Normal_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -7/9
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact8_Normal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 5/9
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def ap16byImpact8_Normal : WalshAffineVec3 where
  x := ap16byImpact8_Normal_x
  y := ap16byImpact8_Normal_y
  z := ap16byImpact8_Normal_z

private def ap16byImpact8_Vector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def ap16byImpact8_Vector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def ap16byImpact8_Vector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def ap16byImpact8_Vector : WalshAffineVec3 where
  x := ap16byImpact8_Vector_x
  y := ap16byImpact8_Vector_y
  z := ap16byImpact8_Vector_z

private def ap16byImpact8_Expected : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 52/9
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := -28/9
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := -8/3
  d111_d1m1 := 8/3
  d111_dm11 := -40/9
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem ap16byImpact8_dot_coefficients :
    WalshAffineVec3.dot ap16byImpact8_Normal ap16byImpact8_Vector =
      ap16byImpact8_Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16byImpact8_Normal, ap16byImpact8_Vector,
    ap16byImpact8_Expected,
    ap16byImpact8_Normal_x, ap16byImpact8_Normal_y, ap16byImpact8_Normal_z,
    ap16byImpact8_Vector_x, ap16byImpact8_Vector_y, ap16byImpact8_Vector_z]

theorem ap16byImpact8_coeffEval_matches_symbolic_dot (mask : SignMask) :
    ap16byImpact8_Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16byImpact8_Normal.eval mask)
        (ap16byImpact8_Vector.eval mask) := by
  rw [← ap16byImpact8_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16byImpact8_Normal ap16byImpact8_Vector mask

/-- AP16BS rank 100805, impact 10. -/
private def ap16byImpact10_Normal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -5/9
  dm11 := 0

private def ap16byImpact10_Normal_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 7/9
  dm11 := 0

private def ap16byImpact10_Normal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 13/9
  dm11 := 0

private def ap16byImpact10_Normal : WalshAffineVec3 where
  x := ap16byImpact10_Normal_x
  y := ap16byImpact10_Normal_y
  z := ap16byImpact10_Normal_z

private def ap16byImpact10_Vector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def ap16byImpact10_Vector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def ap16byImpact10_Vector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def ap16byImpact10_Vector : WalshAffineVec3 where
  x := ap16byImpact10_Vector_x
  y := ap16byImpact10_Vector_y
  z := ap16byImpact10_Vector_z

private def ap16byImpact10_Expected : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 20/9
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 28/9
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 8/3
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 0
  d1m1_dm11 := 40/9

private theorem ap16byImpact10_dot_coefficients :
    WalshAffineVec3.dot ap16byImpact10_Normal ap16byImpact10_Vector =
      ap16byImpact10_Expected := by
  norm_num [WalshAffineVec3.dot, WalshQuadratic.add,
    WalshAffine.mul, ap16byImpact10_Normal, ap16byImpact10_Vector,
    ap16byImpact10_Expected,
    ap16byImpact10_Normal_x, ap16byImpact10_Normal_y, ap16byImpact10_Normal_z,
    ap16byImpact10_Vector_x, ap16byImpact10_Vector_y, ap16byImpact10_Vector_z]

theorem ap16byImpact10_coeffEval_matches_symbolic_dot (mask : SignMask) :
    ap16byImpact10_Expected.coeffEval mask =
      Cuboctahedron.dot
        (ap16byImpact10_Normal.eval mask)
        (ap16byImpact10_Vector.eval mask) := by
  rw [← ap16byImpact10_dot_coefficients]
  exact WalshAffineVec3.dot_coeffEval
    ap16byImpact10_Normal ap16byImpact10_Vector mask

theorem impactSubcubeWalshSymbolicAllSmoke_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
