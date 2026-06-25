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

structure PublicSemanticCoverageBridges : Prop where
  nonidentityResidual : NonIdentity.KilledResidualBridge
  translationFarkas : Translation.KilledBridge

structure PublicCoverageIntervals : Prop where
  nonidentityResidual :
    Coverage.CoversInterval
      NonIdentity.Coverage.ResidualRankCertified 0 numPairWords
  translationFarkas :
    Coverage.CoversInterval
      Translation.Coverage.FarkasRankCertified 0 numPairWords

structure PublicSemanticCoverageIntervals : Prop where
  nonidentityResidual :
    Coverage.CoversInterval
      NonIdentity.Coverage.ResidualRankKilled 0 numPairWords
  translationFarkas :
    Coverage.CoversInterval
      Translation.Coverage.FarkasRankKilled 0 numPairWords

structure PublicGoodSemanticCoverageIntervals : Prop where
  nonidentityResidual :
    Coverage.CoversInterval
      NonIdentity.Coverage.ResidualRankKilled 0 numPairWords
  translationFarkas :
    Coverage.CoversInterval
      Translation.Coverage.FarkasGoodRankKilled 0 numPairWords

structure PublicComputableCoverageBridges where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentityResidual : nonidentityClassifier.ResidualBridge
  translationFarkas : translationClassifier.FarkasBridge

structure PublicComputableSemanticCoverageBridges where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentityResidual : nonidentityClassifier.KilledResidualBridge
  translationFarkas : translationClassifier.KilledFarkasBridge

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

structure PublicComputableSemanticCoverageIntervals where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentityResidual :
    Coverage.CoversInterval
      (NonIdentity.Coverage.ResidualRankKilledBy
        nonidentityClassifier) 0 numPairWords
  translationFarkas :
    Coverage.CoversInterval
      (Translation.Coverage.FarkasRankKilledBy
        translationClassifier) 0 numPairWords

structure PublicComputableGoodSemanticCoverageIntervals where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentityResidual :
    Coverage.CoversInterval
      (NonIdentity.Coverage.ResidualRankKilledBy
        nonidentityClassifier) 0 numPairWords
  translationFarkas :
    Coverage.CoversInterval
      (Translation.Coverage.FarkasGoodRankKilledBy
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

def PublicSemanticCoverageIntervals.toBridges
    (intervals : PublicSemanticCoverageIntervals) :
    PublicSemanticCoverageBridges where
  nonidentityResidual :=
    NonIdentity.Coverage.killedResidualBridge_of_interval
      intervals.nonidentityResidual
  translationFarkas :=
    Translation.Coverage.killedBridge_of_interval
      intervals.translationFarkas

def PublicGoodSemanticCoverageIntervals.toBridges
    (intervals : PublicGoodSemanticCoverageIntervals) :
    PublicSemanticCoverageBridges where
  nonidentityResidual :=
    NonIdentity.Coverage.killedResidualBridge_of_interval
      intervals.nonidentityResidual
  translationFarkas :=
    Translation.Coverage.killedBridge_of_good_interval
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

def PublicComputableSemanticCoverageIntervals.toBridges
    (intervals : PublicComputableSemanticCoverageIntervals) :
    PublicComputableSemanticCoverageBridges where
  nonidentityClassifier := intervals.nonidentityClassifier
  translationClassifier := intervals.translationClassifier
  nonidentityResidual :=
    NonIdentity.Coverage.killedResidualBridge_of_interval_by
      intervals.nonidentityClassifier intervals.nonidentityResidual
  translationFarkas :=
    Translation.Coverage.killedBridge_of_interval_by
      intervals.translationClassifier intervals.translationFarkas

def PublicComputableGoodSemanticCoverageIntervals.toBridges
    (intervals : PublicComputableGoodSemanticCoverageIntervals) :
    PublicComputableSemanticCoverageBridges where
  nonidentityClassifier := intervals.nonidentityClassifier
  translationClassifier := intervals.translationClassifier
  nonidentityResidual :=
    NonIdentity.Coverage.killedResidualBridge_of_interval_by
      intervals.nonidentityClassifier intervals.nonidentityResidual
  translationFarkas :=
    Translation.Coverage.killedBridge_of_good_interval_by
      intervals.translationClassifier intervals.translationFarkas

def allPairRanksChunk : CoverageChunk where
  startRank := 0
  endRank := numPairWords
  expectedItems := numPairWords

theorem allPairRanksChunk_covers (r : Fin numPairWords) :
    CoverageChunk.CoversPairRank allPairRanksChunk r := by
  unfold CoverageChunk.CoversPairRank allPairRanksChunk
  exact ⟨Nat.zero_le r.val, r.isLt⟩

structure SemanticExhaustiveGeneratedCoverage : Prop where
  pair_rank_covered :
    forall r : Fin numPairWords,
      exists chunk : CoverageChunk, CoverageChunk.CoversPairRank chunk r
  sign_mask_covered :
    forall mask : SignMask, mask.val < numSignMasks
  nonidentity_killed :
    forall r : Fin numPairWords,
      Coverage.NonIdentityRankKilled r
  translation_killed :
    forall (r : Fin numPairWords) (mask : SignMask),
      Coverage.TranslationCaseKilled r mask

theorem SemanticExhaustiveGeneratedCoverage.nonidentity_failure_of_valid
    (coverage : SemanticExhaustiveGeneratedCoverage)
    (w : PairWord)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w ≠ (matId : Mat3 Rat)) :
    ¬ exists seq,
      SeqRealizesPairWord w seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq := by
  intro hbad
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) := by
    simpa [hr] using hM
  apply coverage.nonidentity_killed r hM'
  rcases hbad with ⟨seq, hRealize, hStart, hLinear, hFeasible⟩
  exact ⟨seq, by simpa [hr] using hRealize, hStart, hLinear, hFeasible⟩

