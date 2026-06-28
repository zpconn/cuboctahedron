import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh

/-!
AP.16BU Walsh quadratic coefficient surface.

AP16BT showed that proving denominator/Walsh equality by unfolding the full
translation geometry under six sign-bit cases has the wrong memory shape.  This
small module gives generated code a fixed coefficient-level target for the
degree-at-most-two Walsh polynomials that appear in the AP16BJ denominator
forms.  Future equality checkers should prove coefficient facts against this
surface instead of replaying concrete masks or unfolding `totalAff` branches.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

open scoped BigOperators

structure WalshQuadratic where
  c : Rat
  y : Rat
  z : Rat
  d111 : Rat
  d11m : Rat
  d1m1 : Rat
  dm11 : Rat
  yz : Rat
  y_d111 : Rat
  y_d11m : Rat
  y_d1m1 : Rat
  y_dm11 : Rat
  z_d111 : Rat
  z_d11m : Rat
  z_d1m1 : Rat
  z_dm11 : Rat
  d111_d11m : Rat
  d111_d1m1 : Rat
  d111_dm11 : Rat
  d11m_d1m1 : Rat
  d11m_dm11 : Rat
  d1m1_dm11 : Rat
deriving Repr

private def bitMonomial (bit : SignBit) : WalshMonomial :=
  { fst := some bit, snd := none }

private def twoBitMonomial (fst snd : SignBit) : WalshMonomial :=
  { fst := some fst, snd := some snd }

private def constMonomial : WalshMonomial :=
  { fst := none, snd := none }

def WalshQuadratic.toPoly (q : WalshQuadratic) : WalshPoly 22 where
  term i :=
    match i.val with
    | 0 => { coeff := q.c, monomial := constMonomial }
    | 1 => { coeff := q.y, monomial := bitMonomial SignBit.y }
    | 2 => { coeff := q.z, monomial := bitMonomial SignBit.z }
    | 3 => { coeff := q.d111, monomial := bitMonomial SignBit.d111 }
    | 4 => { coeff := q.d11m, monomial := bitMonomial SignBit.d11m }
    | 5 => { coeff := q.d1m1, monomial := bitMonomial SignBit.d1m1 }
    | 6 => { coeff := q.dm11, monomial := bitMonomial SignBit.dm11 }
    | 7 => { coeff := q.yz, monomial := twoBitMonomial SignBit.y SignBit.z }
    | 8 => { coeff := q.y_d111, monomial := twoBitMonomial SignBit.y SignBit.d111 }
    | 9 => { coeff := q.y_d11m, monomial := twoBitMonomial SignBit.y SignBit.d11m }
    | 10 => { coeff := q.y_d1m1, monomial := twoBitMonomial SignBit.y SignBit.d1m1 }
    | 11 => { coeff := q.y_dm11, monomial := twoBitMonomial SignBit.y SignBit.dm11 }
    | 12 => { coeff := q.z_d111, monomial := twoBitMonomial SignBit.z SignBit.d111 }
    | 13 => { coeff := q.z_d11m, monomial := twoBitMonomial SignBit.z SignBit.d11m }
    | 14 => { coeff := q.z_d1m1, monomial := twoBitMonomial SignBit.z SignBit.d1m1 }
    | 15 => { coeff := q.z_dm11, monomial := twoBitMonomial SignBit.z SignBit.dm11 }
    | 16 => { coeff := q.d111_d11m, monomial := twoBitMonomial SignBit.d111 SignBit.d11m }
    | 17 => { coeff := q.d111_d1m1, monomial := twoBitMonomial SignBit.d111 SignBit.d1m1 }
    | 18 => { coeff := q.d111_dm11, monomial := twoBitMonomial SignBit.d111 SignBit.dm11 }
    | 19 => { coeff := q.d11m_d1m1, monomial := twoBitMonomial SignBit.d11m SignBit.d1m1 }
    | 20 => { coeff := q.d11m_dm11, monomial := twoBitMonomial SignBit.d11m SignBit.dm11 }
    | 21 => { coeff := q.d1m1_dm11, monomial := twoBitMonomial SignBit.d1m1 SignBit.dm11 }
    | _ => { coeff := 0, monomial := constMonomial }

def WalshQuadratic.eval (q : WalshQuadratic) (mask : SignMask) : Rat :=
  q.toPoly.eval mask

theorem WalshQuadratic.toPoly_eval (q : WalshQuadratic) (mask : SignMask) :
    q.toPoly.eval mask = q.eval mask := rfl

theorem impactSubcubeWalshQuadratic_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
