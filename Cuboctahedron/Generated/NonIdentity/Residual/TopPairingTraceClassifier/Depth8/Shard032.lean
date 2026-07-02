import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke

/-!
Generated grouped depth-8 top-pairing trace-classifier shard.

This shard consumes semantic depth-7 parent prefixes and proves the local
depth-8 alternatives for a bounded parent group.  It contains no sampled rank
or path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth8.Shard032

open Cuboctahedron

set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false
set_option maxHeartbeats 0

def Depth7ParentShard032Labels (labels : List Face) : Prop :=
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tmmm] ++ rest)

def Depth8Shard032Labels (labels : List Face) : Prop :=
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tppp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tppp] ++ rest)

theorem labels_prefix8_shard_032
    {labels : List Face}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hparent : Depth7ParentShard032Labels labels) :
    Depth8Shard032Labels labels := by
  unfold Depth7ParentShard032Labels at hparent
  unfold Depth8Shard032Labels
  rcases hparent with h0 | h1 | h2 | h3
  · have hprefix := h0
    have hchild :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tppp] ++ rest) := by
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
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppm, Face.tmmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppm, Face.tpmp] ++ rest) := by
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
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_0))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_1)))))
  · have hprefix := h2
    have hchild :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tmpm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tpmm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tppp, Face.tppm] ++ rest) := by
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
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_0))))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_1)))))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hchild_2))))))))
  · have hprefix := h3
    have hchild :
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tpmp] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tppm] ++ rest) \/
    (∃ rest : List Face,
      labels = [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tppp] ++ rest) := by
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

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Depth8.Shard032
