import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.DenominatorCube
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.DirectWalshDenominator

/-!
Weighted direct Walsh denominator bridge.

`DirectWalshDenominator` rewrites a single internal denominator to the dot
product of the generic Walsh normal and generic Walsh translation vector.
Weighted-cube certificates use nonnegative combinations of internal
denominators, so this module packages the corresponding weighted rewrite once.

Generated leaves can then focus on proving that the weighted Walsh expression
matches a compact generated polynomial, instead of repeatedly unfolding the
13-denominator plumbing.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace DenominatorCube

open PositiveSurvivorClassifier.ImpactSubcube

private def directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) (i : WordIndex) : Rat :=
  Cuboctahedron.dot
    ((impactNormalWalshAt (unrankPairWord r) i).eval mask)
    ((translationVectorWalshOfChoice (unrankPairWord r)).eval mask)

def weightedDirectWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask)
    (weights : InternalImpactWeights) : Rat :=
  let d1 := directWalshDotAtRank r mask ⟨0, by decide⟩
  let d2 := directWalshDotAtRank r mask ⟨1, by decide⟩
  let d3 := directWalshDotAtRank r mask ⟨2, by decide⟩
  let d4 := directWalshDotAtRank r mask ⟨3, by decide⟩
  let d5 := directWalshDotAtRank r mask ⟨4, by decide⟩
  let d6 := directWalshDotAtRank r mask ⟨5, by decide⟩
  let d7 := directWalshDotAtRank r mask ⟨6, by decide⟩
  let d8 := directWalshDotAtRank r mask ⟨7, by decide⟩
  let d9 := directWalshDotAtRank r mask ⟨8, by decide⟩
  let d10 := directWalshDotAtRank r mask ⟨9, by decide⟩
  let d11 := directWalshDotAtRank r mask ⟨10, by decide⟩
  let d12 := directWalshDotAtRank r mask ⟨11, by decide⟩
  let d13 := directWalshDotAtRank r mask ⟨12, by decide⟩
  weights.w1 * d1 + weights.w2 * d2 + weights.w3 * d3 +
    weights.w4 * d4 + weights.w5 * d5 + weights.w6 * d6 +
      weights.w7 * d7 + weights.w8 * d8 + weights.w9 * d9 +
        weights.w10 * d10 + weights.w11 * d11 + weights.w12 * d12 +
          weights.w13 * d13

private theorem impactDenomAtRank_one_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (1 : Impact15) =
      directWalshDotAtRank r mask (0 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (0 : WordIndex)

private theorem impactDenomAtRank_two_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (2 : Impact15) =
      directWalshDotAtRank r mask (1 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (1 : WordIndex)

private theorem impactDenomAtRank_three_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (3 : Impact15) =
      directWalshDotAtRank r mask (2 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (2 : WordIndex)

private theorem impactDenomAtRank_four_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (4 : Impact15) =
      directWalshDotAtRank r mask (3 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (3 : WordIndex)

private theorem impactDenomAtRank_five_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (5 : Impact15) =
      directWalshDotAtRank r mask (4 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (4 : WordIndex)

private theorem impactDenomAtRank_six_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (6 : Impact15) =
      directWalshDotAtRank r mask (5 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (5 : WordIndex)

private theorem impactDenomAtRank_seven_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (7 : Impact15) =
      directWalshDotAtRank r mask (6 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (6 : WordIndex)

private theorem impactDenomAtRank_eight_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (8 : Impact15) =
      directWalshDotAtRank r mask (7 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (7 : WordIndex)

private theorem impactDenomAtRank_nine_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (9 : Impact15) =
      directWalshDotAtRank r mask (8 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (8 : WordIndex)

private theorem impactDenomAtRank_ten_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (10 : Impact15) =
      directWalshDotAtRank r mask (9 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (9 : WordIndex)

private theorem impactDenomAtRank_eleven_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (11 : Impact15) =
      directWalshDotAtRank r mask (10 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (10 : WordIndex)

private theorem impactDenomAtRank_twelve_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (12 : Impact15) =
      directWalshDotAtRank r mask (11 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (11 : WordIndex)

private theorem impactDenomAtRank_thirteen_eq_directWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask) :
    impactDenomAtRank r mask (13 : Impact15) =
      directWalshDotAtRank r mask (12 : WordIndex) := by
  simpa [directWalshDotAtRank, wordImpact, afterStart] using
    impactDenomAtRank_wordImpact_eq_directWalshDot r mask (12 : WordIndex)

theorem weightedDenomAtRank_eq_weightedDirectWalshDotAtRank
    (r : Fin numPairWords) (mask : SignMask)
    (weights : InternalImpactWeights) :
    weightedDenomAtRank r mask weights =
      weightedDirectWalshDotAtRank r mask weights := by
  simp [weightedDenomAtRank, weightedDirectWalshDotAtRank,
    impactDenomAtRank_one_eq_directWalshDotAtRank,
    impactDenomAtRank_two_eq_directWalshDotAtRank,
    impactDenomAtRank_three_eq_directWalshDotAtRank,
    impactDenomAtRank_four_eq_directWalshDotAtRank,
    impactDenomAtRank_five_eq_directWalshDotAtRank,
    impactDenomAtRank_six_eq_directWalshDotAtRank,
    impactDenomAtRank_seven_eq_directWalshDotAtRank,
    impactDenomAtRank_eight_eq_directWalshDotAtRank,
    impactDenomAtRank_nine_eq_directWalshDotAtRank,
    impactDenomAtRank_ten_eq_directWalshDotAtRank,
    impactDenomAtRank_eleven_eq_directWalshDotAtRank,
    impactDenomAtRank_twelve_eq_directWalshDotAtRank,
    impactDenomAtRank_thirteen_eq_directWalshDotAtRank]

theorem weightedDirectWalshDenominator_builds : True := by
  trivial

end DenominatorCube
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
