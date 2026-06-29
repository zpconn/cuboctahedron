import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke

/-! Generated DU.9CR dot-data scaled chained cube module 0. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube00Smoke

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

private theorem cube00DotPoly_eq :
    weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot cube00Weights =
      cube00ScaledPoly.toQuadratic := by
  rw [weightedQuadraticFromDotData_eq_coeffs]
  apply ScaledWalshQuadratic.toQuadratic_eq_of_scaled_coeffs cube00ScaledPoly
    (by norm_num [cube00ScaledPoly]) <;>
    norm_num [weightedQuadraticFromDotDataCoeffs, weightedQuadraticFromDotDataCoeff, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot, cube00Weights, cube00ScaledPoly, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot07]

private theorem cube00Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
        cube00Weights = cube00ScaledPoly.toQuadratic := by
  exact
    (weightedQuadraticFromAffineData_eq_fromDotData
      (normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal)
      (vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector)
      (dotPoly := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot)
      (weights := cube00Weights)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot_eq).trans
      cube00DotPoly_eq

private def cube00TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank cube00Weights cube00ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal_eq
  poly_eq := cube00Poly_eq

theorem cube00WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube00Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank mask cube00Weights <= 0 := by
  exact cube00TraceCert.weightedDirect_nonpos_of_scaled_intEval_nonpos
    (by norm_num [cube00ScaledPoly])
    (cube00ScaledPoly_intEval_nonpos_on_cube hmask)

theorem dotDataScaledChainCube00Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube00Smoke
