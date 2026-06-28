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

def WalshQuadratic.boundSum (q : WalshQuadratic) : Rat :=
  q.c + q.y + q.z + q.d111 + q.d11m + q.d1m1 + q.dm11 +
  q.yz + q.y_d111 + q.y_d11m + q.y_d1m1 + q.y_dm11 +
  q.z_d111 + q.z_d11m + q.z_d1m1 + q.z_dm11 +
  q.d111_d11m + q.d111_d1m1 + q.d111_dm11 +
  q.d11m_d1m1 + q.d11m_dm11 + q.d1m1_dm11

/--
Termwise upper bounds for a quadratic Walsh coefficient record over a Boolean
subcube.

This is the coefficient-evaluator analogue of `WalshSubcubeUpperBound`.
It intentionally avoids `WalshPoly.eval` and its `Finset.univ` sum: generated
quadratic-denominator leaves can prove one bound per coefficient slot and
derive `q.coeffEval mask <= 0` by a small linear proof.
-/
structure WalshQuadraticSubcubeUpperBound
    (cube : MaskSubcube) (q : WalshQuadratic) where
  bound : WalshQuadratic
  c_le :
    forall {mask : SignMask}, cube.Member mask -> q.c <= bound.c
  y_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.y * SignBit.value mask SignBit.y <= bound.y
  z_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.z * SignBit.value mask SignBit.z <= bound.z
  d111_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d111 * SignBit.value mask SignBit.d111 <= bound.d111
  d11m_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d11m * SignBit.value mask SignBit.d11m <= bound.d11m
  d1m1_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d1m1 * SignBit.value mask SignBit.d1m1 <= bound.d1m1
  dm11_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.dm11 * SignBit.value mask SignBit.dm11 <= bound.dm11
  yz_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.yz * SignBit.value mask SignBit.y *
        SignBit.value mask SignBit.z <= bound.yz
  y_d111_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.y_d111 * SignBit.value mask SignBit.y *
        SignBit.value mask SignBit.d111 <= bound.y_d111
  y_d11m_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.y_d11m * SignBit.value mask SignBit.y *
        SignBit.value mask SignBit.d11m <= bound.y_d11m
  y_d1m1_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.y_d1m1 * SignBit.value mask SignBit.y *
        SignBit.value mask SignBit.d1m1 <= bound.y_d1m1
  y_dm11_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.y_dm11 * SignBit.value mask SignBit.y *
        SignBit.value mask SignBit.dm11 <= bound.y_dm11
  z_d111_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.z_d111 * SignBit.value mask SignBit.z *
        SignBit.value mask SignBit.d111 <= bound.z_d111
  z_d11m_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.z_d11m * SignBit.value mask SignBit.z *
        SignBit.value mask SignBit.d11m <= bound.z_d11m
  z_d1m1_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.z_d1m1 * SignBit.value mask SignBit.z *
        SignBit.value mask SignBit.d1m1 <= bound.z_d1m1
  z_dm11_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.z_dm11 * SignBit.value mask SignBit.z *
        SignBit.value mask SignBit.dm11 <= bound.z_dm11
  d111_d11m_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d111_d11m * SignBit.value mask SignBit.d111 *
        SignBit.value mask SignBit.d11m <= bound.d111_d11m
  d111_d1m1_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d111_d1m1 * SignBit.value mask SignBit.d111 *
        SignBit.value mask SignBit.d1m1 <= bound.d111_d1m1
  d111_dm11_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d111_dm11 * SignBit.value mask SignBit.d111 *
        SignBit.value mask SignBit.dm11 <= bound.d111_dm11
  d11m_d1m1_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d11m_d1m1 * SignBit.value mask SignBit.d11m *
        SignBit.value mask SignBit.d1m1 <= bound.d11m_d1m1
  d11m_dm11_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d11m_dm11 * SignBit.value mask SignBit.d11m *
        SignBit.value mask SignBit.dm11 <= bound.d11m_dm11
  d1m1_dm11_le :
    forall {mask : SignMask}, cube.Member mask ->
      q.d1m1_dm11 * SignBit.value mask SignBit.d1m1 *
        SignBit.value mask SignBit.dm11 <= bound.d1m1_dm11
  total_nonpos : bound.boundSum <= 0

theorem WalshQuadraticSubcubeUpperBound.coeffEval_le_bound
    {cube : MaskSubcube} {q : WalshQuadratic}
    (upper : WalshQuadraticSubcubeUpperBound cube q)
    {mask : SignMask} (hmask : cube.Member mask) :
    q.coeffEval mask <= upper.bound.boundSum := by
  have h_c := upper.c_le hmask
  have h_y := upper.y_le hmask
  have h_z := upper.z_le hmask
  have h_d111 := upper.d111_le hmask
  have h_d11m := upper.d11m_le hmask
  have h_d1m1 := upper.d1m1_le hmask
  have h_dm11 := upper.dm11_le hmask
  have h_yz := upper.yz_le hmask
  have h_y_d111 := upper.y_d111_le hmask
  have h_y_d11m := upper.y_d11m_le hmask
  have h_y_d1m1 := upper.y_d1m1_le hmask
  have h_y_dm11 := upper.y_dm11_le hmask
  have h_z_d111 := upper.z_d111_le hmask
  have h_z_d11m := upper.z_d11m_le hmask
  have h_z_d1m1 := upper.z_d1m1_le hmask
  have h_z_dm11 := upper.z_dm11_le hmask
  have h_d111_d11m := upper.d111_d11m_le hmask
  have h_d111_d1m1 := upper.d111_d1m1_le hmask
  have h_d111_dm11 := upper.d111_dm11_le hmask
  have h_d11m_d1m1 := upper.d11m_d1m1_le hmask
  have h_d11m_dm11 := upper.d11m_dm11_le hmask
  have h_d1m1_dm11 := upper.d1m1_dm11_le hmask
  dsimp [WalshQuadratic.coeffEval, WalshQuadratic.boundSum]
  linarith

theorem WalshQuadraticSubcubeUpperBound.coeffEval_nonpos
    {cube : MaskSubcube} {q : WalshQuadratic}
    (upper : WalshQuadraticSubcubeUpperBound cube q)
    {mask : SignMask} (hmask : cube.Member mask) :
    q.coeffEval mask <= 0 :=
  le_trans (upper.coeffEval_le_bound hmask) upper.total_nonpos

/--
Coefficient-level Walsh impact obstruction.  This is the production-facing
replacement for quadratic denominator leaves: it uses `WalshQuadratic.coeffEval`
directly and never asks Lean to normalize `WalshPoly.eval`.
-/
structure WalshQuadraticImpactObstruction
    (rank : Nat) (Member : SignMask -> Prop) where
  impact : Impact15
  not_zero : impact ≠ (0 : Impact15)
  not_last : impact ≠ lastImpact
  cube : MaskSubcube
  member_cube :
    forall {mask : SignMask}, Member mask -> cube.Member mask
  poly : WalshQuadratic
  upper : WalshQuadraticSubcubeUpperBound cube poly
  denom_eq :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      Member mask ->
        impactDenomAtRank
          (⟨rank, hlt⟩ : Fin numPairWords) mask impact =
            poly.coeffEval mask

theorem WalshQuadraticImpactObstruction.nonpos
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WalshQuadraticImpactObstruction rank Member)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hmember : Member mask) :
    impactDenomAtRank
      (⟨rank, hlt⟩ : Fin numPairWords) mask obstruction.impact <= 0 := by
  rw [obstruction.denom_eq hlt hmember]
  exact obstruction.upper.coeffEval_nonpos (obstruction.member_cube hmember)

def WalshQuadraticImpactObstruction.toImpactSubcubeObstruction
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WalshQuadraticImpactObstruction rank Member) :
    ImpactSubcubeObstruction rank Member where
  impact := obstruction.impact
  not_zero := obstruction.not_zero
  not_last := obstruction.not_last
  nonpos := by
    intro mask hlt hmember
    exact obstruction.nonpos hlt hmember

theorem impactSubcubeWalshQuadratic_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
