import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainCube04Smoke

/-! Generated DU.9BW dot-data chained cube module 5. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainCube05Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private def cube05Weights : DenominatorCube.InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 0
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 0
  w9 := 0
  w10 := 1
  w11 := 0
  w12 := 0
  w13 := 0

-- rank 6000745, DU.9BI cube 5, label 1**010
private def cube05Cube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d11m => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem cube05Cube_d11m
    {mask : SignMask} (hmask : cube05Cube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [cube05Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube05Cube_d1m1
    {mask : SignMask} (hmask : cube05Cube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube05Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube05Cube_dm11
    {mask : SignMask} (hmask : cube05Cube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [cube05Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private theorem cube05Cube_y
    {mask : SignMask} (hmask : cube05Cube.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [cube05Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private def cube05ScaledPoly : ScaledWalshQuadratic where
  scale := 9
  c := 36
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8
  y_d11m := 24
  y_d1m1 := -24
  y_dm11 := 24
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube05ScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube05Cube.Member mask) :
    cube05ScaledPoly.intEval mask <= 0 := by
  have h_d11m := cube05Cube_d11m hmask
  have h_d1m1 := cube05Cube_d1m1 hmask
  have h_dm11 := cube05Cube_dm11 hmask
  have h_y := cube05Cube_y hmask
  by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    norm_num [cube05ScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube05ScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube05Cube.Member mask) :
    cube05ScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  cube05ScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube05ScaledPoly])
    (cube05ScaledPoly_intEval_nonpos_on_cube hmask)

private theorem cube05DotPoly_eq :
    weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot cube05Weights =
      cube05ScaledPoly.toQuadratic := by
  apply WalshQuadratic.ext <;>
    norm_num [weightedQuadraticFromDotData, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot, cube05Weights, cube05ScaledPoly, ScaledWalshQuadratic.toQuadratic, ScaledWalshQuadratic.coeffRat, WalshQuadratic.add, WalshQuadratic.scale, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot02, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot03, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot04, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot08, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot12]

private theorem cube05Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedVector
        cube05Weights = cube05ScaledPoly.toQuadratic := by
  exact
    (weightedQuadraticFromAffineData_eq_fromDotData
      (normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedNormal)
      (vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedVector)
      (dotPoly := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot)
      (weights := cube05Weights)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedDot_eq).trans
      cube05DotPoly_eq

private def cube05TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedRank cube05Weights cube05ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedNormal_eq
  poly_eq := cube05Poly_eq

theorem cube05WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube05Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainDataSmoke.generatedRank mask cube05Weights <= 0 := by
  have hcoeff := cube05TraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := cube05ScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem dotDataChainCube05Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertDotDataChainCube05Smoke
