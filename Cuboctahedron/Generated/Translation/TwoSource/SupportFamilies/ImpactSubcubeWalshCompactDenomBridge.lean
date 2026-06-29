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

private theorem wordImpact_ne_zero (i : WordIndex) :
    wordImpact i ≠ (0 : Impact15) := by
  simp [wordImpact, afterStart]

private theorem wordImpact_ne_last (i : WordIndex) :
    wordImpact i ≠ lastImpact := by
  intro h
  have hv := congrArg Fin.val h
  simp [wordImpact, afterStart, lastImpact] at hv
  omega

theorem walshDot_pos_of_goodDirection
    {r : Fin numPairWords} {mask : SignMask} {i : WordIndex}
    {normal vector : WalshAffineVec3}
    (hdenom :
      impactDenomAtRank r mask (wordImpact i) =
        Cuboctahedron.dot (normal.eval mask) (vector.eval mask))
    (hgood : GoodDirectionAtRank r mask) :
    0 < Cuboctahedron.dot (normal.eval mask) (vector.eval mask) := by
  have hpos :
      0 < impactDenomAtRank r mask (wordImpact i) :=
    hgood ⟨wordImpact i, wordImpact_ne_zero i, wordImpact_ne_last i⟩
  simpa [hdenom] using hpos

theorem walshDot_pos_of_goodDirection_wordImpact
    {r : Fin numPairWords} {mask : SignMask} {i : WordIndex}
    {w : PairWord} {normal vector : WalshAffineVec3}
    (hunrank : unrankPairWord r = w)
    (hnormal :
      normal.eval mask =
        matVec (pairPrefixLinearNat w i.val)
          (scalarMul (signedCoeffAt w mask i)
            (canonicalNormalQ (w.get i))))
    (hvector : vector.eval mask = translationVectorOfChoice w mask)
    (hgood : GoodDirectionAtRank r mask) :
    0 < Cuboctahedron.dot (normal.eval mask) (vector.eval mask) :=
  walshDot_pos_of_goodDirection
    (impactDenomAtRank_wordImpact_eq_walshDot
      hunrank hnormal hvector)
    hgood

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
