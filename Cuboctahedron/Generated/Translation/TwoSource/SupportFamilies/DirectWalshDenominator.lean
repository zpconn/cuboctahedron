import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCompactDenomBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TranslationWalshVector

/-!
Direct Walsh denominator bridge.

The older compact-denominator consumers imported generated rank-specific Walsh
translation-vector traces.  Those traces are useful diagnostics, but DU.9BB
showed that they are too heavy as a production backend for weighted-cube
membership leaves.

This file exposes the trace-free denominator equality: use the generic Walsh
normal and the generic Walsh translation vector for the actual pair word.  A
generated leaf may still choose to precompute a smaller polynomial, but it no
longer has to import a rank-specific split trace just to connect
`impactDenomAtRank` to Walsh arithmetic.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

theorem impactDenomAtRank_wordImpact_eq_directWalshDot
    (r : Fin numPairWords) (mask : SignMask) (i : WordIndex) :
    impactDenomAtRank r mask (wordImpact i) =
      Cuboctahedron.dot
        ((impactNormalWalshAt (unrankPairWord r) i).eval mask)
        ((translationVectorWalshOfChoice (unrankPairWord r)).eval mask) := by
  exact impactDenomAtRank_wordImpact_eq_walshDot
    (r := r)
    (mask := mask)
    (i := i)
    (w := unrankPairWord r)
    (normal := impactNormalWalshAt (unrankPairWord r) i)
    (vector := translationVectorWalshOfChoice (unrankPairWord r))
    rfl
    (impactNormalWalshAt_eval (unrankPairWord r) mask i)
    (translationVectorWalshOfChoice_eval (unrankPairWord r) mask)

theorem directWalshDenominator_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
