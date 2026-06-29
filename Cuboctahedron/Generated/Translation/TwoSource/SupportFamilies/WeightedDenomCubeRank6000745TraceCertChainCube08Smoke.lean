import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainCube07Smoke

/-! Generated DU.9BU chained cube module 8. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainCube08Smoke

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

private theorem cube08Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedVector
        cube08Weights = cube08ScaledPoly.toQuadratic := by
  apply WalshQuadratic.ext <;>
    norm_num [weightedQuadraticFromAffineData, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal, cube08Weights, cube08ScaledPoly, ScaledWalshQuadratic.toQuadratic, ScaledWalshQuadratic.coeffRat, WalshQuadratic.add, WalshQuadratic.scale, WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal00_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal00_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal00_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal01_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal01_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal01_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal02, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal02_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal02_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal02_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal03, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal03_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal03_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal03_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal04, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal04_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal04_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal04_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal05_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal05_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal05_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal06_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal06_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal06_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal07_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal07_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal07_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal08, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal08_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal08_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal08_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal09_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal09_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal09_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal10_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal10_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal10_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal11_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal11_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal11_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal12, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal12_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal12_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal12_z, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z]

private def cube08TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedRank cube08Weights cube08ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedNormal_eq
  poly_eq := cube08Poly_eq

theorem cube08WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube08Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke.generatedRank mask cube08Weights <= 0 := by
  have hcoeff := cube08TraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := cube08ScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem chainCube08Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainCube08Smoke
