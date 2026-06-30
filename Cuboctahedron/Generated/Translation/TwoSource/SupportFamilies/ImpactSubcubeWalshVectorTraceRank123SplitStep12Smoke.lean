import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank123SplitStep12XSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank123SplitStep12YSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank123SplitStep12ZSmoke

/-!
Generated AP16DK split Walsh-vector trace step `12` from component proofs.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank123SplitSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

theorem generatedTrace_step_12 :
    generatedPrefix (12 + 1) =
      translationPrefixWalshStepAt generatedWord (12 : WordIndex)
        (generatedPrefix 12) :=
  WalshAffineVec3.ext
    generatedTrace_step_12_x
    generatedTrace_step_12_y
    generatedTrace_step_12_z

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank123SplitSmoke
