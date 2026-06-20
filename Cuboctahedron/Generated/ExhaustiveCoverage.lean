import Cuboctahedron.Generated.NonIdentity.Complete
import Cuboctahedron.Generated.NonIdentity.Coverage.All
import Cuboctahedron.Generated.Translation.Complete
import Cuboctahedron.Generated.Translation.Coverage.All

/-!
Conditional public generated coverage assembly.

This module packages the currently available public generated coverage layers
into the existing Step 15-facing `ExhaustiveGeneratedCoverage` structure.  The
assembly remains conditional on the two generated bridge theorems that are not
yet exposed unconditionally.
-/

namespace Cuboctahedron.Generated

structure PublicCoverageBridges : Prop where
  nonidentityResidual : NonIdentity.ResidualBridge
  translationFarkas : Translation.FarkasBridge

structure PublicCoverageIntervals : Prop where
  nonidentityResidual :
    Coverage.CoversInterval
      NonIdentity.Coverage.ResidualRankCertified 0 numPairWords
  translationFarkas :
    Coverage.CoversInterval
      Translation.Coverage.FarkasRankCertified 0 numPairWords

structure PublicComputableCoverageBridges where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentityResidual : nonidentityClassifier.ResidualBridge
  translationFarkas : translationClassifier.FarkasBridge

structure PublicComputableCoverageIntervals where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentityResidual :
    Coverage.CoversInterval
      (NonIdentity.Coverage.ResidualRankCertifiedBy
        nonidentityClassifier) 0 numPairWords
  translationFarkas :
    Coverage.CoversInterval
      (Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) 0 numPairWords

def PublicCoverageIntervals.toBridges
    (intervals : PublicCoverageIntervals) :
    PublicCoverageBridges where
  nonidentityResidual :=
    NonIdentity.Coverage.residualBridge_of_interval
      intervals.nonidentityResidual
  translationFarkas :=
    Translation.Coverage.farkasBridge_of_interval
      intervals.translationFarkas

def PublicComputableCoverageIntervals.toBridges
    (intervals : PublicComputableCoverageIntervals) :
    PublicComputableCoverageBridges where
  nonidentityClassifier := intervals.nonidentityClassifier
  translationClassifier := intervals.translationClassifier
  nonidentityResidual :=
    NonIdentity.Coverage.residualBridge_of_interval_by
      intervals.nonidentityClassifier intervals.nonidentityResidual
  translationFarkas :=
    Translation.Coverage.farkasBridge_of_interval_by
      intervals.translationClassifier intervals.translationFarkas

def allPairRanksChunk : CoverageChunk where
  startRank := 0
  endRank := numPairWords
  expectedItems := numPairWords

theorem allPairRanksChunk_covers (r : Fin numPairWords) :
    CoverageChunk.CoversPairRank allPairRanksChunk r := by
  unfold CoverageChunk.CoversPairRank allPairRanksChunk
  exact ⟨Nat.zero_le r.val, r.isLt⟩

def exhaustiveGeneratedCoverageOfBridges
    (bridges : PublicCoverageBridges) :
    ExhaustiveGeneratedCoverage where
  pair_rank_covered := by
    intro r
    exact ⟨allPairRanksChunk, allPairRanksChunk_covers r⟩
  sign_mask_covered := by
    intro mask
    exact mask.isLt
  nonidentity_complete := by
    intro r hM
    exact NonIdentity.complete_of_residual_bridge
      bridges.nonidentityResidual r hM
  translation_complete := by
    intro r mask hM
    exact Translation.complete_of_farkas_bridge
      bridges.translationFarkas r mask hM

def exhaustiveGeneratedCoverageOfComputableBridges
    (bridges : PublicComputableCoverageBridges) :
    ExhaustiveGeneratedCoverage where
  pair_rank_covered := by
    intro r
    exact ⟨allPairRanksChunk, allPairRanksChunk_covers r⟩
  sign_mask_covered := by
    intro mask
    exact mask.isLt
  nonidentity_complete := by
    intro r hM
    exact NonIdentity.complete_of_computable_residual_bridge
      bridges.nonidentityClassifier bridges.nonidentityResidual r hM
  translation_complete := by
    intro r mask hM
    exact Translation.complete_of_computable_farkas_bridge
      bridges.translationClassifier bridges.translationFarkas r mask hM

def exhaustiveGeneratedCoverageOfIntervals
    (intervals : PublicCoverageIntervals) :
    ExhaustiveGeneratedCoverage :=
  exhaustiveGeneratedCoverageOfBridges intervals.toBridges

def exhaustiveGeneratedCoverageOfComputableIntervals
    (intervals : PublicComputableCoverageIntervals) :
    ExhaustiveGeneratedCoverage :=
  exhaustiveGeneratedCoverageOfComputableBridges intervals.toBridges

end Cuboctahedron.Generated
