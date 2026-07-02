import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke

/-!
Generated grouped depth-8 top-pairing trace-classifier shard.

This shard consumes semantic depth-7 parent prefixes and proves the local
depth-8 alternatives for a bounded parent group.  It contains no sampled rank
or path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth8.Shard027

open Cuboctahedron

set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false
set_option maxHeartbeats 0

def Depth7ParentShard027Labels (labels : List Face) : Prop :=
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp] ++ rest)

def Depth8Shard027Labels (labels : List Face) : Prop :=
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tpmp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tpmp, Face.zm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.zp] ++ rest)

theorem labels_prefix8_shard_027
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hparent : Depth7ParentShard027Labels labels) :
    Depth8Shard027Labels labels := by
  unfold Depth7ParentShard027Labels at hparent
  unfold Depth8Shard027Labels
  rcases hparent with h0 | h1 | h2 | h3
  · have hprefix := h0
    have hchild :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.zm] ++ rest) := by
      rcases hprefix with ⟨rest2, rfl⟩
      cases rest2 with
      | nil =>
          rcases hs with ⟨hlen, _⟩
          norm_num at hlen
      | cons f7 rest =>
          cases f7 <;>
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
    rcases hchild with hchild_0 | hchild_1 | hchild_2 | hchild_3
    · exact Or.inl hchild_0
    · exact Or.inr (Or.inl hchild_1)
    · exact Or.inr (Or.inr (Or.inl hchild_2))
    · exact Or.inr (Or.inr (Or.inr (Or.inl hchild_3)))
  · have hprefix := h1
    have hchild :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm, Face.tppp] ++ rest) := by
      rcases hprefix with ⟨rest2, rfl⟩
      cases rest2 with
      | nil =>
          rcases hs with ⟨hlen, _⟩
          norm_num at hlen
      | cons f7 rest =>
          cases f7 <;>
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
    rcases hchild with hchild_0 | hchild_1 | hchild_2
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_0))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_1)))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_2))))))
  · have hprefix := h2
    have hchild :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tpmp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tpmp, Face.zm] ++ rest) := by
      rcases hprefix with ⟨rest2, rfl⟩
      cases rest2 with
      | nil =>
          rcases hs with ⟨hlen, _⟩
          norm_num at hlen
      | cons f7 rest =>
          cases f7 <;>
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
    rcases hchild with hchild_0 | hchild_1
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_0)))))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_1))))))))
  · have hprefix := h3
    have hchild :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.zp] ++ rest) := by
      rcases hprefix with ⟨rest2, rfl⟩
      cases rest2 with
      | nil =>
          rcases hs with ⟨hlen, _⟩
          norm_num at hlen
      | cons f7 rest =>
          cases f7 <;>
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
    rcases hchild with hchild_0 | hchild_1 | hchild_2
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_0)))))))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_1))))))))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (hchild_2)))))))))))

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth8.Shard027
