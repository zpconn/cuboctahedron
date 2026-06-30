import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCompactDenomBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank371SplitSmoke

/-!
Generated compact-denominator normal `x` component for rank `371`.

This component file isolates the heavy symbolic normal equality so the
main selected-impact bridge can assemble the vector equality cheaply.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank371Impact06NormalXSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank371SplitSmoke.generatedWord

def generatedNormal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := -1/3
  dm11 := 0

def selectedWordImpactIndex : WordIndex := ⟨6, by decide⟩

abbrev firstWordImpactIndex : WordIndex := selectedWordImpactIndex

private theorem generatedWord_get_selected :
    generatedWord.get firstWordImpactIndex = PairId.d1m1 := by
  rfl

theorem generatedNormal_x_eq_impactNormalWalsh_x :
    generatedNormal_x =
      (impactNormalWalshAt generatedWord firstWordImpactIndex).x := by
  apply WalshAffine.ext <;>
    simp [generatedNormal_x, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, firstWordImpactIndex, selectedWordImpactIndex, generatedWord_get_selected, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal_x, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, firstWordImpactIndex, selectedWordImpactIndex, generatedWord_get_selected, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

theorem normalXComponentSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank371Impact06NormalXSmoke
