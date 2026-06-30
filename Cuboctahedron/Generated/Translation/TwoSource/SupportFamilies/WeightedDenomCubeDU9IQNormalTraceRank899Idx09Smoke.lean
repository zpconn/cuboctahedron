import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke

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
  d1m1 := -1
  dm11 := 0

def generatedNormal09_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1
  dm11 := 0

def generatedNormal09_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 1
  dm11 := 0

def generatedNormal09 : WalshAffineVec3 where
  x := generatedNormal09_x
  y := generatedNormal09_y
  z := generatedNormal09_z

theorem generatedWord_get_09 :
    generatedWord.get (9 : WordIndex) = PairId.d1m1 := by
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

private def generatedNormal09Trace :
    ImpactNormalWalshTrace generatedWord (9 : WordIndex) generatedNormal09 where
  prefixM := generatedPrefixM09
  prefix_eq := generatedPrefixM09_eq
  normal_eq_from_prefix := generatedNormal09_eq_from_prefix

theorem generatedNormal09_eq :
    generatedNormal09 = impactNormalWalshAt generatedWord (9 : WordIndex) :=
  generatedNormal09Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke
