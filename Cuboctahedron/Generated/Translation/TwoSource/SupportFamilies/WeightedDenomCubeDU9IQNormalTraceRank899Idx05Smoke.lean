import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx05Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke.generatedWord

def generatedPrefixM05 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal05_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal05_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 1
  d1m1 := 0
  dm11 := 0

def generatedNormal05_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal05 : WalshAffineVec3 where
  x := generatedNormal05_x
  y := generatedNormal05_y
  z := generatedNormal05_z

theorem generatedWord_get_05 :
    generatedWord.get (5 : WordIndex) = PairId.d11m := by
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

private def generatedNormal05Trace :
    ImpactNormalWalshTrace generatedWord (5 : WordIndex) generatedNormal05 where
  prefixM := generatedPrefixM05
  prefix_eq := generatedPrefixM05_eq
  normal_eq_from_prefix := generatedNormal05_eq_from_prefix

theorem generatedNormal05_eq :
    generatedNormal05 = impactNormalWalshAt generatedWord (5 : WordIndex) :=
  generatedNormal05Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx05Smoke
