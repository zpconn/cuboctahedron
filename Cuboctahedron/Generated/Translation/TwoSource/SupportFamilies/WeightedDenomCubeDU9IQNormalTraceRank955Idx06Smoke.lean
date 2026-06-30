import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke.generatedWord

def generatedPrefixM06 : Mat3 Rat where
  m00 := -1/3
  m01 := 2/3
  m02 := -2/3
  m10 := -2/3
  m11 := 1/3
  m12 := 2/3
  m20 := 2/3
  m21 := 2/3
  m22 := 1/3

def generatedNormal06_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -5/3
  dm11 := 0

def generatedNormal06_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1/3
  dm11 := 0

def generatedNormal06_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 1/3
  dm11 := 0

def generatedNormal06 : WalshAffineVec3 where
  x := generatedNormal06_x
  y := generatedNormal06_y
  z := generatedNormal06_z

theorem generatedWord_get_06 :
    generatedWord.get (6 : WordIndex) = PairId.d1m1 := by
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

private def generatedNormal06Trace :
    ImpactNormalWalshTrace generatedWord (6 : WordIndex) generatedNormal06 where
  prefixM := generatedPrefixM06
  prefix_eq := generatedPrefixM06_eq
  normal_eq_from_prefix := generatedNormal06_eq_from_prefix

theorem generatedNormal06_eq :
    generatedNormal06 = impactNormalWalshAt generatedWord (6 : WordIndex) :=
  generatedNormal06Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx06Smoke
