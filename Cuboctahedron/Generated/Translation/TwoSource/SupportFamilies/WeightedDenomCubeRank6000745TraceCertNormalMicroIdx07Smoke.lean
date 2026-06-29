import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedWalshQuadraticTraceCertificate
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745ChainSplitSmoke

/-!
Generated DU.9CC one-normal smoke module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalMicroIdx07Smoke

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

def generatedNormal07_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal07_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 1
  d1m1 := 0
  dm11 := 0

def generatedNormal07_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := -1
  d1m1 := 0
  dm11 := 0

def generatedNormal07 : WalshAffineVec3 where
  x := generatedNormal07_x
  y := generatedNormal07_y
  z := generatedNormal07_z

theorem generatedWord_get_07 :
    generatedWord.get (7 : WordIndex) = PairId.d11m := by
  rfl

theorem generatedNormal07_eq :
    generatedNormal07 = impactNormalWalshAt generatedWord (7 : WordIndex) := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal07, generatedNormal07_x, generatedNormal07_y, generatedNormal07_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, generatedWord_get_07, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem normalMicroSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745TraceCertNormalMicroIdx07Smoke