theorem SemanticExhaustiveGeneratedCoverage.translation_failure_of_valid
    (coverage : SemanticExhaustiveGeneratedCoverage)
    (w : PairWord)
    (mask : SignMask)
    (hvalid : ValidPairWord w)
    (hM : totalLinearOfPairWord w = (matId : Mat3 Rat)) :
    ¬ exists seq,
      SeqRealizesTranslationChoice w mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq := by
  intro hbad
  rcases unrank_rank_pairword w hvalid with ⟨r, hr⟩
  have hM' :
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) := by
    simpa [hr] using hM
  apply coverage.translation_killed r mask hM'
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  exact ⟨seq, by simpa [hr] using hRealize, hLinear, hFeasible⟩

theorem generated_nonidentity_complete_of_semantic_coverage
    (coverage : SemanticExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      totalLinear seq ≠ (matId : Mat3 Rat) ->
      ¬ UnfoldedFeasible seq := by
  intro seq hOmni hStart hM hFeasible
  rcases seq_to_pairword seq hOmni hStart with ⟨w, hValid, hMatch⟩
  let hRealize : SeqRealizesPairWord w seq := {
    valid := hValid
    startsXp := hStart
    pair_matches := hMatch
    omni := hOmni
  }
  have hWordNonId :
      totalLinearOfPairWord w ≠ (matId : Mat3 Rat) := by
    intro hWordId
    apply hM
    rw [hRealize.linear_eq, hWordId]
  exact coverage.nonidentity_failure_of_valid w hValid hWordNonId
    ⟨seq, hRealize, hStart, hM, hFeasible⟩

theorem generated_translation_complete_of_semantic_coverage
    (coverage : SemanticExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      totalLinear seq = (matId : Mat3 Rat) ->
      ¬ UnfoldedFeasible seq := by
  intro seq hOmni hStart hM hFeasible
  rcases seq_to_pairword seq hOmni hStart with ⟨w, hValid, hMatch⟩
  let hRealize : SeqRealizesPairWord w seq := {
    valid := hValid
    startsXp := hStart
    pair_matches := hMatch
    omni := hOmni
  }
  have hWordId :
      totalLinearOfPairWord w = (matId : Mat3 Rat) :=
    hRealize.linear_eq.symm.trans hM
  rcases translation_mask_exists_of_omni_seq hRealize with
    ⟨mask, hChoice⟩
  exact coverage.translation_failure_of_valid w mask hValid hWordId
    ⟨seq, hChoice, hM, hFeasible⟩

theorem no_unfolded_omni_starting_xp_of_semantic_coverage
    (coverage : SemanticExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      ¬ UnfoldedFeasible seq := by
  intro seq hOmni hStart hFeasible
  by_cases hM : totalLinear seq = (matId : Mat3 Rat)
  · exact generated_translation_complete_of_semantic_coverage coverage
      seq hOmni hStart hM hFeasible
  · exact generated_nonidentity_complete_of_semantic_coverage coverage
      seq hOmni hStart hM hFeasible

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

def semanticGeneratedCoverageOfBridges
    (bridges : PublicSemanticCoverageBridges) :
    SemanticExhaustiveGeneratedCoverage where
  pair_rank_covered := by
    intro r
    exact ⟨allPairRanksChunk, allPairRanksChunk_covers r⟩
  sign_mask_covered := by
    intro mask
    exact mask.isLt
  nonidentity_killed := by
    intro r
    exact NonIdentity.complete_killed_of_residual_bridge
      bridges.nonidentityResidual r
  translation_killed := by
    intro r mask
    exact Translation.complete_killed_of_bridge
      bridges.translationFarkas r mask

def semanticGeneratedCoverageOfComputableBridges
    (bridges : PublicComputableSemanticCoverageBridges) :
    SemanticExhaustiveGeneratedCoverage where
  pair_rank_covered := by
    intro r
    exact ⟨allPairRanksChunk, allPairRanksChunk_covers r⟩
  sign_mask_covered := by
    intro mask
    exact mask.isLt
  nonidentity_killed := by
    intro r
    exact NonIdentity.complete_killed_of_computable_residual_bridge
      bridges.nonidentityClassifier bridges.nonidentityResidual r
  translation_killed := by
    intro r mask
    exact Translation.complete_killed_of_computable_farkas_bridge
      bridges.translationClassifier bridges.translationFarkas r mask

def semanticGeneratedCoverageOfIntervals
    (intervals : PublicSemanticCoverageIntervals) :
    SemanticExhaustiveGeneratedCoverage :=
  semanticGeneratedCoverageOfBridges intervals.toBridges

def semanticGeneratedCoverageOfGoodIntervals
    (intervals : PublicGoodSemanticCoverageIntervals) :
    SemanticExhaustiveGeneratedCoverage :=
  semanticGeneratedCoverageOfBridges intervals.toBridges

def semanticGeneratedCoverageOfComputableIntervals
    (intervals : PublicComputableSemanticCoverageIntervals) :
    SemanticExhaustiveGeneratedCoverage :=
  semanticGeneratedCoverageOfComputableBridges intervals.toBridges

def semanticGeneratedCoverageOfComputableGoodIntervals
    (intervals : PublicComputableGoodSemanticCoverageIntervals) :
    SemanticExhaustiveGeneratedCoverage :=
  semanticGeneratedCoverageOfComputableBridges intervals.toBridges

end Cuboctahedron.Generated
