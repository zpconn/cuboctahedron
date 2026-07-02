import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke

/-!
Generated depth-7 top-pairing trace-classifier shard.

This shard proves the local child alternatives for one depth-6 parent prefix.
It consumes semantic closed-language fields only; it contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth7.Shard039

open Cuboctahedron

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

theorem labels_prefix7_shard_039
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : ∃ rest : List Face, labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp] ++ rest) :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp, Face.tmmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp, Face.zm] ++ rest) := by
  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons f6 rest =>
      cases f6 <;>
        try simp
      all_goals
        unfold TopPairingStepScheduleLabels at hs
        unfold TopPairingSquareGapLabels at hg
        unfold TopPairingLocalAxisLabels at ha
        simp [TopPairingStepScheduleFrom, TopPairingSquareGapFrom,
          topPairingAllowedFacesAtStep, topPairingAllowedSquareFacesAtGap,
          isSquarePair, pairOfFace, TopPairingLocalAxisFrom,
          TopPairingLocalAxisAllows, normalQ, topPairingLocalAxis, matId,
          matVec, dot, matMul, reflM, matSub, scalarMat, outer] at hs hg ha ⊢
        try norm_num at ha

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth7.Shard039
