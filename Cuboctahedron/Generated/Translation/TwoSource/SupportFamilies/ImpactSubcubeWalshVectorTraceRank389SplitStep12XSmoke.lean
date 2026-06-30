import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank389SplitDataSmoke

/-!
Generated AP16DK split Walsh-vector trace step `12` component `x`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank389SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

theorem generatedTrace_step_12_x :
    (generatedPrefix (12 + 1)).x =
      (translationPrefixWalshStepAt generatedWord (12 : WordIndex)
        (generatedPrefix 12)).x := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref12, generatedPref12_x, generatedPref12_y, generatedPref12_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref12, generatedPref12_x, generatedPref12_y, generatedPref12_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z]

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank389SplitSmoke
