import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke

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

def generatedPrefixM11 : Mat3 Rat where
  m00 := -1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

def generatedNormal11_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := -1
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal11_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal11_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 1
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal11 : WalshAffineVec3 where
  x := generatedNormal11_x
  y := generatedNormal11_y
  z := generatedNormal11_z

theorem generatedWord_get_11 :
    generatedWord.get (11 : WordIndex) = PairId.d111 := by
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

private def generatedNormal11Trace :
    ImpactNormalWalshTrace generatedWord (11 : WordIndex) generatedNormal11 where
  prefixM := generatedPrefixM11
  prefix_eq := generatedPrefixM11_eq
  normal_eq_from_prefix := generatedNormal11_eq_from_prefix

theorem generatedNormal11_eq :
    generatedNormal11 = impactNormalWalshAt generatedWord (11 : WordIndex) :=
  generatedNormal11Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke
