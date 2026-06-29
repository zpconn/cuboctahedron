import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube07Smoke

/-! Generated DU.9CR dot-data scaled chained cube module 8. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube08Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private def cube08Weights : DenominatorCube.InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 1
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

-- rank 6000745, DU.9BI cube 8, label *10*10
private def cube08Cube : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d111 => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem cube08Cube_d111
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [cube08Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube08Cube_d1m1
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube08Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube08Cube_dm11
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [cube08Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private theorem cube08Cube_z
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    maskBitForPair mask PairId.z = true := by
  simpa [cube08Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private def cube08ScaledPoly : ScaledWalshQuadratic where
  scale := 9
  c := 72
  y := 0
  z := 0
  d111 := 60
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 12
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 12
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40
  d111_d1m1 := 40
  d111_dm11 := -24
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube08ScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    cube08ScaledPoly.intEval mask <= 0 := by
  have h_d111 := cube08Cube_d111 hmask
  have h_d1m1 := cube08Cube_d1m1 hmask
  have h_dm11 := cube08Cube_dm11 hmask
  have h_z := cube08Cube_z hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    norm_num [cube08ScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube08ScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    cube08ScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  cube08ScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube08ScaledPoly])
    (cube08ScaledPoly_intEval_nonpos_on_cube hmask)

private theorem cube08DotPoly_eq :
    weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot cube08Weights =
      cube08ScaledPoly.toQuadratic := by
  rw [weightedQuadraticFromDotData_eq_coeffs]
  apply ScaledWalshQuadratic.toQuadratic_eq_of_scaled_coeffs cube08ScaledPoly
    (by norm_num [cube08ScaledPoly]) <;>
    norm_num [weightedQuadraticFromDotDataCoeffs, weightedQuadraticFromDotDataCoeff, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot, cube08Weights, cube08ScaledPoly, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot04]

private theorem cube08Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
        cube08Weights = cube08ScaledPoly.toQuadratic := by
  exact
    (weightedQuadraticFromAffineData_eq_fromDotData
      (normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal)
      (vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector)
      (dotPoly := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot)
      (weights := cube08Weights)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedDot_eq).trans
      cube08DotPoly_eq

private def cube08TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank cube08Weights cube08ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedNormal_eq
  poly_eq := cube08Poly_eq

theorem cube08WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataChainDataSmoke.generatedRank mask cube08Weights <= 0 := by
  have hcoeff := cube08TraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := cube08ScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem dotDataScaledChainCube08Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataScaledChainCube08Smoke
