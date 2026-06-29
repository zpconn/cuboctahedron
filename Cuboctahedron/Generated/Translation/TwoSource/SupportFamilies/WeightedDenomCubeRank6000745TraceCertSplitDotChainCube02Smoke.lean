import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainCube01Smoke

/-! Generated DU.9BX split-dot chained cube module 2. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainCube02Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private def cube02Weights : DenominatorCube.InternalImpactWeights where
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

-- rank 6000745, DU.9BI cube 2, label **011*
private def cube02Cube : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.d11m => some true
    | SignBit.d1m1 => some true
    | _ => none

private theorem cube02Cube_d111
    {mask : SignMask} (hmask : cube02Cube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [cube02Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube02Cube_d11m
    {mask : SignMask} (hmask : cube02Cube.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [cube02Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube02Cube_d1m1
    {mask : SignMask} (hmask : cube02Cube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube02Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def cube02ScaledPoly : ScaledWalshQuadratic where
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

private theorem cube02ScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube02Cube.Member mask) :
    cube02ScaledPoly.intEval mask <= 0 := by
  have h_d111 := cube02Cube_d111 hmask
  have h_d11m := cube02Cube_d11m hmask
  have h_d1m1 := cube02Cube_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11 <;>
    norm_num [cube02ScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube02ScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube02Cube.Member mask) :
    cube02ScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  cube02ScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube02ScaledPoly])
    (cube02ScaledPoly_intEval_nonpos_on_cube hmask)

private theorem cube02DotPoly_eq :
    weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot cube02Weights =
      cube02ScaledPoly.toQuadratic := by
  apply WalshQuadratic.ext <;>
    norm_num [weightedQuadraticFromDotData, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot, cube02Weights, cube02ScaledPoly, ScaledWalshQuadratic.toQuadratic, ScaledWalshQuadratic.coeffRat, WalshQuadratic.add, WalshQuadratic.scale, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot00Smoke.generatedDot00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot01Smoke.generatedDot01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot02Smoke.generatedDot02, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot03Smoke.generatedDot03, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot04Smoke.generatedDot04, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot05Smoke.generatedDot05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot06Smoke.generatedDot06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot07Smoke.generatedDot07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot08Smoke.generatedDot08, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot09Smoke.generatedDot09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot10Smoke.generatedDot10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot11Smoke.generatedDot11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot12]

private theorem cube02Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedVector
        cube02Weights = cube02ScaledPoly.toQuadratic := by
  exact
    (weightedQuadraticFromAffineData_eq_fromDotData
      (normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal)
      (vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedVector)
      (dotPoly := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot)
      (weights := cube02Weights)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot_eq).trans
      cube02DotPoly_eq

private def cube02TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedRank cube02Weights cube02ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal_eq
  poly_eq := cube02Poly_eq

theorem cube02WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube02Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedRank mask cube02Weights <= 0 := by
  have hcoeff := cube02TraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := cube02ScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem splitDotChainCube02Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainCube02Smoke
