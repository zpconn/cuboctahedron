import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube05Smoke

/-! Generated DU.9CR dot-data scaled chained cube module 6. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube06Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private def cube06Weights : DenominatorCube.InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 1
  w12 := 0
  w13 := 0

-- rank 6000745, DU.9BI cube 6, label *1*100
private def cube06Cube : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d11m => some true
    | SignBit.d1m1 => some false
    | SignBit.dm11 => some false
    | _ => none

private theorem cube06Cube_d11m
    {mask : SignMask} (hmask : cube06Cube.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [cube06Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube06Cube_d1m1
    {mask : SignMask} (hmask : cube06Cube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [cube06Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube06Cube_dm11
    {mask : SignMask} (hmask : cube06Cube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [cube06Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private theorem cube06Cube_z
    {mask : SignMask} (hmask : cube06Cube.Member mask) :
    maskBitForPair mask PairId.z = true := by
  simpa [cube06Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private def cube06ScaledPoly : ScaledWalshQuadratic where
  scale := 9
  c := 36
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 8
  z_d11m := -24
  z_d1m1 := 24
  z_dm11 := 24
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube06ScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube06Cube.Member mask) :
    cube06ScaledPoly.intEval mask <= 0 := by
  have h_d11m := cube06Cube_d11m hmask
  have h_d1m1 := cube06Cube_d1m1 hmask
  have h_dm11 := cube06Cube_dm11 hmask
  have h_z := cube06Cube_z hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    norm_num [cube06ScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube06ScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube06Cube.Member mask) :
    cube06ScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  cube06ScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube06ScaledPoly])
    (cube06ScaledPoly_intEval_nonpos_on_cube hmask)

private theorem cube06DotPoly_eq :
    weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot cube06Weights =
      cube06ScaledPoly.toQuadratic := by
  rw [weightedQuadraticFromDotData_eq_coeffs]
  apply ScaledWalshQuadratic.toQuadratic_eq_of_scaled_coeffs cube06ScaledPoly
    (by norm_num [cube06ScaledPoly]) <;>
    norm_num [weightedQuadraticFromDotDataCoeffs, weightedQuadraticFromDotDataCoeff, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot, cube06Weights, cube06ScaledPoly, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot10]

private theorem cube06Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
        cube06Weights = cube06ScaledPoly.toQuadratic := by
  exact
    (weightedQuadraticFromAffineData_eq_fromDotData
      (normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal)
      (vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector)
      (dotPoly := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot)
      (weights := cube06Weights)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot_eq).trans
      cube06DotPoly_eq

private def cube06TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank cube06Weights cube06ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal_eq
  poly_eq := cube06Poly_eq

theorem cube06WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube06Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank mask cube06Weights <= 0 := by
  have hcoeff := cube06TraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := cube06ScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem dotDataScaledChainCube06Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube06Smoke
