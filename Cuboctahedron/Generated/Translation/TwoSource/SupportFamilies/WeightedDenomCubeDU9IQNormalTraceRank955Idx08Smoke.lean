import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank955ChainSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke

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

def generatedPrefixM08 : Mat3 Rat where
  m00 := 7/27
  m01 := -26/27
  m02 := -2/27
  m10 := -22/27
  m11 := -7/27
  m12 := 14/27
  m20 := -14/27
  m21 := -2/27
  m22 := -23/27

def generatedNormal08_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -35/27

def generatedNormal08_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 29/27

def generatedNormal08_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -11/27

def generatedNormal08 : WalshAffineVec3 where
  x := generatedNormal08_x
  y := generatedNormal08_y
  z := generatedNormal08_z

theorem generatedWord_get_08 :
    generatedWord.get (8 : WordIndex) = PairId.dm11 := by
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

private def generatedNormal08Trace :
    ImpactNormalWalshTrace generatedWord (8 : WordIndex) generatedNormal08 where
  prefixM := generatedPrefixM08
  prefix_eq := generatedPrefixM08_eq
  normal_eq_from_prefix := generatedNormal08_eq_from_prefix

theorem generatedNormal08_eq :
    generatedNormal08 = impactNormalWalshAt generatedWord (8 : WordIndex) :=
  generatedNormal08Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank955Idx08Smoke
