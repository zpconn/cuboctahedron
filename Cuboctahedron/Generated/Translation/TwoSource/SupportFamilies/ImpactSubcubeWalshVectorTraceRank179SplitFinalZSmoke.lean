import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank179SplitDataSmoke

/-!
Generated AP16DK split Walsh-vector trace final-vector component `z`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank179SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

theorem generatedTrace_final_z :
    generatedVector.z =
      (WalshAffineVec3.add (generatedPrefix 13)
        (WalshAffineVec3.const
          (matVec (pairPrefixLinearNat generatedWord 13)
            (pairReflectionDeltaQ PairId.x)))).z := by
  simp [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, generatedVector, generatedVector_x, generatedVector_y, generatedVector_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z] <;> norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const, WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, scalarMul, canonicalNormalQ, generatedVector, generatedVector_x, generatedVector_y, generatedVector_z, generatedPref13, generatedPref13_x, generatedPref13_y, generatedPref13_z]

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank179SplitSmoke
