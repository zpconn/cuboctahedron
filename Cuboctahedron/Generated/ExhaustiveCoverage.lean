import Cuboctahedron.Generated.NonIdentity.Complete
import Cuboctahedron.Generated.Translation.Complete

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

end Cuboctahedron.Generated
