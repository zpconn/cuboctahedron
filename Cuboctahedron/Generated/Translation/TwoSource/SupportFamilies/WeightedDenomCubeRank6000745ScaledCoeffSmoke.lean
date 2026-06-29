import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate

/-!
Generated DU.9BK scaled weighted-coefficient smoke.

This file checks the DU.9BI integer-scaled coefficient-certificate surface for
one rank-`6000745` weighted denominator cube.  It proves integer nonpositivity
of the scaled evaluator on the cube, then uses `ScaledWalshQuadratic` to obtain
the rational `WalshQuadratic.coeffEval` fact.

It deliberately does not yet connect the coefficient record to
`weightedDirectWalshDotAtRank`; that equality bridge is the next missing
production-facing certificate surface.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745ScaledCoeffSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false

-- rank 6000745, DU.9BI cube 0, label ***00*
private def generatedCube : MaskSubcube where
  fixed
    | SignBit.d11m => some false
    | SignBit.d1m1 => some false
    | _ => none

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def generatedScaledPoly : ScaledWalshQuadratic where
  scale := 9
  c := 216
  y := 0
  z := 0
  d111 := 80
  d11m := 84
  d1m1 := 84
  dm11 := -48
  yz := 0
  y_d111 := 0
  y_d11m := 36
  y_d1m1 := -36
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -36
  z_d1m1 := 36
  z_dm11 := 0
  d111_d11m := 40
  d111_d1m1 := 40
  d111_dm11 := 0
  d11m_d1m1 := -48
  d11m_dm11 := -24
  d1m1_dm11 := -24

private theorem generatedScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    generatedScaledPoly.intEval mask <= 0 := by
  have h_d11m := generatedCube_d11m hmask
  have h_d1m1 := generatedCube_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> norm_num [generatedScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_dm11,
      h_d11m, h_d1m1]

theorem generatedScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    generatedScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  generatedScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [generatedScaledPoly])
    (generatedScaledPoly_intEval_nonpos_on_cube hmask)

theorem weightedScaledCoeffSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745ScaledCoeffSmoke
