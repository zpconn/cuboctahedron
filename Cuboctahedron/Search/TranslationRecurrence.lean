import Cuboctahedron.Search.TranslationGoodDirection

/-!
Small recurrence lemmas for translation choices.

The generated Walsh denominator path should avoid unfolding `totalAff` for
each rank and mask.  This module collects reusable, hand-written equalities
that connect the compact pair-word recurrences to the geometric definitions.
-/

namespace Cuboctahedron

theorem faceReflectionQ_b_faceOfPairSign
    (p : PairId) (positive : Bool) :
    (faceReflectionQ (faceOfPairSign p positive)).b =
      scalarMul (if positive then (1 : Rat) else -1)
        (pairReflectionDeltaQ p) := by
  cases p <;> cases positive <;>
    apply Vec3.ext <;>
    norm_num [faceReflectionQ, reflD, pairReflectionDeltaQ,
      canonicalNormalQ, canonicalOffsetQ, faceOfPairSign, normalQ, offsetQ,
      dot, scalarMul]

theorem normalQ_faceOfPairSign
    (p : PairId) (positive : Bool) :
    normalQ (faceOfPairSign p positive) =
      scalarMul (if positive then (1 : Rat) else -1)
        (canonicalNormalQ p) := by
  cases p <;> cases positive <;>
    apply Vec3.ext <;>
    norm_num [faceOfPairSign, normalQ, canonicalNormalQ, scalarMul]

theorem normalQ_translationChoiceSeq_afterStart
    (w : PairWord) (mask : SignMask) (i : WordIndex) :
    normalQ (translationChoiceSeq w mask (afterStart i)) =
      scalarMul (signedCoeffAt w mask i)
        (canonicalNormalQ (w.get i)) := by
  have hne : afterStart i ≠ (0 : Step14) := afterStart_ne_zero i
  simp [translationChoiceSeq, hne, signedCoeffAt,
    normalQ_faceOfPairSign]

theorem pathPrefixAffNat_b_eq_translationPrefixVectorNat
    (w : PairWord) (mask : SignMask) :
    forall n : Nat, n <= 13 ->
      (pathPrefixAffNat (translationChoiceSeq w mask) n).b =
        translationPrefixVectorNat w mask n := by
  intro n
  induction n with
  | zero =>
      intro _hn
      rfl
  | succ n ih =>
      intro hnSucc
      have hn13 : n < 13 := by omega
      have hsucc14 : n + 1 < 14 := by omega
      let i : WordIndex := ⟨n, hn13⟩
      have hstep :
          (⟨n + 1, hsucc14⟩ : Step14) = afterStart i := rfl
      have hM :
          (pathPrefixAffNat (translationChoiceSeq w mask) n).M =
            pairPrefixLinearNat w n :=
        pathPrefixAffNat_M_eq_pairPrefixLinearNat
          (seq := translationChoiceSeq w mask) (w := w)
          (translationChoiceSeq_pair_matches w mask) n (by omega)
      have hb :
          (faceReflectionQ
            (translationChoiceSeq w mask ⟨n + 1, hsucc14⟩)).b =
            scalarMul (signedCoeffAt w mask i)
              (pairReflectionDeltaQ (w.get i)) := by
        rw [hstep]
        have hne : afterStart i ≠ (0 : Step14) := afterStart_ne_zero i
        simp [translationChoiceSeq, hne, signedCoeffAt,
          faceReflectionQ_b_faceOfPairSign]
      simp [pathPrefixAffNat, translationPrefixVectorNat, hsucc14, hn13,
        ih (by omega), hM, hb, affCompose]
      rw [matVec_scalarMul]
      apply Vec3.ext <;>
        simp [vecAdd, scalarMul] <;>
        ring

theorem translationBAtRankMask_eq_translationVectorOfChoice
    (r : Fin numPairWords) (mask : SignMask) :
    translationBAtRankMask r mask =
      translationVectorOfChoice (unrankPairWord r) mask := by
  have hPrefix :=
    pathPrefixAffNat_b_eq_translationPrefixVectorNat
      (unrankPairWord r) mask 13 (by omega)
  have hM :
      (pathPrefixAffNat
          (translationChoiceSeq (unrankPairWord r) mask) 13).M =
        pairPrefixLinearNat (unrankPairWord r) 13 :=
    pathPrefixAffNat_M_eq_pairPrefixLinearNat
      (seq := translationChoiceSeq (unrankPairWord r) mask)
      (w := unrankPairWord r)
      (translationChoiceSeq_pair_matches (unrankPairWord r) mask) 13
      (by omega)
  have hStartFace :
      translationChoiceSeq (unrankPairWord r) mask (0 : Step14) = Face.xp := by
    simp [translationChoiceSeq]
  have hStartDelta :
      (faceReflectionQ Face.xp).b = pairReflectionDeltaQ PairId.x := by
    apply Vec3.ext <;>
      norm_num [faceReflectionQ, reflD, pairReflectionDeltaQ,
        canonicalNormalQ, canonicalOffsetQ, normalQ, offsetQ, dot]
  change
    (totalAff (translationChoiceSeq (unrankPairWord r) mask)).b =
      translationVectorOfChoice (unrankPairWord r) mask
  unfold translationVectorOfChoice
  rw [totalAff_eq_finalPath]
  apply Vec3.ext <;>
    simp [affCompose, hPrefix, hM, hStartFace, hStartDelta, vecAdd] <;>
    ring

theorem impactPlaneNormalQ_wordImpact_translationChoiceSeq
    (w : PairWord) (mask : SignMask) (i : WordIndex) :
    impactPlaneNormalQ (translationChoiceSeq w mask) (wordImpact i) =
      matVec (pairPrefixLinearNat w i.val)
        (scalarMul (signedCoeffAt w mask i)
          (canonicalNormalQ (w.get i))) := by
  have hPrefixM :
      (pathPrefixAffNat (translationChoiceSeq w mask) i.val).M =
        pairPrefixLinearNat w i.val :=
    pathPrefixAffNat_M_eq_pairPrefixLinearNat
      (seq := translationChoiceSeq w mask) (w := w)
      (translationChoiceSeq_pair_matches w mask) i.val (by omega)
  have hSub : (wordImpact i).val - 1 = i.val := by
    simp [wordImpact, afterStart]
  unfold impactPlaneNormalQ copiedNormalQ preImpactCopyAff
  rw [impactFace_wordImpact, hSub, hPrefixM,
    normalQ_translationChoiceSeq_afterStart]

theorem impactDenomAtRank_wordImpact_eq_compact
    (r : Fin numPairWords) (mask : SignMask) (i : WordIndex) :
    impactDenomAtRank r mask (wordImpact i) =
      dot
        (matVec (pairPrefixLinearNat (unrankPairWord r) i.val)
          (scalarMul (signedCoeffAt (unrankPairWord r) mask i)
            (canonicalNormalQ ((unrankPairWord r).get i))))
        (translationVectorOfChoice (unrankPairWord r) mask) := by
  unfold impactDenomAtRank impactDenom translationSeqAtRankMask
  rw [translationBAtRankMask_eq_translationVectorOfChoice]
  rw [impactPlaneNormalQ_wordImpact_translationChoiceSeq]

theorem translationRecurrence_builds : True := by
  trivial

end Cuboctahedron
