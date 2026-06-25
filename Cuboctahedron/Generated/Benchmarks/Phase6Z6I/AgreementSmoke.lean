import Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline
import Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate

/-!
Agreement smoke for Phase 6Z.6I.

The scaled benchmark is not a replacement model.  These small checks show that
the benchmark integer rows agree with the current rational benchmark rows.
-/

namespace Cuboctahedron.Generated.Benchmarks.Phase6Z6I.AgreementSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline
open Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate

theorem firstLine_agrees :
    toStrictLin2 benchFirstLineScaled = benchFirstLine := by
  norm_num [toStrictLin2, benchFirstLineScaled, benchFirstLine]

theorem secondLine_agrees :
    toStrictLin2 benchSecondLineScaled = benchSecondLine := by
  norm_num [toStrictLin2, benchSecondLineScaled, benchSecondLine]

theorem scaled_rows_preserve_template :
    lineEqEqPos benchFirstLineScaled = true /\
      lineFixed benchSecondLineScaled 1 1 = true := by
  exact ⟨benchFirst_shape, benchSecond_shape⟩

theorem rational_baseline_still_kills :
    TranslationGoodCaseKilled benchRank benchMask :=
  benchKilled

end Cuboctahedron.Generated.Benchmarks.Phase6Z6I.AgreementSmoke
