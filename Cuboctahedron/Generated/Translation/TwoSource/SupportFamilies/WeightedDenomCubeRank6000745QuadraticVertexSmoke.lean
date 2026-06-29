import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic

/-!
Generated DU.9BF compact weighted Walsh quadratic vertex smoke.

This file proves nonpositivity of one precomputed weighted denominator
quadratic on one Boolean subcube by splitting only the free mask bits.
It deliberately does not yet connect the polynomial to weightedDenomAtRank.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745QuadraticVertexSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false

-- rank 6000745, cube 0, label ***00*
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

private def generatedPoly : WalshQuadratic where
  c := 24
  y := 0
  z := 0
  d111 := 80/9
  d11m := 28/3
  d1m1 := 28/3
  dm11 := (-16/3)
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := -4
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 4
  z_dm11 := 0
  d111_d11m := 40/9
  d111_d1m1 := 40/9
  d111_dm11 := 0
  d11m_d1m1 := (-16/3)
  d11m_dm11 := (-8/3)
  d1m1_dm11 := (-8/3)

theorem generatedPoly_nonpos_on_cube
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    generatedPoly.coeffEval mask <= 0 := by
  have h_d11m := generatedCube_d11m hmask
  have h_d1m1 := generatedCube_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> norm_num [generatedPoly, WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId, h_y, h_z, h_d111, h_dm11, h_d11m, h_d1m1]

theorem weightedQuadraticVertexSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745QuadraticVertexSmoke
