import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke

/-!
Generated DU.9BS one-cube weighted trace-certificate smoke.

This file instantiates `WeightedWalshQuadraticTraceCertificate` for the
first DU.9BI rank-`6000745` weighted cube using the DU.9BR chained
Walsh-vector trace root.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertOneCubeSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector

private def generatedWeights : DenominatorCube.InternalImpactWeights where
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

private def generatedScaledPoly : ScaledWalshQuadratic where
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

private theorem generatedScaledPoly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    generatedScaledPoly.intEval mask <= 0 := by
  have h_d11m := generatedCube_d11m hmask
  have h_d1m1 := generatedCube_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11 <;>
    norm_num [generatedScaledPoly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem generatedScaledPoly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    generatedScaledPoly.toQuadratic.coeffEval mask <= 0 :=
  generatedScaledPoly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [generatedScaledPoly])
    (generatedScaledPoly_intEval_nonpos_on_cube hmask)

private def generatedNormal00_x : WalshAffine where
  c := -1
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal00_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal00_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal00 : WalshAffineVec3 where
  x := generatedNormal00_x
  y := generatedNormal00_y
  z := generatedNormal00_z

private theorem generatedWord_get_00 :
    generatedWord.get (0 : WordIndex) = PairId.x := by
  rfl

private theorem generatedNormal00_eq :
    generatedNormal00 = impactNormalWalshAt generatedWord (0 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal01_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

private def generatedNormal01_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

private def generatedNormal01_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 1
  dm11 := 0

private def generatedNormal01 : WalshAffineVec3 where
  x := generatedNormal01_x
  y := generatedNormal01_y
  z := generatedNormal01_z

private theorem generatedWord_get_01 :
    generatedWord.get (1 : WordIndex) = PairId.d1m1 := by
  rfl

private theorem generatedNormal01_eq :
    generatedNormal01 = impactNormalWalshAt generatedWord (1 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_01, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_01, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal02_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

private def generatedNormal02_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

private def generatedNormal02_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 1
  dm11 := 0

private def generatedNormal02 : WalshAffineVec3 where
  x := generatedNormal02_x
  y := generatedNormal02_y
  z := generatedNormal02_z

private theorem generatedWord_get_02 :
    generatedWord.get (2 : WordIndex) = PairId.d1m1 := by
  rfl

private theorem generatedNormal02_eq :
    generatedNormal02 = impactNormalWalshAt generatedWord (2 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_02, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_02, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal03_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def generatedNormal03_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def generatedNormal03_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def generatedNormal03 : WalshAffineVec3 where
  x := generatedNormal03_x
  y := generatedNormal03_y
  z := generatedNormal03_z

private theorem generatedWord_get_03 :
    generatedWord.get (3 : WordIndex) = PairId.dm11 := by
  rfl

private theorem generatedNormal03_eq :
    generatedNormal03 = impactNormalWalshAt generatedWord (3 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_03, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_03, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal04_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -5/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal04_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal04_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal04 : WalshAffineVec3 where
  x := generatedNormal04_x
  y := generatedNormal04_y
  z := generatedNormal04_z

private theorem generatedWord_get_04 :
    generatedWord.get (4 : WordIndex) = PairId.d111 := by
  rfl

private theorem generatedNormal04_eq :
    generatedNormal04 = impactNormalWalshAt generatedWord (4 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_04, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_04, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal05_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -5/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal05_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal05_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal05 : WalshAffineVec3 where
  x := generatedNormal05_x
  y := generatedNormal05_y
  z := generatedNormal05_z

private theorem generatedWord_get_05 :
    generatedWord.get (5 : WordIndex) = PairId.d111 := by
  rfl

private theorem generatedNormal05_eq :
    generatedNormal05 = impactNormalWalshAt generatedWord (5 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_05, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_05, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal06_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def generatedNormal06_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def generatedNormal06_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

private def generatedNormal06 : WalshAffineVec3 where
  x := generatedNormal06_x
  y := generatedNormal06_y
  z := generatedNormal06_z

private theorem generatedWord_get_06 :
    generatedWord.get (6 : WordIndex) = PairId.dm11 := by
  rfl

private theorem generatedNormal06_eq :
    generatedNormal06 = impactNormalWalshAt generatedWord (6 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_06, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_06, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal07_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

private def generatedNormal07_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 1
  d1m1 := 0
  dm11 := 0

private def generatedNormal07_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

private def generatedNormal07 : WalshAffineVec3 where
  x := generatedNormal07_x
  y := generatedNormal07_y
  z := generatedNormal07_z

private theorem generatedWord_get_07 :
    generatedWord.get (7 : WordIndex) = PairId.d11m := by
  rfl

private theorem generatedNormal07_eq :
    generatedNormal07 = impactNormalWalshAt generatedWord (7 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal08_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

private def generatedNormal08_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 1
  d1m1 := 0
  dm11 := 0

private def generatedNormal08_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

private def generatedNormal08 : WalshAffineVec3 where
  x := generatedNormal08_x
  y := generatedNormal08_y
  z := generatedNormal08_z

private theorem generatedWord_get_08 :
    generatedWord.get (8 : WordIndex) = PairId.d11m := by
  rfl

private theorem generatedNormal08_eq :
    generatedNormal08 = impactNormalWalshAt generatedWord (8 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_08, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_08, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal09_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal09_y : WalshAffine where
  c := 0
  y := 1
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal09_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal09 : WalshAffineVec3 where
  x := generatedNormal09_x
  y := generatedNormal09_y
  z := generatedNormal09_z

private theorem generatedWord_get_09 :
    generatedWord.get (9 : WordIndex) = PairId.y := by
  rfl

private theorem generatedNormal09_eq :
    generatedNormal09 = impactNormalWalshAt generatedWord (9 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_09, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_09, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal10_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal10_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal10_z : WalshAffine where
  c := 0
  y := 0
  z := 1
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal10 : WalshAffineVec3 where
  x := generatedNormal10_x
  y := generatedNormal10_y
  z := generatedNormal10_z

private theorem generatedWord_get_10 :
    generatedWord.get (10 : WordIndex) = PairId.z := by
  rfl

private theorem generatedNormal10_eq :
    generatedNormal10 = impactNormalWalshAt generatedWord (10 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_10, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_10, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal11_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal11_y : WalshAffine where
  c := 0
  y := 1
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal11_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal11 : WalshAffineVec3 where
  x := generatedNormal11_x
  y := generatedNormal11_y
  z := generatedNormal11_z

private theorem generatedWord_get_11 :
    generatedWord.get (11 : WordIndex) = PairId.y := by
  rfl

private theorem generatedNormal11_eq :
    generatedNormal11 = impactNormalWalshAt generatedWord (11 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_11, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_11, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal12_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal12_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal12_z : WalshAffine where
  c := 0
  y := 0
  z := 1
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal12 : WalshAffineVec3 where
  x := generatedNormal12_x
  y := generatedNormal12_y
  z := generatedNormal12_z

private theorem generatedWord_get_12 :
    generatedWord.get (12 : WordIndex) = PairId.z := by
  rfl

private theorem generatedNormal12_eq :
    generatedNormal12 = impactNormalWalshAt generatedWord (12 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_12, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_12, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

private def generatedNormal : WordIndex -> WalshAffineVec3
  | ⟨0, _⟩ => generatedNormal00
  | ⟨1, _⟩ => generatedNormal01
  | ⟨2, _⟩ => generatedNormal02
  | ⟨3, _⟩ => generatedNormal03
  | ⟨4, _⟩ => generatedNormal04
  | ⟨5, _⟩ => generatedNormal05
  | ⟨6, _⟩ => generatedNormal06
  | ⟨7, _⟩ => generatedNormal07
  | ⟨8, _⟩ => generatedNormal08
  | ⟨9, _⟩ => generatedNormal09
  | ⟨10, _⟩ => generatedNormal10
  | ⟨11, _⟩ => generatedNormal11
  | ⟨12, _⟩ => generatedNormal12

private theorem generatedNormal_eq
    (i : WordIndex) :
    generatedNormal i = impactNormalWalshAt generatedWord i := by
  fin_cases i
  · simpa [generatedNormal] using generatedNormal00_eq
  · simpa [generatedNormal] using generatedNormal01_eq
  · simpa [generatedNormal] using generatedNormal02_eq
  · simpa [generatedNormal] using generatedNormal03_eq
  · simpa [generatedNormal] using generatedNormal04_eq
  · simpa [generatedNormal] using generatedNormal05_eq
  · simpa [generatedNormal] using generatedNormal06_eq
  · simpa [generatedNormal] using generatedNormal07_eq
  · simpa [generatedNormal] using generatedNormal08_eq
  · simpa [generatedNormal] using generatedNormal09_eq
  · simpa [generatedNormal] using generatedNormal10_eq
  · simpa [generatedNormal] using generatedNormal11_eq
  · simpa [generatedNormal] using generatedNormal12_eq

private theorem generatedPoly_eq :
    weightedQuadraticFromAffineData generatedNormal generatedVector
        generatedWeights = generatedScaledPoly.toQuadratic := by
  apply WalshQuadratic.ext <;>
    norm_num [weightedQuadraticFromAffineData, generatedNormal, generatedWeights, generatedScaledPoly, ScaledWalshQuadratic.toQuadratic, ScaledWalshQuadratic.coeffRat, WalshQuadratic.add, WalshQuadratic.scale, WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z]

private def generatedTraceCert :
    DenominatorCube.WeightedWalshQuadraticTraceCertificate
      generatedRank generatedWeights generatedScaledPoly.toQuadratic where
  word := generatedWord
  rank_word := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedUnrank_builds
  vector := generatedVector
  vector_trace := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedTrace
  normal := generatedNormal
  normal_eq := generatedNormal_eq
  poly_eq := generatedPoly_eq

theorem generatedWeightedDirect_nonpos_on_cube
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    DenominatorCube.weightedDirectWalshDotAtRank
        generatedRank mask generatedWeights <= 0 := by
  have hcoeff := generatedTraceCert.coeffEval_eq_weightedDirect mask
  have hnonpos := generatedScaledPoly_coeffEval_nonpos_on_cube hmask
  rw [hcoeff] at hnonpos
  exact hnonpos

theorem weightedTraceCertOneCubeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertOneCubeSmoke
