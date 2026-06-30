import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank714SplitDataSmoke

/-!
Generated AP16DK split Walsh-vector trace step `7`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank714SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

theorem generatedTrace_step_07 :
    generatedPrefix (7 + 1) =
      translationPrefixWalshStepAt generatedWord (7 : WordIndex)
        (generatedPrefix 7) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref07, generatedPref07_x, generatedPref07_y, generatedPref07_z, generatedPref08, generatedPref08_x, generatedPref08_y, generatedPref08_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref07, generatedPref07_x, generatedPref07_y, generatedPref07_z, generatedPref08, generatedPref08_x, generatedPref08_y, generatedPref08_z]

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank714SplitSmoke
