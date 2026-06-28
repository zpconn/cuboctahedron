import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh

/-!
AP.16BM Walsh/subcube bound smoke.

This is a deliberately tiny smoke for the generic AP.16BM theorem surface.  It
does not claim to be generated denominator evidence; it only checks that a
subcube fixed-bit fact can prove a termwise Walsh upper bound, and the reusable
summation theorem then proves nonpositivity for every mask in the subcube.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

private def smokeCube : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some false
    | SignBit.d11m => some false
    | _ => none

private def smokePoly : WalshPoly 1 where
  term := fun _ =>
    { coeff := 1
      monomial := { fst := some SignBit.z, snd := none } }

private def smokeUpper : WalshSubcubeUpperBound smokeCube smokePoly where
  bound := fun _ => -1
  term_le := by
    intro i mask hmask
    fin_cases i
    have hz : maskBitForPair mask PairId.z = false := by
      simpa [smokeCube, MaskSubcube.Member, SignBit.toPairId] using
        hmask SignBit.z
    simp [smokePoly, WalshTerm.eval, WalshMonomial.eval,
      WalshMonomial.factorValue, SignBit.value, SignBit.toPairId, hz]
  total_nonpos := by
    norm_num

theorem smoke_eval_nonpos
    {mask : SignMask} (hmask : smokeCube.Member mask) :
    smokePoly.eval mask <= 0 :=
  smokeUpper.eval_nonpos hmask

theorem impactSubcubeWalshSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSmoke
