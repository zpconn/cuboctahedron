import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke

/-!
Generated DU.9CH shared dot-data module using traced impact normals.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataOneCubeDataSmoke

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

def generatedPrefixM00 : Mat3 Rat where
  m00 := 1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal00_x : WalshAffine where
  c := -1
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal00_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal00_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal00 : WalshAffineVec3 where
  x := generatedNormal00_x
  y := generatedNormal00_y
  z := generatedNormal00_z

theorem generatedWord_get_00 :
    generatedWord.get (0 : WordIndex) = PairId.x := by
  rfl

theorem generatedPrefixM00_eq :
    generatedPrefixM00 = pairPrefixLinearNat generatedWord 0 := by
  norm_num [generatedPrefixM00, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal00_eq_from_prefix :
    generatedNormal00 =
      impactNormalWalshFromPrefix generatedWord (0 : WordIndex) generatedPrefixM00 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshFromPrefix, generatedPrefixM00, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshFromPrefix, generatedPrefixM00, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM01 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal01_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

def generatedNormal01_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

def generatedNormal01_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 1
  dm11 := 0

def generatedNormal01 : WalshAffineVec3 where
  x := generatedNormal01_x
  y := generatedNormal01_y
  z := generatedNormal01_z

theorem generatedWord_get_01 :
    generatedWord.get (1 : WordIndex) = PairId.d1m1 := by
  rfl

theorem generatedPrefixM01_eq :
    generatedPrefixM01 = pairPrefixLinearNat generatedWord 1 := by
  norm_num [generatedPrefixM01, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal01_eq_from_prefix :
    generatedNormal01 =
      impactNormalWalshFromPrefix generatedWord (1 : WordIndex) generatedPrefixM01 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, impactNormalWalshFromPrefix, generatedPrefixM01, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_01, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, impactNormalWalshFromPrefix, generatedPrefixM01, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_01, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM02 : Mat3 Rat where
  m00 := -1/3
  m01 := -2/3
  m02 := 2/3
  m10 := 2/3
  m11 := 1/3
  m12 := 2/3
  m20 := -2/3
  m21 := 2/3
  m22 := 1/3

def generatedNormal02_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

def generatedNormal02_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

def generatedNormal02_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 1
  dm11 := 0

def generatedNormal02 : WalshAffineVec3 where
  x := generatedNormal02_x
  y := generatedNormal02_y
  z := generatedNormal02_z

theorem generatedWord_get_02 :
    generatedWord.get (2 : WordIndex) = PairId.d1m1 := by
  rfl

theorem generatedPrefixM02_eq :
    generatedPrefixM02 = pairPrefixLinearNat generatedWord 2 := by
  norm_num [generatedPrefixM02, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal02_eq_from_prefix :
    generatedNormal02 =
      impactNormalWalshFromPrefix generatedWord (2 : WordIndex) generatedPrefixM02 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, impactNormalWalshFromPrefix, generatedPrefixM02, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_02, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, impactNormalWalshFromPrefix, generatedPrefixM02, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_02, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM03 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal03_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal03_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal03_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal03 : WalshAffineVec3 where
  x := generatedNormal03_x
  y := generatedNormal03_y
  z := generatedNormal03_z

theorem generatedWord_get_03 :
    generatedWord.get (3 : WordIndex) = PairId.dm11 := by
  rfl

theorem generatedPrefixM03_eq :
    generatedPrefixM03 = pairPrefixLinearNat generatedWord 3 := by
  norm_num [generatedPrefixM03, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal03_eq_from_prefix :
    generatedNormal03 =
      impactNormalWalshFromPrefix generatedWord (3 : WordIndex) generatedPrefixM03 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, impactNormalWalshFromPrefix, generatedPrefixM03, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_03, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, impactNormalWalshFromPrefix, generatedPrefixM03, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_03, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM04 : Mat3 Rat where
  m00 := -1/3
  m01 := -2/3
  m02 := -2/3
  m10 := 2/3
  m11 := 1/3
  m12 := -2/3
  m20 := 2/3
  m21 := -2/3
  m22 := 1/3

def generatedNormal04_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -5/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal04_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal04_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal04 : WalshAffineVec3 where
  x := generatedNormal04_x
  y := generatedNormal04_y
  z := generatedNormal04_z

theorem generatedWord_get_04 :
    generatedWord.get (4 : WordIndex) = PairId.d111 := by
  rfl

theorem generatedPrefixM04_eq :
    generatedPrefixM04 = pairPrefixLinearNat generatedWord 4 := by
  norm_num [generatedPrefixM04, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal04_eq_from_prefix :
    generatedNormal04 =
      impactNormalWalshFromPrefix generatedWord (4 : WordIndex) generatedPrefixM04 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, impactNormalWalshFromPrefix, generatedPrefixM04, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_04, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, impactNormalWalshFromPrefix, generatedPrefixM04, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_04, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM05 : Mat3 Rat where
  m00 := 7/9
  m01 := 4/9
  m02 := 4/9
  m10 := 4/9
  m11 := 1/9
  m12 := -8/9
  m20 := 4/9
  m21 := -8/9
  m22 := 1/9

def generatedNormal05_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -5/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal05_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal05_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal05 : WalshAffineVec3 where
  x := generatedNormal05_x
  y := generatedNormal05_y
  z := generatedNormal05_z

theorem generatedWord_get_05 :
    generatedWord.get (5 : WordIndex) = PairId.d111 := by
  rfl

theorem generatedPrefixM05_eq :
    generatedPrefixM05 = pairPrefixLinearNat generatedWord 5 := by
  norm_num [generatedPrefixM05, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal05_eq_from_prefix :
    generatedNormal05 =
      impactNormalWalshFromPrefix generatedWord (5 : WordIndex) generatedPrefixM05 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, impactNormalWalshFromPrefix, generatedPrefixM05, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_05, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, impactNormalWalshFromPrefix, generatedPrefixM05, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_05, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM06 : Mat3 Rat where
  m00 := -1/3
  m01 := -2/3
  m02 := -2/3
  m10 := 2/3
  m11 := 1/3
  m12 := -2/3
  m20 := 2/3
  m21 := -2/3
  m22 := 1/3

def generatedNormal06_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal06_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal06_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal06 : WalshAffineVec3 where
  x := generatedNormal06_x
  y := generatedNormal06_y
  z := generatedNormal06_z

theorem generatedWord_get_06 :
    generatedWord.get (6 : WordIndex) = PairId.dm11 := by
  rfl

theorem generatedPrefixM06_eq :
    generatedPrefixM06 = pairPrefixLinearNat generatedWord 6 := by
  norm_num [generatedPrefixM06, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal06_eq_from_prefix :
    generatedNormal06 =
      impactNormalWalshFromPrefix generatedWord (6 : WordIndex) generatedPrefixM06 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, impactNormalWalshFromPrefix, generatedPrefixM06, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_06, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, impactNormalWalshFromPrefix, generatedPrefixM06, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_06, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM07 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal07_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal07_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 1
  d1m1 := 0
  dm11 := 0

def generatedNormal07_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal07 : WalshAffineVec3 where
  x := generatedNormal07_x
  y := generatedNormal07_y
  z := generatedNormal07_z

theorem generatedWord_get_07 :
    generatedWord.get (7 : WordIndex) = PairId.d11m := by
  rfl

theorem generatedPrefixM07_eq :
    generatedPrefixM07 = pairPrefixLinearNat generatedWord 7 := by
  norm_num [generatedPrefixM07, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal07_eq_from_prefix :
    generatedNormal07 =
      impactNormalWalshFromPrefix generatedWord (7 : WordIndex) generatedPrefixM07 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshFromPrefix, generatedPrefixM07, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshFromPrefix, generatedPrefixM07, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM08 : Mat3 Rat where
  m00 := -1/3
  m01 := 2/3
  m02 := -2/3
  m10 := -2/3
  m11 := 1/3
  m12 := 2/3
  m20 := 2/3
  m21 := 2/3
  m22 := 1/3

def generatedNormal08_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal08_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 1
  d1m1 := 0
  dm11 := 0

def generatedNormal08_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal08 : WalshAffineVec3 where
  x := generatedNormal08_x
  y := generatedNormal08_y
  z := generatedNormal08_z

theorem generatedWord_get_08 :
    generatedWord.get (8 : WordIndex) = PairId.d11m := by
  rfl

theorem generatedPrefixM08_eq :
    generatedPrefixM08 = pairPrefixLinearNat generatedWord 8 := by
  norm_num [generatedPrefixM08, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal08_eq_from_prefix :
    generatedNormal08 =
      impactNormalWalshFromPrefix generatedWord (8 : WordIndex) generatedPrefixM08 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, impactNormalWalshFromPrefix, generatedPrefixM08, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_08, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, impactNormalWalshFromPrefix, generatedPrefixM08, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_08, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM09 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal09_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal09_y : WalshAffine where
  c := 0
  y := 1
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal09_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal09 : WalshAffineVec3 where
  x := generatedNormal09_x
  y := generatedNormal09_y
  z := generatedNormal09_z

theorem generatedWord_get_09 :
    generatedWord.get (9 : WordIndex) = PairId.y := by
  rfl

theorem generatedPrefixM09_eq :
    generatedPrefixM09 = pairPrefixLinearNat generatedWord 9 := by
  norm_num [generatedPrefixM09, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal09_eq_from_prefix :
    generatedNormal09 =
      impactNormalWalshFromPrefix generatedWord (9 : WordIndex) generatedPrefixM09 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, impactNormalWalshFromPrefix, generatedPrefixM09, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_09, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, impactNormalWalshFromPrefix, generatedPrefixM09, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_09, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM10 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := -1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal10_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal10_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal10_z : WalshAffine where
  c := 0
  y := 0
  z := 1
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal10 : WalshAffineVec3 where
  x := generatedNormal10_x
  y := generatedNormal10_y
  z := generatedNormal10_z

theorem generatedWord_get_10 :
    generatedWord.get (10 : WordIndex) = PairId.z := by
  rfl

theorem generatedPrefixM10_eq :
    generatedPrefixM10 = pairPrefixLinearNat generatedWord 10 := by
  norm_num [generatedPrefixM10, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal10_eq_from_prefix :
    generatedNormal10 =
      impactNormalWalshFromPrefix generatedWord (10 : WordIndex) generatedPrefixM10 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, impactNormalWalshFromPrefix, generatedPrefixM10, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_10, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, impactNormalWalshFromPrefix, generatedPrefixM10, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_10, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM11 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := -1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := -1

def generatedNormal11_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal11_y : WalshAffine where
  c := 0
  y := 1
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal11_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal11 : WalshAffineVec3 where
  x := generatedNormal11_x
  y := generatedNormal11_y
  z := generatedNormal11_z

theorem generatedWord_get_11 :
    generatedWord.get (11 : WordIndex) = PairId.y := by
  rfl

theorem generatedPrefixM11_eq :
    generatedPrefixM11 = pairPrefixLinearNat generatedWord 11 := by
  norm_num [generatedPrefixM11, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal11_eq_from_prefix :
    generatedNormal11 =
      impactNormalWalshFromPrefix generatedWord (11 : WordIndex) generatedPrefixM11 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, impactNormalWalshFromPrefix, generatedPrefixM11, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_11, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, impactNormalWalshFromPrefix, generatedPrefixM11, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_11, canonicalNormalQ, scalarMul, matVec, matId]

def generatedPrefixM12 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := -1

def generatedNormal12_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal12_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal12_z : WalshAffine where
  c := 0
  y := 0
  z := 1
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal12 : WalshAffineVec3 where
  x := generatedNormal12_x
  y := generatedNormal12_y
  z := generatedNormal12_z

theorem generatedWord_get_12 :
    generatedWord.get (12 : WordIndex) = PairId.z := by
  rfl

theorem generatedPrefixM12_eq :
    generatedPrefixM12 = pairPrefixLinearNat generatedWord 12 := by
  norm_num [generatedPrefixM12, pairPrefixLinearNat, generatedWord, canonicalNormalQ, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem generatedNormal12_eq_from_prefix :
    generatedNormal12 =
      impactNormalWalshFromPrefix generatedWord (12 : WordIndex) generatedPrefixM12 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, impactNormalWalshFromPrefix, generatedPrefixM12, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_12, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, impactNormalWalshFromPrefix, generatedPrefixM12, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_12, canonicalNormalQ, scalarMul, matVec, matId]

def generatedNormal : WordIndex -> WalshAffineVec3
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

def generatedPrefixM : WordIndex -> Mat3 Rat
  | ⟨0, _⟩ => generatedPrefixM00
  | ⟨1, _⟩ => generatedPrefixM01
  | ⟨2, _⟩ => generatedPrefixM02
  | ⟨3, _⟩ => generatedPrefixM03
  | ⟨4, _⟩ => generatedPrefixM04
  | ⟨5, _⟩ => generatedPrefixM05
  | ⟨6, _⟩ => generatedPrefixM06
  | ⟨7, _⟩ => generatedPrefixM07
  | ⟨8, _⟩ => generatedPrefixM08
  | ⟨9, _⟩ => generatedPrefixM09
  | ⟨10, _⟩ => generatedPrefixM10
  | ⟨11, _⟩ => generatedPrefixM11
  | ⟨12, _⟩ => generatedPrefixM12

theorem generatedPrefixM_eq
    (i : WordIndex) :
    generatedPrefixM i = pairPrefixLinearNat generatedWord i.val := by
  fin_cases i
  · simpa [generatedPrefixM] using generatedPrefixM00_eq
  · simpa [generatedPrefixM] using generatedPrefixM01_eq
  · simpa [generatedPrefixM] using generatedPrefixM02_eq
  · simpa [generatedPrefixM] using generatedPrefixM03_eq
  · simpa [generatedPrefixM] using generatedPrefixM04_eq
  · simpa [generatedPrefixM] using generatedPrefixM05_eq
  · simpa [generatedPrefixM] using generatedPrefixM06_eq
  · simpa [generatedPrefixM] using generatedPrefixM07_eq
  · simpa [generatedPrefixM] using generatedPrefixM08_eq
  · simpa [generatedPrefixM] using generatedPrefixM09_eq
  · simpa [generatedPrefixM] using generatedPrefixM10_eq
  · simpa [generatedPrefixM] using generatedPrefixM11_eq
  · simpa [generatedPrefixM] using generatedPrefixM12_eq

theorem generatedNormal_eq_from_prefix
    (i : WordIndex) :
    generatedNormal i = impactNormalWalshFromPrefix generatedWord i (generatedPrefixM i) := by
  fin_cases i
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal00_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal01_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal02_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal03_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal04_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal05_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal06_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal07_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal08_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal09_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal10_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal11_eq_from_prefix
  · simpa [generatedNormal, generatedPrefixM] using generatedNormal12_eq_from_prefix

private def generatedNormalTrace :
    ImpactNormalWalshVectorTrace generatedWord generatedNormal where
  prefixM := generatedPrefixM
  prefix_eq := generatedPrefixM_eq
  normal_eq_from_prefix := generatedNormal_eq_from_prefix

theorem generatedNormal_eq
    (i : WordIndex) :
    generatedNormal i = impactNormalWalshAt generatedWord i :=
  generatedNormalTrace.normal_eq_impactNormalWalshAt i

def generatedDot00 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 40/9
  d11m := 8/3
  d1m1 := 8/3
  dm11 := -8/3
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
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

theorem generatedDot00_eq :
    WalshAffineVec3.dot generatedNormal00 generatedVector =
      generatedDot00 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot00]

def generatedDot01 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 4
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -4
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 40/9
  d111_dm11 := 0
  d11m_d1m1 := -8/3
  d11m_dm11 := 0
  d1m1_dm11 := -8/3

theorem generatedDot01_eq :
    WalshAffineVec3.dot generatedNormal01 generatedVector =
      generatedDot01 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot01]

def generatedDot02 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 4
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -4
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 40/9
  d111_dm11 := 0
  d11m_d1m1 := -8/3
  d11m_dm11 := 0
  d1m1_dm11 := -8/3

theorem generatedDot02_eq :
    WalshAffineVec3.dot generatedNormal02 generatedVector =
      generatedDot02 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot02]

def generatedDot03 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -4
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 4
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := -8/3
  d11m_d1m1 := 0
  d11m_dm11 := -8/3
  d1m1_dm11 := -8/3

theorem generatedDot03_eq :
    WalshAffineVec3.dot generatedNormal03 generatedVector =
      generatedDot03 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot03]

def generatedDot04 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 20/3
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 4/3
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4/3
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40/9
  d111_d1m1 := 40/9
  d111_dm11 := -8/3
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

theorem generatedDot04_eq :
    WalshAffineVec3.dot generatedNormal04 generatedVector =
      generatedDot04 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot04]

def generatedDot05 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 20/3
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 4/3
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4/3
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40/9
  d111_d1m1 := 40/9
  d111_dm11 := -8/3
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

theorem generatedDot05_eq :
    WalshAffineVec3.dot generatedNormal05 generatedVector =
      generatedDot05 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot05]

def generatedDot06 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -4
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 4
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := -8/3
  d11m_d1m1 := 0
  d11m_dm11 := -8/3
  d1m1_dm11 := -8/3

theorem generatedDot06_eq :
    WalshAffineVec3.dot generatedNormal06 generatedVector =
      generatedDot06 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot06]

def generatedDot07 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40/9
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := -8/3
  d11m_dm11 := -8/3
  d1m1_dm11 := 0

theorem generatedDot07_eq :
    WalshAffineVec3.dot generatedNormal07 generatedVector =
      generatedDot07 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot07]

def generatedDot08 : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40/9
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := -8/3
  d11m_dm11 := -8/3
  d1m1_dm11 := 0

theorem generatedDot08_eq :
    WalshAffineVec3.dot generatedNormal08 generatedVector =
      generatedDot08 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot08]

def generatedDot09 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8/9
  y_d11m := 8/3
  y_d1m1 := -8/3
  y_dm11 := 8/3
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

theorem generatedDot09_eq :
    WalshAffineVec3.dot generatedNormal09 generatedVector =
      generatedDot09 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot09]

def generatedDot10 : WalshQuadratic where
  c := 4
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
  z_d111 := 8/9
  z_d11m := -8/3
  z_d1m1 := 8/3
  z_dm11 := 8/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

theorem generatedDot10_eq :
    WalshAffineVec3.dot generatedNormal10 generatedVector =
      generatedDot10 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot10]

def generatedDot11 : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8/9
  y_d11m := 8/3
  y_d1m1 := -8/3
  y_dm11 := 8/3
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

theorem generatedDot11_eq :
    WalshAffineVec3.dot generatedNormal11 generatedVector =
      generatedDot11 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot11]

def generatedDot12 : WalshQuadratic where
  c := 4
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
  z_d111 := 8/9
  z_d11m := -8/3
  z_d1m1 := 8/3
  z_dm11 := 8/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

theorem generatedDot12_eq :
    WalshAffineVec3.dot generatedNormal12 generatedVector =
      generatedDot12 := by
  apply WalshQuadratic.ext <;>
    norm_num [WalshAffineVec3.dot, WalshAffine.mul, WalshAffine.add, WalshAffine.const, WalshQuadratic.add, generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_x, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_y, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke.generatedVector_z, generatedDot12]

def generatedDot : WordIndex -> WalshQuadratic
  | ⟨0, _⟩ => generatedDot00
  | ⟨1, _⟩ => generatedDot01
  | ⟨2, _⟩ => generatedDot02
  | ⟨3, _⟩ => generatedDot03
  | ⟨4, _⟩ => generatedDot04
  | ⟨5, _⟩ => generatedDot05
  | ⟨6, _⟩ => generatedDot06
  | ⟨7, _⟩ => generatedDot07
  | ⟨8, _⟩ => generatedDot08
  | ⟨9, _⟩ => generatedDot09
  | ⟨10, _⟩ => generatedDot10
  | ⟨11, _⟩ => generatedDot11
  | ⟨12, _⟩ => generatedDot12

theorem generatedDot_eq
    (i : WordIndex) :
    WalshAffineVec3.dot (generatedNormal i) generatedVector = generatedDot i := by
  fin_cases i
  · simpa [generatedNormal, generatedDot] using generatedDot00_eq
  · simpa [generatedNormal, generatedDot] using generatedDot01_eq
  · simpa [generatedNormal, generatedDot] using generatedDot02_eq
  · simpa [generatedNormal, generatedDot] using generatedDot03_eq
  · simpa [generatedNormal, generatedDot] using generatedDot04_eq
  · simpa [generatedNormal, generatedDot] using generatedDot05_eq
  · simpa [generatedNormal, generatedDot] using generatedDot06_eq
  · simpa [generatedNormal, generatedDot] using generatedDot07_eq
  · simpa [generatedNormal, generatedDot] using generatedDot08_eq
  · simpa [generatedNormal, generatedDot] using generatedDot09_eq
  · simpa [generatedNormal, generatedDot] using generatedDot10_eq
  · simpa [generatedNormal, generatedDot] using generatedDot11_eq
  · simpa [generatedNormal, generatedDot] using generatedDot12_eq

theorem normalTraceDataOneCubeDataSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceDataOneCubeDataSmoke
