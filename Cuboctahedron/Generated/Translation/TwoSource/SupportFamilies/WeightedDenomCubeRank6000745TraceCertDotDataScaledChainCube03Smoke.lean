import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube02Smoke

/-! Generated DU.9CR dot-data scaled chained cube module 3. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube03Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private def cube03Weights : DenominatorCube.InternalImpactWeights where
  w1 := 0
  w2 := 1
  w3 := 0
  w4 := 1
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 2
  w12 := 0
  w13 := 0

-- rank 6000745, DU.9BI cube 3, label *0**11
private def cube03Cube : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

private theorem cube03Cube_d1m1
    {mask : SignMask} (hmask : cube03Cube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube03Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube03Cube_dm11
    {mask : SignMask} (hmask : cube03Cube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [cube03Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private theorem cube03Cube_z
    {mask : SignMask} (hmask : cube03Cube.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [cube03Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private def cube03ScaledPoly : ScaledWalshQuadratic where
  scale := 9
  c := 216
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 36
  dm11 := -36
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -36
  y_dm11 := 36
  z_d111 := 16
  z_d11m := -48
  z_d1m1 := 84
  z_dm11 := 84
  d111_d11m := 0
  d111_d1m1 := 40
  d111_dm11 := -24
  d11m_d1m1 := -24
  d11m_dm11 := -24
  d1m1_dm11 := -48

private theorem cube03ScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube03Cube.Member mask) :
    cube03ScaledPoly.intEval mask <= 0 := by
  have h_d1m1 := cube03Cube_d1m1 hmask
  have h_dm11 := cube03Cube_dm11 hmask
  have h_z := cube03Cube_z hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    norm_num [cube03ScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube03ScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube03Cube.Member mask) :
    cube03ScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  cube03ScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube03ScaledPoly])
    (cube03ScaledPoly_intEval_nonpos_on_cube hmask)

private theorem cube03DotPoly_eq :
    weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot cube03Weights =
      cube03ScaledPoly.toQuadratic := by
  rw [weightedQuadraticFromDotData_eq_coeffs]
  apply ScaledWalshQuadratic.toQuadratic_eq_of_scaled_coeffs cube03ScaledPoly
    (by norm_num [cube03ScaledPoly]) <;>
    norm_num [weightedQuadraticFromDotDataCoeffs, weightedQuadraticFromDotDataCoeff, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot, cube03Weights, cube03ScaledPoly, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot03, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot10]

private theorem cube03Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
        cube03Weights = cube03ScaledPoly.toQuadratic := by
  exact
    (weightedQuadraticFromAffineData_eq_fromDotData
      (normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal)
      (vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector)
      (dotPoly := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot)
      (weights := cube03Weights)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot_eq).trans
      cube03DotPoly_eq

private def cube03TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank cube03Weights cube03ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal_eq
  poly_eq := cube03Poly_eq

theorem cube03WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube03Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank mask cube03Weights <= 0 := by
  have hcoeff := cube03TraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := cube03ScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem dotDataScaledChainCube03Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube03Smoke
