import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke

/-!
Generated DU.9BU shared data module for chained weighted trace
certificate smoke modules.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke

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

theorem generatedNormal00_eq :
    generatedNormal00 = impactNormalWalshAt generatedWord (0 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal01_eq :
    generatedNormal01 = impactNormalWalshAt generatedWord (1 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_01, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal01, generatedNormal01_x, generatedNormal01_y, generatedNormal01_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_01, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal02_eq :
    generatedNormal02 = impactNormalWalshAt generatedWord (2 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_02, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal02, generatedNormal02_x, generatedNormal02_y, generatedNormal02_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_02, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal03_eq :
    generatedNormal03 = impactNormalWalshAt generatedWord (3 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_03, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal03, generatedNormal03_x, generatedNormal03_y, generatedNormal03_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_03, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal04_eq :
    generatedNormal04 = impactNormalWalshAt generatedWord (4 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_04, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal04, generatedNormal04_x, generatedNormal04_y, generatedNormal04_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_04, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal05_eq :
    generatedNormal05 = impactNormalWalshAt generatedWord (5 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_05, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal05, generatedNormal05_x, generatedNormal05_y, generatedNormal05_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_05, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal06_eq :
    generatedNormal06 = impactNormalWalshAt generatedWord (6 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_06, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal06, generatedNormal06_x, generatedNormal06_y, generatedNormal06_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_06, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal07_eq :
    generatedNormal07 = impactNormalWalshAt generatedWord (7 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal08_eq :
    generatedNormal08 = impactNormalWalshAt generatedWord (8 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_08, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal08, generatedNormal08_x, generatedNormal08_y, generatedNormal08_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_08, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal09_eq :
    generatedNormal09 = impactNormalWalshAt generatedWord (9 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_09, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal09, generatedNormal09_x, generatedNormal09_y, generatedNormal09_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_09, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal10_eq :
    generatedNormal10 = impactNormalWalshAt generatedWord (10 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_10, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal10, generatedNormal10_x, generatedNormal10_y, generatedNormal10_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_10, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal11_eq :
    generatedNormal11 = impactNormalWalshAt generatedWord (11 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_11, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal11, generatedNormal11_x, generatedNormal11_y, generatedNormal11_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_11, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal12_eq :
    generatedNormal12 = impactNormalWalshAt generatedWord (12 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_12, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal12, generatedNormal12_x, generatedNormal12_y, generatedNormal12_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_12, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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

theorem generatedNormal_eq
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

theorem chainDataSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertChainDataSmoke
