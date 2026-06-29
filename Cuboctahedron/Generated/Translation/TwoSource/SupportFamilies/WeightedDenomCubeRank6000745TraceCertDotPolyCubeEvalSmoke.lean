import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke

/-! Generated DU.9CP cube00 dot-polynomial cube-evaluation smoke module. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotPolyCubeEvalSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private def cube00Weights : DenominatorCube.InternalImpactWeights where
  w1 := 2
  w2 := 1
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 1
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

-- rank 6000745, DU.9BI cube 0, label ***00*
private def cube00Cube : MaskSubcube where
  fixed
    | SignBit.d11m => some false
    | SignBit.d1m1 => some false
    | _ => none

private theorem cube00Cube_d11m
    {mask : SignMask} (hmask : cube00Cube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [cube00Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube00Cube_d1m1
    {mask : SignMask} (hmask : cube00Cube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [cube00Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def cube00ScaledPoly : ScaledWalshQuadratic where
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

private theorem cube00ScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube00Cube.Member mask) :
    cube00ScaledPoly.intEval mask <= 0 := by
  have h_d11m := cube00Cube_d11m hmask
  have h_d1m1 := cube00Cube_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11 <;>
    norm_num [cube00ScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube00ScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube00Cube.Member mask) :
    cube00ScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  cube00ScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube00ScaledPoly])
    (cube00ScaledPoly_intEval_nonpos_on_cube hmask)

private theorem cube00DotPoly_coeffEval_eq_scaled_on_cube
    {mask : SignMask} (hmask : cube00Cube.Member mask) :
    (weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot cube00Weights).coeffEval mask =
      cube00ScaledPoly.toQuadratic.coeffEval mask := by
  have h_d11m := cube00Cube_d11m hmask
  have h_d1m1 := cube00Cube_d1m1 hmask
  rw [weightedQuadraticFromDotData_eq_coeffs]
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11 <;>
    norm_num [weightedQuadraticFromDotDataCoeffs, weightedQuadraticFromDotDataCoeff, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot, cube00Weights, cube00ScaledPoly, ScaledWalshQuadratic.toQuadratic, ScaledWalshQuadratic.coeffRat, WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot07, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube00DotPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube00Cube.Member mask) :
    (weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot cube00Weights).coeffEval mask <= 0 := by
  rw [cube00DotPoly_coeffEval_eq_scaled_on_cube hmask]
  exact cube00ScaledPoly_coeffEval_nonpos_on_cube hmask

theorem dotPolyCubeEvalSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotPolyCubeEvalSmoke
