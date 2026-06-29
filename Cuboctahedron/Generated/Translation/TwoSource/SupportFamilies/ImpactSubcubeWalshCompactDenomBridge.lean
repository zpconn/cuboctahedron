import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Search.TranslationRecurrence

/-!
AP16CR compact denominator bridge for Walsh trace consumers.

Generated compact-denominator leaves should not replay `totalAff` or local
coordinate-specific denominator arguments.  This small theorem packages the
common proof shape: once a generated leaf supplies the rank-to-word equality,
the compact Walsh normal equality, and the Walsh vector trace equality, the
rank denominator is exactly the dot product of the generated normal and vector
at that mask.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

theorem impactDenomAtRank_wordImpact_eq_walshDot
    {r : Fin numPairWords} {mask : SignMask} {i : WordIndex}
    {w : PairWord} {normal vector : WalshAffineVec3}
    (hunrank : unrankPairWord r = w)
    (hnormal :
      normal.eval mask =
        matVec (pairPrefixLinearNat w i.val)
          (scalarMul (signedCoeffAt w mask i)
            (canonicalNormalQ (w.get i))))
    (hvector : vector.eval mask = translationVectorOfChoice w mask) :
    impactDenomAtRank r mask (wordImpact i) =
      Cuboctahedron.dot (normal.eval mask) (vector.eval mask) := by
  rw [impactDenomAtRank_wordImpact_eq_compact, hunrank, ← hnormal,
    hvector]

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
