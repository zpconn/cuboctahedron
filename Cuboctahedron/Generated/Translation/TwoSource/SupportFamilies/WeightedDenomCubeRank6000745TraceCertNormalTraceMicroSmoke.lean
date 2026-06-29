import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactNormalWalshTrace
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke

/-!
Generated DU.9CE one-normal trace-style smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceMicroSmoke

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

def generatedPrefixM00 : Mat3 Rat where
  m00 := 1
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := 1
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := 1

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

theorem generatedPrefixM00_eq :
    generatedPrefixM00 = pairPrefixLinearNat generatedWord 0 := by
  norm_num [generatedPrefixM00, pairPrefixLinearNat, matId, generatedWord]

theorem generatedNormal00_eq_from_prefix :
    generatedNormal00 =
      impactNormalWalshFromPrefix generatedWord (0 : WordIndex) generatedPrefixM00 := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshFromPrefix, generatedPrefixM00, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, canonicalNormalQ, scalarMul, matVec, matId] <;>
    norm_num [generatedNormal00, generatedNormal00_x, generatedNormal00_y, generatedNormal00_z, impactNormalWalshFromPrefix, generatedPrefixM00, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_00, canonicalNormalQ, scalarMul, matVec, matId]

private def generatedNormal00Trace :
    ImpactNormalWalshTrace generatedWord (0 : WordIndex) generatedNormal00 where
  prefixM := generatedPrefixM00
  prefix_eq := generatedPrefixM00_eq
  normal_eq_from_prefix := generatedNormal00_eq_from_prefix

theorem generatedNormal00_eq :
    generatedNormal00 = impactNormalWalshAt generatedWord (0 : WordIndex) :=
  generatedNormal00Trace.normal_eq_impactNormalWalshAt

theorem normalTraceMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalTraceMicroSmoke
