import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke

/-!
AP16CP multi-fixture Walsh-vector trace smoke.

This checks that the namespace-parametric AP16CM emitter can generate multiple
trace fixtures that are imported and consumed from one module without name
collisions.  It does not run any search or enumerate masks.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceMultiSmoke

theorem firstTraceVectorEval (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedVector.eval mask =
      translationVectorOfChoice
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedWord
        mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedVector_eval_eq_translationVector
    mask

theorem secondTraceVectorEval (mask : SignMask) :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedVector.eval mask =
      translationVectorOfChoice
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedWord
        mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedVector_eval_eq_translationVector
    mask

theorem traceFixtureRankValues :
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedRank.val = 100805 /\
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedRank.val = 101105 := by
  decide

theorem walshVectorTraceMultiSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceMultiSmoke
