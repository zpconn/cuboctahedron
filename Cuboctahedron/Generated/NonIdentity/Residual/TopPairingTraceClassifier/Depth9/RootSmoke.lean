import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth9.Shard000

/-!
Semantic depth-9 provider smoke for the top-pairing trace classifier.

This file checks the next classifier-provider shape after the terminal producer
bridge: a closed top-pairing rank, together with membership in one depth-8
parent shard, deterministically advances to the corresponding depth-9 shard.
It contains no sampled rank/path objects.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth9.RootSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth9.Shard000

def ClosedRankInDepth9Shard000Parent (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    Depth8ParentShard000Labels (topPairingRankFaceLabels rank)

theorem depth9Shard000Labels_of_closed_parent
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hparent : Depth8ParentShard000Labels (topPairingRankFaceLabels rank)) :
    Depth9Shard000Labels (topPairingRankFaceLabels rank) := by
  have hs :
      TopPairingStepScheduleLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using hclosed.schedule
  have hg :
      TopPairingSquareGapLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using hclosed.squareGap
  have ha :
      TopPairingLocalAxisLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using hclosed.localAxis
  have hc :
      TopPairingPairCountsLabels (topPairingRankFaceLabels rank) := by
    simpa [topPairingRankFaceLabels] using
      TopPairingClosedLanguageAtRank.pairCounts hclosed
  exact labels_prefix9_shard_000 hs hg ha hc hparent

theorem depth9Shard000Labels_of_parent_family
    {rank : Fin numPairWords}
    (hfamily : ClosedRankInDepth9Shard000Parent rank) :
    Depth9Shard000Labels (topPairingRankFaceLabels rank) :=
  depth9Shard000Labels_of_closed_parent hfamily.1 hfamily.2

theorem rootSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth9.RootSmoke
