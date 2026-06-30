import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitDataSmoke

/-!
Generated AP16DK split Walsh-vector trace step `5`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

theorem generatedTrace_step_05 :
    generatedPrefix (5 + 1) =
      translationPrefixWalshStepAt generatedWord (5 : WordIndex)
        (generatedPrefix 5) := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref05, generatedPref05_x, generatedPref05_y, generatedPref05_z, generatedPref06, generatedPref06_x, generatedPref06_y, generatedPref06_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, translationPrefixWalshStepAt, signedCoeffWalshAt, countPairBeforeNat, generatedPref05, generatedPref05_x, generatedPref05_y, generatedPref05_z, generatedPref06, generatedPref06_x, generatedPref06_y, generatedPref06_z]

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitSmoke
