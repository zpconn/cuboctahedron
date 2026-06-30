import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx01Smoke

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
  d1m1 := 0
  dm11 := 0

def generatedNormal01_y : WalshAffine where
  c := 0
  y := 1
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal01_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal01 : WalshAffineVec3 where
  x := generatedNormal01_x
  y := generatedNormal01_y
  z := generatedNormal01_z

theorem generatedWord_get_01 :
    generatedWord.get (1 : WordIndex) = PairId.y := by
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

private def generatedNormal01Trace :
    ImpactNormalWalshTrace generatedWord (1 : WordIndex) generatedNormal01 where
  prefixM := generatedPrefixM01
  prefix_eq := generatedPrefixM01_eq
  normal_eq_from_prefix := generatedNormal01_eq_from_prefix

theorem generatedNormal01_eq :
    generatedNormal01 = impactNormalWalshAt generatedWord (1 : WordIndex) :=
  generatedNormal01Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx01Smoke
