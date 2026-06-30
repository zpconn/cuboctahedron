import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx03Smoke

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
  dm11 := 0

def generatedNormal03_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal03_z : WalshAffine where
  c := 0
  y := 0
  z := 1
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal03 : WalshAffineVec3 where
  x := generatedNormal03_x
  y := generatedNormal03_y
  z := generatedNormal03_z

theorem generatedWord_get_03 :
    generatedWord.get (3 : WordIndex) = PairId.z := by
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

private def generatedNormal03Trace :
    ImpactNormalWalshTrace generatedWord (3 : WordIndex) generatedNormal03 where
  prefixM := generatedPrefixM03
  prefix_eq := generatedPrefixM03_eq
  normal_eq_from_prefix := generatedNormal03_eq_from_prefix

theorem generatedNormal03_eq :
    generatedNormal03 = impactNormalWalshAt generatedWord (3 : WordIndex) :=
  generatedNormal03Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx03Smoke
