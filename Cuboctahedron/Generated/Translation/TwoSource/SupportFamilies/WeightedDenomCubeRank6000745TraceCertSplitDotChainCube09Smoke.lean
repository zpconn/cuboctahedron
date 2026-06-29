import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainCube08Smoke

/-! Generated DU.9BX split-dot chained cube module 9. -/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainCube09Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private def cube09Weights : DenominatorCube.InternalImpactWeights where
  w1 := 0
  w2 := 0
  w3 := 0
  w4 := 1
  w5 := 0
  w6 := 0
  w7 := 0
  w8 := 1
  w9 := 0
  w10 := 0
  w11 := 0
  w12 := 0
  w13 := 0

-- rank 6000745, DU.9BI cube 9, label 0**111
private def cube09Cube : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d11m => some true
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

private theorem cube09Cube_d11m
    {mask : SignMask} (hmask : cube09Cube.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [cube09Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube09Cube_d1m1
    {mask : SignMask} (hmask : cube09Cube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube09Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube09Cube_dm11
    {mask : SignMask} (hmask : cube09Cube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [cube09Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private theorem cube09Cube_y
    {mask : SignMask} (hmask : cube09Cube.Member mask) :
    maskBitForPair mask PairId.y = false := by
  simpa [cube09Cube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private def cube09ScaledPoly : ScaledWalshQuadratic where
  scale := 9
  c := 144
  y := 0
  z := 0
  d111 := 0
  d11m := 36
  d1m1 := 0
  dm11 := -36
  yz := 0
  y_d111 := 0
  y_d11m := 36
  y_d1m1 := 0
  y_dm11 := 36
  z_d111 := 0
  z_d11m := -36
  z_d1m1 := 0
  z_dm11 := 36
  d111_d11m := 40
  d111_d1m1 := 0
  d111_dm11 := -24
  d11m_d1m1 := -24
  d11m_dm11 := -48
  d1m1_dm11 := -24

private theorem cube09ScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube09Cube.Member mask) :
    cube09ScaledPoly.intEval mask <= 0 := by
  have h_d11m := cube09Cube_d11m hmask
  have h_d1m1 := cube09Cube_d1m1 hmask
  have h_dm11 := cube09Cube_dm11 hmask
  have h_y := cube09Cube_y hmask
  by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    norm_num [cube09ScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube09ScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube09Cube.Member mask) :
    cube09ScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  cube09ScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube09ScaledPoly])
    (cube09ScaledPoly_intEval_nonpos_on_cube hmask)

private theorem cube09DotPoly_eq :
    weightedQuadraticFromDotData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot cube09Weights =
      cube09ScaledPoly.toQuadratic := by
  apply WalshQuadratic.ext <;>
    norm_num [weightedQuadraticFromDotData, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot, cube09Weights, cube09ScaledPoly, ScaledWalshQuadratic.toQuadratic, ScaledWalshQuadratic.coeffRat, WalshQuadratic.add, WalshQuadratic.scale, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot00Smoke.generatedDot00, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot01Smoke.generatedDot01, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot02Smoke.generatedDot02, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot03Smoke.generatedDot03, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot04Smoke.generatedDot04, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot05Smoke.generatedDot05, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot06Smoke.generatedDot06, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot07Smoke.generatedDot07, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot08Smoke.generatedDot08, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot09Smoke.generatedDot09, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot10Smoke.generatedDot10, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot11Smoke.generatedDot11, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot12]

private theorem cube09Poly_eq :
    weightedQuadraticFromAffineData
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedVector
        cube09Weights = cube09ScaledPoly.toQuadratic := by
  exact
    (weightedQuadraticFromAffineData_eq_fromDotData
      (normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal)
      (vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedVector)
      (dotPoly := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot)
      (weights := cube09Weights)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDot12Smoke.generatedDot_eq).trans
      cube09DotPoly_eq

private def cube09TraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedRank cube09Weights cube09ScaledPoly.toQuadratic where
  word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal
  normal_eq := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedNormal_eq
  poly_eq := cube09Poly_eq

theorem cube09WeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : cube09Cube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainDataSmoke.generatedRank mask cube09Weights <= 0 := by
  have hcoeff := cube09TraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := cube09ScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem splitDotChainCube09Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertSplitDotChainCube09Smoke
