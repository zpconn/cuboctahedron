import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank365SplitFinalXSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank365SplitFinalYSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank365SplitFinalZSmoke

/-!
Generated AP16DK split Walsh-vector trace final-vector proof from components.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank365SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

theorem generatedTrace_final :
    generatedVector =
      WalshAffineVec3.add (generatedPrefix 13)
        (WalshAffineVec3.const
          (matVec (pairPrefixLinearNat generatedWord 13)
            (pairReflectionDeltaQ PairId.x))) :=
  WalshAffineVec3.ext
    generatedTrace_final_x
    generatedTrace_final_y
    generatedTrace_final_z

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank365SplitSmoke
