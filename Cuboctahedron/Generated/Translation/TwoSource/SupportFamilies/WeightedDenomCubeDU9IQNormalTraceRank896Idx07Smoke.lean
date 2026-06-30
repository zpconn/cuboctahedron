import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke.generatedWord

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
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal07_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal07_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 1

def generatedNormal07 : WalshAffineVec3 where
  x := generatedNormal07_x
  y := generatedNormal07_y
  z := generatedNormal07_z

theorem generatedWord_get_07 :
    generatedWord.get (7 : WordIndex) = PairId.dm11 := by
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

private def generatedNormal07Trace :
    ImpactNormalWalshTrace generatedWord (7 : WordIndex) generatedNormal07 where
  prefixM := generatedPrefixM07
  prefix_eq := generatedPrefixM07_eq
  normal_eq_from_prefix := generatedNormal07_eq_from_prefix

theorem generatedNormal07_eq :
    generatedNormal07 = impactNormalWalshAt generatedWord (7 : WordIndex) :=
  generatedNormal07Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke
