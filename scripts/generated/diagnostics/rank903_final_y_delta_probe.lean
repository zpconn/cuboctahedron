import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank903SplitDataSmoke

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank903SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

private theorem finalDelta_vec :
    matVec (pairPrefixLinearNat generatedWord 13)
      (pairReflectionDeltaQ PairId.x) =
        ({ x := -2, y := 0, z := 0 } : Vec3 Rat) := by
  apply Vec3.ext <;>
    simp [pairPrefixLinearNat, pairReflectionDeltaQ, reflD,
      canonicalOffsetQ, matVec, matMul, matId, reflM, matSub,
      scalarMat, outer, dot, scalarMul, canonicalNormalQ] <;>
    norm_num [pairPrefixLinearNat, pairReflectionDeltaQ, reflD,
      canonicalOffsetQ, matVec, matMul, matId, reflM, matSub,
      scalarMat, outer, dot, scalarMul, canonicalNormalQ]

theorem generatedTrace_final_y_delta_probe :
    generatedVector.y =
      (WalshAffineVec3.add (generatedPrefix 13)
      (WalshAffineVec3.const
          (matVec (pairPrefixLinearNat generatedWord 13)
            (pairReflectionDeltaQ PairId.x)))).y := by
  rw [finalDelta_vec]
  simp [generatedVector, generatedVector_y, generatedPrefix, generatedPref13,
    generatedPref13_y, WalshAffineVec3.add, WalshAffineVec3.const,
    WalshAffine.add, WalshAffine.const]

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank903SplitSmoke
