import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate

/-!
Coefficient facts for Walsh affine-vector dot products.

Generated DU.9BW/DU.9BX dot-data modules still prove
`WalshAffineVec3.dot normal vector = generatedDot` by unfolding the whole dot
product under `norm_num`.  This module exposes the 22 coefficient formulas as
small named definitions and one reconstruction theorem, so future generated
leaves can prove coefficient equations directly.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

namespace WalshAffine

def mul_c (a b : WalshAffine) : Rat :=
  a.c * b.c + a.y * b.y + a.z * b.z + a.d111 * b.d111 +
    a.d11m * b.d11m + a.d1m1 * b.d1m1 + a.dm11 * b.dm11

def mul_y (a b : WalshAffine) : Rat :=
  a.c * b.y + a.y * b.c

def mul_z (a b : WalshAffine) : Rat :=
  a.c * b.z + a.z * b.c

def mul_d111 (a b : WalshAffine) : Rat :=
  a.c * b.d111 + a.d111 * b.c

def mul_d11m (a b : WalshAffine) : Rat :=
  a.c * b.d11m + a.d11m * b.c

def mul_d1m1 (a b : WalshAffine) : Rat :=
  a.c * b.d1m1 + a.d1m1 * b.c

def mul_dm11 (a b : WalshAffine) : Rat :=
  a.c * b.dm11 + a.dm11 * b.c

def mul_yz (a b : WalshAffine) : Rat :=
  a.y * b.z + a.z * b.y

def mul_y_d111 (a b : WalshAffine) : Rat :=
  a.y * b.d111 + a.d111 * b.y

def mul_y_d11m (a b : WalshAffine) : Rat :=
  a.y * b.d11m + a.d11m * b.y

def mul_y_d1m1 (a b : WalshAffine) : Rat :=
  a.y * b.d1m1 + a.d1m1 * b.y

def mul_y_dm11 (a b : WalshAffine) : Rat :=
  a.y * b.dm11 + a.dm11 * b.y

def mul_z_d111 (a b : WalshAffine) : Rat :=
  a.z * b.d111 + a.d111 * b.z

def mul_z_d11m (a b : WalshAffine) : Rat :=
  a.z * b.d11m + a.d11m * b.z

def mul_z_d1m1 (a b : WalshAffine) : Rat :=
  a.z * b.d1m1 + a.d1m1 * b.z

def mul_z_dm11 (a b : WalshAffine) : Rat :=
  a.z * b.dm11 + a.dm11 * b.z

def mul_d111_d11m (a b : WalshAffine) : Rat :=
  a.d111 * b.d11m + a.d11m * b.d111

def mul_d111_d1m1 (a b : WalshAffine) : Rat :=
  a.d111 * b.d1m1 + a.d1m1 * b.d111

def mul_d111_dm11 (a b : WalshAffine) : Rat :=
  a.d111 * b.dm11 + a.dm11 * b.d111

def mul_d11m_d1m1 (a b : WalshAffine) : Rat :=
  a.d11m * b.d1m1 + a.d1m1 * b.d11m

def mul_d11m_dm11 (a b : WalshAffine) : Rat :=
  a.d11m * b.dm11 + a.dm11 * b.d11m

def mul_d1m1_dm11 (a b : WalshAffine) : Rat :=
  a.d1m1 * b.dm11 + a.dm11 * b.d1m1

end WalshAffine

namespace WalshAffineVec3

def dot_c (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_c a.x b.x +
    WalshAffine.mul_c a.y b.y +
    WalshAffine.mul_c a.z b.z

def dot_y (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_y a.x b.x +
    WalshAffine.mul_y a.y b.y +
    WalshAffine.mul_y a.z b.z

def dot_z (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_z a.x b.x +
    WalshAffine.mul_z a.y b.y +
    WalshAffine.mul_z a.z b.z

def dot_d111 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d111 a.x b.x +
    WalshAffine.mul_d111 a.y b.y +
    WalshAffine.mul_d111 a.z b.z

def dot_d11m (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d11m a.x b.x +
    WalshAffine.mul_d11m a.y b.y +
    WalshAffine.mul_d11m a.z b.z

def dot_d1m1 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d1m1 a.x b.x +
    WalshAffine.mul_d1m1 a.y b.y +
    WalshAffine.mul_d1m1 a.z b.z

def dot_dm11 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_dm11 a.x b.x +
    WalshAffine.mul_dm11 a.y b.y +
    WalshAffine.mul_dm11 a.z b.z

def dot_yz (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_yz a.x b.x +
    WalshAffine.mul_yz a.y b.y +
    WalshAffine.mul_yz a.z b.z

def dot_y_d111 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_y_d111 a.x b.x +
    WalshAffine.mul_y_d111 a.y b.y +
    WalshAffine.mul_y_d111 a.z b.z

def dot_y_d11m (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_y_d11m a.x b.x +
    WalshAffine.mul_y_d11m a.y b.y +
    WalshAffine.mul_y_d11m a.z b.z

def dot_y_d1m1 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_y_d1m1 a.x b.x +
    WalshAffine.mul_y_d1m1 a.y b.y +
    WalshAffine.mul_y_d1m1 a.z b.z

def dot_y_dm11 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_y_dm11 a.x b.x +
    WalshAffine.mul_y_dm11 a.y b.y +
    WalshAffine.mul_y_dm11 a.z b.z

def dot_z_d111 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_z_d111 a.x b.x +
    WalshAffine.mul_z_d111 a.y b.y +
    WalshAffine.mul_z_d111 a.z b.z

def dot_z_d11m (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_z_d11m a.x b.x +
    WalshAffine.mul_z_d11m a.y b.y +
    WalshAffine.mul_z_d11m a.z b.z

def dot_z_d1m1 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_z_d1m1 a.x b.x +
    WalshAffine.mul_z_d1m1 a.y b.y +
    WalshAffine.mul_z_d1m1 a.z b.z

def dot_z_dm11 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_z_dm11 a.x b.x +
    WalshAffine.mul_z_dm11 a.y b.y +
    WalshAffine.mul_z_dm11 a.z b.z

def dot_d111_d11m (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d111_d11m a.x b.x +
    WalshAffine.mul_d111_d11m a.y b.y +
    WalshAffine.mul_d111_d11m a.z b.z

def dot_d111_d1m1 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d111_d1m1 a.x b.x +
    WalshAffine.mul_d111_d1m1 a.y b.y +
    WalshAffine.mul_d111_d1m1 a.z b.z

def dot_d111_dm11 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d111_dm11 a.x b.x +
    WalshAffine.mul_d111_dm11 a.y b.y +
    WalshAffine.mul_d111_dm11 a.z b.z

def dot_d11m_d1m1 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d11m_d1m1 a.x b.x +
    WalshAffine.mul_d11m_d1m1 a.y b.y +
    WalshAffine.mul_d11m_d1m1 a.z b.z

def dot_d11m_dm11 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d11m_dm11 a.x b.x +
    WalshAffine.mul_d11m_dm11 a.y b.y +
    WalshAffine.mul_d11m_dm11 a.z b.z

def dot_d1m1_dm11 (a b : WalshAffineVec3) : Rat :=
  WalshAffine.mul_d1m1_dm11 a.x b.x +
    WalshAffine.mul_d1m1_dm11 a.y b.y +
    WalshAffine.mul_d1m1_dm11 a.z b.z

theorem dot_eq_of_coeffs
    {a b : WalshAffineVec3} {q : WalshQuadratic}
    (hc : dot_c a b = q.c)
    (hy : dot_y a b = q.y)
    (hz : dot_z a b = q.z)
    (hd111 : dot_d111 a b = q.d111)
    (hd11m : dot_d11m a b = q.d11m)
    (hd1m1 : dot_d1m1 a b = q.d1m1)
    (hdm11 : dot_dm11 a b = q.dm11)
    (hyz : dot_yz a b = q.yz)
    (hy_d111 : dot_y_d111 a b = q.y_d111)
    (hy_d11m : dot_y_d11m a b = q.y_d11m)
    (hy_d1m1 : dot_y_d1m1 a b = q.y_d1m1)
    (hy_dm11 : dot_y_dm11 a b = q.y_dm11)
    (hz_d111 : dot_z_d111 a b = q.z_d111)
    (hz_d11m : dot_z_d11m a b = q.z_d11m)
    (hz_d1m1 : dot_z_d1m1 a b = q.z_d1m1)
    (hz_dm11 : dot_z_dm11 a b = q.z_dm11)
    (hd111_d11m : dot_d111_d11m a b = q.d111_d11m)
    (hd111_d1m1 : dot_d111_d1m1 a b = q.d111_d1m1)
    (hd111_dm11 : dot_d111_dm11 a b = q.d111_dm11)
    (hd11m_d1m1 : dot_d11m_d1m1 a b = q.d11m_d1m1)
    (hd11m_dm11 : dot_d11m_dm11 a b = q.d11m_dm11)
    (hd1m1_dm11 : dot_d1m1_dm11 a b = q.d1m1_dm11) :
    WalshAffineVec3.dot a b = q := by
  apply WalshQuadratic.ext
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_c, WalshAffine.mul_c] using hc
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_y, WalshAffine.mul_y] using hy
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_z, WalshAffine.mul_z] using hz
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d111, WalshAffine.mul_d111] using hd111
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d11m, WalshAffine.mul_d11m] using hd11m
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d1m1, WalshAffine.mul_d1m1] using hd1m1
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_dm11, WalshAffine.mul_dm11] using hdm11
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_yz, WalshAffine.mul_yz] using hyz
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_y_d111, WalshAffine.mul_y_d111] using hy_d111
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_y_d11m, WalshAffine.mul_y_d11m] using hy_d11m
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_y_d1m1, WalshAffine.mul_y_d1m1] using hy_d1m1
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_y_dm11, WalshAffine.mul_y_dm11] using hy_dm11
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_z_d111, WalshAffine.mul_z_d111] using hz_d111
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_z_d11m, WalshAffine.mul_z_d11m] using hz_d11m
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_z_d1m1, WalshAffine.mul_z_d1m1] using hz_d1m1
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_z_dm11, WalshAffine.mul_z_dm11] using hz_dm11
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d111_d11m, WalshAffine.mul_d111_d11m] using hd111_d11m
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d111_d1m1, WalshAffine.mul_d111_d1m1] using hd111_d1m1
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d111_dm11, WalshAffine.mul_d111_dm11] using hd111_dm11
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d11m_d1m1, WalshAffine.mul_d11m_d1m1] using hd11m_d1m1
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d11m_dm11, WalshAffine.mul_d11m_dm11] using hd11m_dm11
  · simpa [WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul,
      dot_d1m1_dm11, WalshAffine.mul_d1m1_dm11] using hd1m1_dm11

end WalshAffineVec3

theorem walshDotCoefficientFacts_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
