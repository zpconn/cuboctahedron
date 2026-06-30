import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitDataSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep00Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep01Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep02Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep03Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep04Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep05Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep06Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep07Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep08Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep09Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep10Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep11Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitStep12Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitFinalSmoke

/-!
Generated AP16DK split Walsh-vector trace root.
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

def generatedTrace :
    TranslationWalshVectorTrace generatedWord generatedVector where
  pref := generatedPrefix
  zero_eq := by
    norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const,
      WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const,
      WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero,
      pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ,
      matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot,
      scalarMul, canonicalNormalQ, generatedPref00, generatedPref00_x,
      generatedPref00_y, generatedPref00_z, WalshAffineVec3.zero]
  step_eq := by
    intro i
    fin_cases i
    · exact generatedTrace_step_00
    · exact generatedTrace_step_01
    · exact generatedTrace_step_02
    · exact generatedTrace_step_03
    · exact generatedTrace_step_04
    · exact generatedTrace_step_05
    · exact generatedTrace_step_06
    · exact generatedTrace_step_07
    · exact generatedTrace_step_08
    · exact generatedTrace_step_09
    · exact generatedTrace_step_10
    · exact generatedTrace_step_11
    · exact generatedTrace_step_12
  final_eq := generatedTrace_final

theorem generatedVector_eq_translationVectorWalsh :
    generatedVector = translationVectorWalshOfChoice generatedWord :=
  TranslationWalshVectorTrace.final_eq_translationVectorWalsh generatedTrace

theorem generatedVector_eval_eq_translationVector (mask : SignMask) :
    generatedVector.eval mask = translationVectorOfChoice generatedWord mask := by
  rw [generatedVector_eq_translationVectorWalsh,
    translationVectorWalshOfChoice_eval]

theorem generatedUnrank_builds :
    unrankPairWord generatedRank = generatedWord :=
  generatedUnrank

theorem walshVectorTraceSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank49SplitSmoke
