import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke.generatedWord

def generatedPrefixM10 : Mat3 Rat where
  m00 := -1/3
  m01 := -2/3
  m02 := 2/3
  m10 := 2/3
  m11 := 1/3
  m12 := 2/3
  m20 := -2/3
  m21 := 2/3
  m22 := 1/3

def generatedNormal10_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal10_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 5/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal10_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1/3
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal10 : WalshAffineVec3 where
  x := generatedNormal10_x
  y := generatedNormal10_y
  z := generatedNormal10_z

theorem generatedWord_get_10 :
    generatedWord.get (10 : WordIndex) = PairId.d111 := by
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

private def generatedNormal10Trace :
    ImpactNormalWalshTrace generatedWord (10 : WordIndex) generatedNormal10 where
  prefixM := generatedPrefixM10
  prefix_eq := generatedPrefixM10_eq
  normal_eq_from_prefix := generatedNormal10_eq_from_prefix

theorem generatedNormal10_eq :
    generatedNormal10 = impactNormalWalshAt generatedWord (10 : WordIndex) :=
  generatedNormal10Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke
