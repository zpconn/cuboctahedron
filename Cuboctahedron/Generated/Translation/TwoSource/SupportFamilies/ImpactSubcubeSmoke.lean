import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcube

/-!
Generated AP.16BL impact-subcube smoke.

This module instantiates the AP.16BK `ImpactSubcubeCover` interface for
the rank-100805 singleton cover discovered by AP.16BJ.  It is still a
bounded smoke: each selected subcube proves denominator nonpositivity by
splitting over the masks inside that subcube.  A later production emitter
must replace those local splits with genuine Walsh/subcube bound proofs.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

private def rank_000100805_mask_00_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_00_subcube_mask : SignMask := ⟨0, by decide⟩
private def rank_000100805_mask_00_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_00_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_00_subcube_b : Vec3 Rat := { x := (28/9), y := (-116/9), z := (-68/9) }

private theorem rank_000100805_mask_00_subcube_rankWord :
    rankPairWord? rank_000100805_mask_00_subcube_word = some rank_000100805_mask_00_subcube_rank := by
  decide

private theorem rank_000100805_mask_00_subcube_unrank :
    unrankPairWord rank_000100805_mask_00_subcube_rank = rank_000100805_mask_00_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_00_subcube_word rank_000100805_mask_00_subcube_rank).1
    rank_000100805_mask_00_subcube_rankWord |>.symm

private theorem rank_000100805_mask_00_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_00_subcube_word rank_000100805_mask_00_subcube_mask = rank_000100805_mask_00_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_00_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_00_subcube_rank rank_000100805_mask_00_subcube_mask = rank_000100805_mask_00_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_00_subcube_unrank]
  exact rank_000100805_mask_00_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_00_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_00_subcube_rank rank_000100805_mask_00_subcube_mask = rank_000100805_mask_00_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_00_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_00_subcube_b, rank_000100805_mask_00_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_00_subcube_impact_01_denom : Rat := (-28/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_00_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_00_subcube_rank rank_000100805_mask_00_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_00_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_00_subcube_seqAtRank, rank_000100805_mask_00_subcube_bAtRank]
  norm_num [rank_000100805_mask_00_subcube_impact_01_denom, rank_000100805_mask_00_subcube_seq, rank_000100805_mask_00_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_01_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_01_subcube_mask : SignMask := ⟨1, by decide⟩
private def rank_000100805_mask_01_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_01_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_01_subcube_b : Vec3 Rat := { x := (28/9), y := (-44/9), z := (-68/9) }

private theorem rank_000100805_mask_01_subcube_rankWord :
    rankPairWord? rank_000100805_mask_01_subcube_word = some rank_000100805_mask_01_subcube_rank := by
  decide

private theorem rank_000100805_mask_01_subcube_unrank :
    unrankPairWord rank_000100805_mask_01_subcube_rank = rank_000100805_mask_01_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_01_subcube_word rank_000100805_mask_01_subcube_rank).1
    rank_000100805_mask_01_subcube_rankWord |>.symm

private theorem rank_000100805_mask_01_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_01_subcube_word rank_000100805_mask_01_subcube_mask = rank_000100805_mask_01_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_01_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_01_subcube_rank rank_000100805_mask_01_subcube_mask = rank_000100805_mask_01_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_01_subcube_unrank]
  exact rank_000100805_mask_01_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_01_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_01_subcube_rank rank_000100805_mask_01_subcube_mask = rank_000100805_mask_01_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_01_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_01_subcube_b, rank_000100805_mask_01_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_01_subcube_impact_01_denom : Rat := (-28/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_01_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_01_subcube_rank rank_000100805_mask_01_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_01_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_01_subcube_seqAtRank, rank_000100805_mask_01_subcube_bAtRank]
  norm_num [rank_000100805_mask_01_subcube_impact_01_denom, rank_000100805_mask_01_subcube_seq, rank_000100805_mask_01_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_02_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_02_subcube_mask : SignMask := ⟨2, by decide⟩
private def rank_000100805_mask_02_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_02_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_02_subcube_b : Vec3 Rat := { x := -4, y := (-28/3), z := (-20/3) }

private theorem rank_000100805_mask_02_subcube_rankWord :
    rankPairWord? rank_000100805_mask_02_subcube_word = some rank_000100805_mask_02_subcube_rank := by
  decide

private theorem rank_000100805_mask_02_subcube_unrank :
    unrankPairWord rank_000100805_mask_02_subcube_rank = rank_000100805_mask_02_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_02_subcube_word rank_000100805_mask_02_subcube_rank).1
    rank_000100805_mask_02_subcube_rankWord |>.symm

private theorem rank_000100805_mask_02_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_02_subcube_word rank_000100805_mask_02_subcube_mask = rank_000100805_mask_02_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_02_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_02_subcube_rank rank_000100805_mask_02_subcube_mask = rank_000100805_mask_02_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_02_subcube_unrank]
  exact rank_000100805_mask_02_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_02_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_02_subcube_rank rank_000100805_mask_02_subcube_mask = rank_000100805_mask_02_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_02_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_02_subcube_b, rank_000100805_mask_02_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_02_subcube_impact_08_denom : Rat := (-28/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_02_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_02_subcube_rank rank_000100805_mask_02_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_02_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_02_subcube_seqAtRank, rank_000100805_mask_02_subcube_bAtRank]
  norm_num [rank_000100805_mask_02_subcube_impact_08_denom, rank_000100805_mask_02_subcube_seq, rank_000100805_mask_02_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_03_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_03_subcube_mask : SignMask := ⟨3, by decide⟩
private def rank_000100805_mask_03_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_03_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_03_subcube_b : Vec3 Rat := { x := -4, y := (-4/3), z := (-20/3) }

private theorem rank_000100805_mask_03_subcube_rankWord :
    rankPairWord? rank_000100805_mask_03_subcube_word = some rank_000100805_mask_03_subcube_rank := by
  decide

private theorem rank_000100805_mask_03_subcube_unrank :
    unrankPairWord rank_000100805_mask_03_subcube_rank = rank_000100805_mask_03_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_03_subcube_word rank_000100805_mask_03_subcube_rank).1
    rank_000100805_mask_03_subcube_rankWord |>.symm

private theorem rank_000100805_mask_03_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_03_subcube_word rank_000100805_mask_03_subcube_mask = rank_000100805_mask_03_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_03_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_03_subcube_rank rank_000100805_mask_03_subcube_mask = rank_000100805_mask_03_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_03_subcube_unrank]
  exact rank_000100805_mask_03_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_03_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_03_subcube_rank rank_000100805_mask_03_subcube_mask = rank_000100805_mask_03_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_03_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_03_subcube_b, rank_000100805_mask_03_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_03_subcube_impact_05_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_03_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_03_subcube_rank rank_000100805_mask_03_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_03_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_03_subcube_seqAtRank, rank_000100805_mask_03_subcube_bAtRank]
  norm_num [rank_000100805_mask_03_subcube_impact_05_denom, rank_000100805_mask_03_subcube_seq, rank_000100805_mask_03_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_05_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_05_subcube_mask : SignMask := ⟨5, by decide⟩
private def rank_000100805_mask_05_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_05_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_05_subcube_b : Vec3 Rat := { x := (-124/27), y := (-244/27), z := (-124/27) }

private theorem rank_000100805_mask_05_subcube_rankWord :
    rankPairWord? rank_000100805_mask_05_subcube_word = some rank_000100805_mask_05_subcube_rank := by
  decide

private theorem rank_000100805_mask_05_subcube_unrank :
    unrankPairWord rank_000100805_mask_05_subcube_rank = rank_000100805_mask_05_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_05_subcube_word rank_000100805_mask_05_subcube_rank).1
    rank_000100805_mask_05_subcube_rankWord |>.symm

private theorem rank_000100805_mask_05_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_05_subcube_word rank_000100805_mask_05_subcube_mask = rank_000100805_mask_05_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_05_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_05_subcube_rank rank_000100805_mask_05_subcube_mask = rank_000100805_mask_05_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_05_subcube_unrank]
  exact rank_000100805_mask_05_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_05_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_05_subcube_rank rank_000100805_mask_05_subcube_mask = rank_000100805_mask_05_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_05_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_05_subcube_b, rank_000100805_mask_05_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_05_subcube_impact_02_denom : Rat := (-244/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_05_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_05_subcube_rank rank_000100805_mask_05_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_05_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_05_subcube_seqAtRank, rank_000100805_mask_05_subcube_bAtRank]
  norm_num [rank_000100805_mask_05_subcube_impact_02_denom, rank_000100805_mask_05_subcube_seq, rank_000100805_mask_05_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_07_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_07_subcube_mask : SignMask := ⟨7, by decide⟩
private def rank_000100805_mask_07_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_07_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_07_subcube_b : Vec3 Rat := { x := (-316/27), y := (-148/27), z := (-100/27) }

private theorem rank_000100805_mask_07_subcube_rankWord :
    rankPairWord? rank_000100805_mask_07_subcube_word = some rank_000100805_mask_07_subcube_rank := by
  decide

private theorem rank_000100805_mask_07_subcube_unrank :
    unrankPairWord rank_000100805_mask_07_subcube_rank = rank_000100805_mask_07_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_07_subcube_word rank_000100805_mask_07_subcube_rank).1
    rank_000100805_mask_07_subcube_rankWord |>.symm

private theorem rank_000100805_mask_07_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_07_subcube_word rank_000100805_mask_07_subcube_mask = rank_000100805_mask_07_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_07_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_07_subcube_rank rank_000100805_mask_07_subcube_mask = rank_000100805_mask_07_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_07_subcube_unrank]
  exact rank_000100805_mask_07_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_07_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_07_subcube_rank rank_000100805_mask_07_subcube_mask = rank_000100805_mask_07_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_07_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_07_subcube_b, rank_000100805_mask_07_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_07_subcube_impact_02_denom : Rat := (-148/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_07_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_07_subcube_rank rank_000100805_mask_07_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_07_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_07_subcube_seqAtRank, rank_000100805_mask_07_subcube_bAtRank]
  norm_num [rank_000100805_mask_07_subcube_impact_02_denom, rank_000100805_mask_07_subcube_seq, rank_000100805_mask_07_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_08_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_08_subcube_mask : SignMask := ⟨8, by decide⟩
private def rank_000100805_mask_08_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_08_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_08_subcube_b : Vec3 Rat := { x := (4/3), y := -4, z := (-28/3) }

private theorem rank_000100805_mask_08_subcube_rankWord :
    rankPairWord? rank_000100805_mask_08_subcube_word = some rank_000100805_mask_08_subcube_rank := by
  decide

private theorem rank_000100805_mask_08_subcube_unrank :
    unrankPairWord rank_000100805_mask_08_subcube_rank = rank_000100805_mask_08_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_08_subcube_word rank_000100805_mask_08_subcube_rank).1
    rank_000100805_mask_08_subcube_rankWord |>.symm

private theorem rank_000100805_mask_08_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_08_subcube_word rank_000100805_mask_08_subcube_mask = rank_000100805_mask_08_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_08_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_08_subcube_rank rank_000100805_mask_08_subcube_mask = rank_000100805_mask_08_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_08_subcube_unrank]
  exact rank_000100805_mask_08_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_08_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_08_subcube_rank rank_000100805_mask_08_subcube_mask = rank_000100805_mask_08_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_08_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_08_subcube_b, rank_000100805_mask_08_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_08_subcube_impact_01_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_08_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_08_subcube_rank rank_000100805_mask_08_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_08_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_08_subcube_seqAtRank, rank_000100805_mask_08_subcube_bAtRank]
  norm_num [rank_000100805_mask_08_subcube_impact_01_denom, rank_000100805_mask_08_subcube_seq, rank_000100805_mask_08_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_09_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_09_subcube_mask : SignMask := ⟨9, by decide⟩
private def rank_000100805_mask_09_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_09_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_09_subcube_b : Vec3 Rat := { x := (4/3), y := 4, z := (-28/3) }

private theorem rank_000100805_mask_09_subcube_rankWord :
    rankPairWord? rank_000100805_mask_09_subcube_word = some rank_000100805_mask_09_subcube_rank := by
  decide

private theorem rank_000100805_mask_09_subcube_unrank :
    unrankPairWord rank_000100805_mask_09_subcube_rank = rank_000100805_mask_09_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_09_subcube_word rank_000100805_mask_09_subcube_rank).1
    rank_000100805_mask_09_subcube_rankWord |>.symm

private theorem rank_000100805_mask_09_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_09_subcube_word rank_000100805_mask_09_subcube_mask = rank_000100805_mask_09_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_09_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_09_subcube_rank rank_000100805_mask_09_subcube_mask = rank_000100805_mask_09_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_09_subcube_unrank]
  exact rank_000100805_mask_09_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_09_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_09_subcube_rank rank_000100805_mask_09_subcube_mask = rank_000100805_mask_09_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_09_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_09_subcube_b, rank_000100805_mask_09_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_09_subcube_impact_01_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_09_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_09_subcube_rank rank_000100805_mask_09_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_09_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_09_subcube_seqAtRank, rank_000100805_mask_09_subcube_bAtRank]
  norm_num [rank_000100805_mask_09_subcube_impact_01_denom, rank_000100805_mask_09_subcube_seq, rank_000100805_mask_09_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_10_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_10_subcube_mask : SignMask := ⟨10, by decide⟩
private def rank_000100805_mask_10_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_10_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_10_subcube_b : Vec3 Rat := { x := (-52/9), y := (-4/9), z := (-76/9) }

private theorem rank_000100805_mask_10_subcube_rankWord :
    rankPairWord? rank_000100805_mask_10_subcube_word = some rank_000100805_mask_10_subcube_rank := by
  decide

private theorem rank_000100805_mask_10_subcube_unrank :
    unrankPairWord rank_000100805_mask_10_subcube_rank = rank_000100805_mask_10_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_10_subcube_word rank_000100805_mask_10_subcube_rank).1
    rank_000100805_mask_10_subcube_rankWord |>.symm

private theorem rank_000100805_mask_10_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_10_subcube_word rank_000100805_mask_10_subcube_mask = rank_000100805_mask_10_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_10_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_10_subcube_rank rank_000100805_mask_10_subcube_mask = rank_000100805_mask_10_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_10_subcube_unrank]
  exact rank_000100805_mask_10_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_10_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_10_subcube_rank rank_000100805_mask_10_subcube_mask = rank_000100805_mask_10_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_10_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_10_subcube_b, rank_000100805_mask_10_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_10_subcube_impact_08_denom : Rat := -4

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_10_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_10_subcube_rank rank_000100805_mask_10_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_10_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_10_subcube_seqAtRank, rank_000100805_mask_10_subcube_bAtRank]
  norm_num [rank_000100805_mask_10_subcube_impact_08_denom, rank_000100805_mask_10_subcube_seq, rank_000100805_mask_10_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_12_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_12_subcube_mask : SignMask := ⟨12, by decide⟩
private def rank_000100805_mask_12_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_12_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_12_subcube_b : Vec3 Rat := { x := (-172/27), y := (-220/27), z := (-172/27) }

private theorem rank_000100805_mask_12_subcube_rankWord :
    rankPairWord? rank_000100805_mask_12_subcube_word = some rank_000100805_mask_12_subcube_rank := by
  decide

private theorem rank_000100805_mask_12_subcube_unrank :
    unrankPairWord rank_000100805_mask_12_subcube_rank = rank_000100805_mask_12_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_12_subcube_word rank_000100805_mask_12_subcube_rank).1
    rank_000100805_mask_12_subcube_rankWord |>.symm

private theorem rank_000100805_mask_12_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_12_subcube_word rank_000100805_mask_12_subcube_mask = rank_000100805_mask_12_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_12_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_12_subcube_rank rank_000100805_mask_12_subcube_mask = rank_000100805_mask_12_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_12_subcube_unrank]
  exact rank_000100805_mask_12_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_12_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_12_subcube_rank rank_000100805_mask_12_subcube_mask = rank_000100805_mask_12_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_12_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_12_subcube_b, rank_000100805_mask_12_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_12_subcube_impact_05_denom : Rat := (-28/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_12_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_12_subcube_rank rank_000100805_mask_12_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_12_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_12_subcube_seqAtRank, rank_000100805_mask_12_subcube_bAtRank]
  norm_num [rank_000100805_mask_12_subcube_impact_05_denom, rank_000100805_mask_12_subcube_seq, rank_000100805_mask_12_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_13_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_13_subcube_mask : SignMask := ⟨13, by decide⟩
private def rank_000100805_mask_13_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_13_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_13_subcube_b : Vec3 Rat := { x := (-172/27), y := (-4/27), z := (-172/27) }

private theorem rank_000100805_mask_13_subcube_rankWord :
    rankPairWord? rank_000100805_mask_13_subcube_word = some rank_000100805_mask_13_subcube_rank := by
  decide

private theorem rank_000100805_mask_13_subcube_unrank :
    unrankPairWord rank_000100805_mask_13_subcube_rank = rank_000100805_mask_13_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_13_subcube_word rank_000100805_mask_13_subcube_rank).1
    rank_000100805_mask_13_subcube_rankWord |>.symm

private theorem rank_000100805_mask_13_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_13_subcube_word rank_000100805_mask_13_subcube_mask = rank_000100805_mask_13_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_13_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_13_subcube_rank rank_000100805_mask_13_subcube_mask = rank_000100805_mask_13_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_13_subcube_unrank]
  exact rank_000100805_mask_13_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_13_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_13_subcube_rank rank_000100805_mask_13_subcube_mask = rank_000100805_mask_13_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_13_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_13_subcube_b, rank_000100805_mask_13_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_13_subcube_impact_06_denom : Rat := (-44/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_13_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_13_subcube_rank rank_000100805_mask_13_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_13_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_13_subcube_seqAtRank, rank_000100805_mask_13_subcube_bAtRank]
  norm_num [rank_000100805_mask_13_subcube_impact_06_denom, rank_000100805_mask_13_subcube_seq, rank_000100805_mask_13_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_14_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_14_subcube_mask : SignMask := ⟨14, by decide⟩
private def rank_000100805_mask_14_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_14_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_14_subcube_b : Vec3 Rat := { x := (-364/27), y := (-124/27), z := (-148/27) }

private theorem rank_000100805_mask_14_subcube_rankWord :
    rankPairWord? rank_000100805_mask_14_subcube_word = some rank_000100805_mask_14_subcube_rank := by
  decide

private theorem rank_000100805_mask_14_subcube_unrank :
    unrankPairWord rank_000100805_mask_14_subcube_rank = rank_000100805_mask_14_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_14_subcube_word rank_000100805_mask_14_subcube_rank).1
    rank_000100805_mask_14_subcube_rankWord |>.symm

private theorem rank_000100805_mask_14_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_14_subcube_word rank_000100805_mask_14_subcube_mask = rank_000100805_mask_14_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_14_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_14_subcube_rank rank_000100805_mask_14_subcube_mask = rank_000100805_mask_14_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_14_subcube_unrank]
  exact rank_000100805_mask_14_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_14_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_14_subcube_rank rank_000100805_mask_14_subcube_mask = rank_000100805_mask_14_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_14_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_14_subcube_b, rank_000100805_mask_14_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_14_subcube_impact_05_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_14_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_14_subcube_rank rank_000100805_mask_14_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_14_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_14_subcube_seqAtRank, rank_000100805_mask_14_subcube_bAtRank]
  norm_num [rank_000100805_mask_14_subcube_impact_05_denom, rank_000100805_mask_14_subcube_seq, rank_000100805_mask_14_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_15_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_15_subcube_mask : SignMask := ⟨15, by decide⟩
private def rank_000100805_mask_15_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_15_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_15_subcube_b : Vec3 Rat := { x := (-364/27), y := (92/27), z := (-148/27) }

private theorem rank_000100805_mask_15_subcube_rankWord :
    rankPairWord? rank_000100805_mask_15_subcube_word = some rank_000100805_mask_15_subcube_rank := by
  decide

private theorem rank_000100805_mask_15_subcube_unrank :
    unrankPairWord rank_000100805_mask_15_subcube_rank = rank_000100805_mask_15_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_15_subcube_word rank_000100805_mask_15_subcube_rank).1
    rank_000100805_mask_15_subcube_rankWord |>.symm

private theorem rank_000100805_mask_15_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_15_subcube_word rank_000100805_mask_15_subcube_mask = rank_000100805_mask_15_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_15_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_15_subcube_rank rank_000100805_mask_15_subcube_mask = rank_000100805_mask_15_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_15_subcube_unrank]
  exact rank_000100805_mask_15_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_15_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_15_subcube_rank rank_000100805_mask_15_subcube_mask = rank_000100805_mask_15_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_15_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_15_subcube_b, rank_000100805_mask_15_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_15_subcube_impact_10_denom : Rat := (-20/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_15_subcube_impact_10_denomAtRank :
    impactDenomAtRank rank_000100805_mask_15_subcube_rank rank_000100805_mask_15_subcube_mask ⟨10, by decide⟩ =
      rank_000100805_mask_15_subcube_impact_10_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_15_subcube_seqAtRank, rank_000100805_mask_15_subcube_bAtRank]
  norm_num [rank_000100805_mask_15_subcube_impact_10_denom, rank_000100805_mask_15_subcube_seq, rank_000100805_mask_15_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_16_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_16_subcube_mask : SignMask := ⟨16, by decide⟩
private def rank_000100805_mask_16_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_16_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_16_subcube_b : Vec3 Rat := { x := (4/27), y := (-236/27), z := (4/27) }

private theorem rank_000100805_mask_16_subcube_rankWord :
    rankPairWord? rank_000100805_mask_16_subcube_word = some rank_000100805_mask_16_subcube_rank := by
  decide

private theorem rank_000100805_mask_16_subcube_unrank :
    unrankPairWord rank_000100805_mask_16_subcube_rank = rank_000100805_mask_16_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_16_subcube_word rank_000100805_mask_16_subcube_rank).1
    rank_000100805_mask_16_subcube_rankWord |>.symm

private theorem rank_000100805_mask_16_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_16_subcube_word rank_000100805_mask_16_subcube_mask = rank_000100805_mask_16_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_16_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_16_subcube_rank rank_000100805_mask_16_subcube_mask = rank_000100805_mask_16_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_16_subcube_unrank]
  exact rank_000100805_mask_16_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_16_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_16_subcube_rank rank_000100805_mask_16_subcube_mask = rank_000100805_mask_16_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_16_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_16_subcube_b, rank_000100805_mask_16_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_16_subcube_impact_01_denom : Rat := (-4/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_16_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_16_subcube_rank rank_000100805_mask_16_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_16_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_16_subcube_seqAtRank, rank_000100805_mask_16_subcube_bAtRank]
  norm_num [rank_000100805_mask_16_subcube_impact_01_denom, rank_000100805_mask_16_subcube_seq, rank_000100805_mask_16_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_17_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_17_subcube_mask : SignMask := ⟨17, by decide⟩
private def rank_000100805_mask_17_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_17_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_17_subcube_b : Vec3 Rat := { x := (4/27), y := (-20/27), z := (4/27) }

private theorem rank_000100805_mask_17_subcube_rankWord :
    rankPairWord? rank_000100805_mask_17_subcube_word = some rank_000100805_mask_17_subcube_rank := by
  decide

private theorem rank_000100805_mask_17_subcube_unrank :
    unrankPairWord rank_000100805_mask_17_subcube_rank = rank_000100805_mask_17_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_17_subcube_word rank_000100805_mask_17_subcube_rank).1
    rank_000100805_mask_17_subcube_rankWord |>.symm

private theorem rank_000100805_mask_17_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_17_subcube_word rank_000100805_mask_17_subcube_mask = rank_000100805_mask_17_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_17_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_17_subcube_rank rank_000100805_mask_17_subcube_mask = rank_000100805_mask_17_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_17_subcube_unrank]
  exact rank_000100805_mask_17_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_17_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_17_subcube_rank rank_000100805_mask_17_subcube_mask = rank_000100805_mask_17_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_17_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_17_subcube_b, rank_000100805_mask_17_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_17_subcube_impact_01_denom : Rat := (-4/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_17_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_17_subcube_rank rank_000100805_mask_17_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_17_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_17_subcube_seqAtRank, rank_000100805_mask_17_subcube_bAtRank]
  norm_num [rank_000100805_mask_17_subcube_impact_01_denom, rank_000100805_mask_17_subcube_seq, rank_000100805_mask_17_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_18_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_18_subcube_mask : SignMask := ⟨18, by decide⟩
private def rank_000100805_mask_18_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_18_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_18_subcube_b : Vec3 Rat := { x := (-188/27), y := (-140/27), z := (28/27) }

private theorem rank_000100805_mask_18_subcube_rankWord :
    rankPairWord? rank_000100805_mask_18_subcube_word = some rank_000100805_mask_18_subcube_rank := by
  decide

private theorem rank_000100805_mask_18_subcube_unrank :
    unrankPairWord rank_000100805_mask_18_subcube_rank = rank_000100805_mask_18_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_18_subcube_word rank_000100805_mask_18_subcube_rank).1
    rank_000100805_mask_18_subcube_rankWord |>.symm

private theorem rank_000100805_mask_18_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_18_subcube_word rank_000100805_mask_18_subcube_mask = rank_000100805_mask_18_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_18_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_18_subcube_rank rank_000100805_mask_18_subcube_mask = rank_000100805_mask_18_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_18_subcube_unrank]
  exact rank_000100805_mask_18_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_18_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_18_subcube_rank rank_000100805_mask_18_subcube_mask = rank_000100805_mask_18_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_18_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_18_subcube_b, rank_000100805_mask_18_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_18_subcube_impact_08_denom : Rat := (-44/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_18_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_18_subcube_rank rank_000100805_mask_18_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_18_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_18_subcube_seqAtRank, rank_000100805_mask_18_subcube_bAtRank]
  norm_num [rank_000100805_mask_18_subcube_impact_08_denom, rank_000100805_mask_18_subcube_seq, rank_000100805_mask_18_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_19_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_19_subcube_mask : SignMask := ⟨19, by decide⟩
private def rank_000100805_mask_19_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_19_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_19_subcube_b : Vec3 Rat := { x := (-188/27), y := (76/27), z := (28/27) }

private theorem rank_000100805_mask_19_subcube_rankWord :
    rankPairWord? rank_000100805_mask_19_subcube_word = some rank_000100805_mask_19_subcube_rank := by
  decide

private theorem rank_000100805_mask_19_subcube_unrank :
    unrankPairWord rank_000100805_mask_19_subcube_rank = rank_000100805_mask_19_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_19_subcube_word rank_000100805_mask_19_subcube_rank).1
    rank_000100805_mask_19_subcube_rankWord |>.symm

private theorem rank_000100805_mask_19_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_19_subcube_word rank_000100805_mask_19_subcube_mask = rank_000100805_mask_19_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_19_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_19_subcube_rank rank_000100805_mask_19_subcube_mask = rank_000100805_mask_19_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_19_subcube_unrank]
  exact rank_000100805_mask_19_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_19_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_19_subcube_rank rank_000100805_mask_19_subcube_mask = rank_000100805_mask_19_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_19_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_19_subcube_b, rank_000100805_mask_19_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_19_subcube_impact_05_denom : Rat := (-20/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_19_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_19_subcube_rank rank_000100805_mask_19_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_19_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_19_subcube_seqAtRank, rank_000100805_mask_19_subcube_bAtRank]
  norm_num [rank_000100805_mask_19_subcube_impact_05_denom, rank_000100805_mask_19_subcube_seq, rank_000100805_mask_19_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_19_subcube_impact_08_denom : Rat := (-76/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_19_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_19_subcube_rank rank_000100805_mask_19_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_19_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_19_subcube_seqAtRank, rank_000100805_mask_19_subcube_bAtRank]
  norm_num [rank_000100805_mask_19_subcube_impact_08_denom, rank_000100805_mask_19_subcube_seq, rank_000100805_mask_19_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_20_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_20_subcube_mask : SignMask := ⟨20, by decide⟩
private def rank_000100805_mask_20_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_20_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_20_subcube_b : Vec3 Rat := { x := (-68/9), y := (-116/9), z := (28/9) }

private theorem rank_000100805_mask_20_subcube_rankWord :
    rankPairWord? rank_000100805_mask_20_subcube_word = some rank_000100805_mask_20_subcube_rank := by
  decide

private theorem rank_000100805_mask_20_subcube_unrank :
    unrankPairWord rank_000100805_mask_20_subcube_rank = rank_000100805_mask_20_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_20_subcube_word rank_000100805_mask_20_subcube_rank).1
    rank_000100805_mask_20_subcube_rankWord |>.symm

private theorem rank_000100805_mask_20_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_20_subcube_word rank_000100805_mask_20_subcube_mask = rank_000100805_mask_20_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_20_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_20_subcube_rank rank_000100805_mask_20_subcube_mask = rank_000100805_mask_20_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_20_subcube_unrank]
  exact rank_000100805_mask_20_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_20_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_20_subcube_rank rank_000100805_mask_20_subcube_mask = rank_000100805_mask_20_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_20_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_20_subcube_b, rank_000100805_mask_20_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_20_subcube_impact_06_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_20_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_20_subcube_rank rank_000100805_mask_20_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_20_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_20_subcube_seqAtRank, rank_000100805_mask_20_subcube_bAtRank]
  norm_num [rank_000100805_mask_20_subcube_impact_06_denom, rank_000100805_mask_20_subcube_seq, rank_000100805_mask_20_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_21_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_21_subcube_mask : SignMask := ⟨21, by decide⟩
private def rank_000100805_mask_21_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_21_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_21_subcube_b : Vec3 Rat := { x := (-68/9), y := (-44/9), z := (28/9) }

private theorem rank_000100805_mask_21_subcube_rankWord :
    rankPairWord? rank_000100805_mask_21_subcube_word = some rank_000100805_mask_21_subcube_rank := by
  decide

private theorem rank_000100805_mask_21_subcube_unrank :
    unrankPairWord rank_000100805_mask_21_subcube_rank = rank_000100805_mask_21_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_21_subcube_word rank_000100805_mask_21_subcube_rank).1
    rank_000100805_mask_21_subcube_rankWord |>.symm

private theorem rank_000100805_mask_21_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_21_subcube_word rank_000100805_mask_21_subcube_mask = rank_000100805_mask_21_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_21_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_21_subcube_rank rank_000100805_mask_21_subcube_mask = rank_000100805_mask_21_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_21_subcube_unrank]
  exact rank_000100805_mask_21_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_21_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_21_subcube_rank rank_000100805_mask_21_subcube_mask = rank_000100805_mask_21_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_21_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_21_subcube_b, rank_000100805_mask_21_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_21_subcube_impact_06_denom : Rat := (-44/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_21_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_21_subcube_rank rank_000100805_mask_21_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_21_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_21_subcube_seqAtRank, rank_000100805_mask_21_subcube_bAtRank]
  norm_num [rank_000100805_mask_21_subcube_impact_06_denom, rank_000100805_mask_21_subcube_seq, rank_000100805_mask_21_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_23_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_23_subcube_mask : SignMask := ⟨23, by decide⟩
private def rank_000100805_mask_23_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_23_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_23_subcube_b : Vec3 Rat := { x := (-44/3), y := (-4/3), z := 4 }

private theorem rank_000100805_mask_23_subcube_rankWord :
    rankPairWord? rank_000100805_mask_23_subcube_word = some rank_000100805_mask_23_subcube_rank := by
  decide

private theorem rank_000100805_mask_23_subcube_unrank :
    unrankPairWord rank_000100805_mask_23_subcube_rank = rank_000100805_mask_23_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_23_subcube_word rank_000100805_mask_23_subcube_rank).1
    rank_000100805_mask_23_subcube_rankWord |>.symm

private theorem rank_000100805_mask_23_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_23_subcube_word rank_000100805_mask_23_subcube_mask = rank_000100805_mask_23_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_23_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_23_subcube_rank rank_000100805_mask_23_subcube_mask = rank_000100805_mask_23_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_23_subcube_unrank]
  exact rank_000100805_mask_23_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_23_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_23_subcube_rank rank_000100805_mask_23_subcube_mask = rank_000100805_mask_23_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_23_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_23_subcube_b, rank_000100805_mask_23_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_23_subcube_impact_05_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_23_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_23_subcube_rank rank_000100805_mask_23_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_23_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_23_subcube_seqAtRank, rank_000100805_mask_23_subcube_bAtRank]
  norm_num [rank_000100805_mask_23_subcube_impact_05_denom, rank_000100805_mask_23_subcube_seq, rank_000100805_mask_23_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_24_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_24_subcube_mask : SignMask := ⟨24, by decide⟩
private def rank_000100805_mask_24_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_24_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_24_subcube_b : Vec3 Rat := { x := (-44/27), y := (4/27), z := (-44/27) }

private theorem rank_000100805_mask_24_subcube_rankWord :
    rankPairWord? rank_000100805_mask_24_subcube_word = some rank_000100805_mask_24_subcube_rank := by
  decide

private theorem rank_000100805_mask_24_subcube_unrank :
    unrankPairWord rank_000100805_mask_24_subcube_rank = rank_000100805_mask_24_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_24_subcube_word rank_000100805_mask_24_subcube_rank).1
    rank_000100805_mask_24_subcube_rankWord |>.symm

private theorem rank_000100805_mask_24_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_24_subcube_word rank_000100805_mask_24_subcube_mask = rank_000100805_mask_24_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_24_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_24_subcube_rank rank_000100805_mask_24_subcube_mask = rank_000100805_mask_24_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_24_subcube_unrank]
  exact rank_000100805_mask_24_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_24_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_24_subcube_rank rank_000100805_mask_24_subcube_mask = rank_000100805_mask_24_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_24_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_24_subcube_b, rank_000100805_mask_24_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_24_subcube_impact_02_denom : Rat := (-4/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_24_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_24_subcube_rank rank_000100805_mask_24_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_24_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_24_subcube_seqAtRank, rank_000100805_mask_24_subcube_bAtRank]
  norm_num [rank_000100805_mask_24_subcube_impact_02_denom, rank_000100805_mask_24_subcube_seq, rank_000100805_mask_24_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_25_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_25_subcube_mask : SignMask := ⟨25, by decide⟩
private def rank_000100805_mask_25_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_25_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_25_subcube_b : Vec3 Rat := { x := (-44/27), y := (220/27), z := (-44/27) }

private theorem rank_000100805_mask_25_subcube_rankWord :
    rankPairWord? rank_000100805_mask_25_subcube_word = some rank_000100805_mask_25_subcube_rank := by
  decide

private theorem rank_000100805_mask_25_subcube_unrank :
    unrankPairWord rank_000100805_mask_25_subcube_rank = rank_000100805_mask_25_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_25_subcube_word rank_000100805_mask_25_subcube_rank).1
    rank_000100805_mask_25_subcube_rankWord |>.symm

private theorem rank_000100805_mask_25_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_25_subcube_word rank_000100805_mask_25_subcube_mask = rank_000100805_mask_25_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_25_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_25_subcube_rank rank_000100805_mask_25_subcube_mask = rank_000100805_mask_25_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_25_subcube_unrank]
  exact rank_000100805_mask_25_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_25_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_25_subcube_rank rank_000100805_mask_25_subcube_mask = rank_000100805_mask_25_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_25_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_25_subcube_b, rank_000100805_mask_25_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_25_subcube_impact_06_denom : Rat := (-44/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_25_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_25_subcube_rank rank_000100805_mask_25_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_25_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_25_subcube_seqAtRank, rank_000100805_mask_25_subcube_bAtRank]
  norm_num [rank_000100805_mask_25_subcube_impact_06_denom, rank_000100805_mask_25_subcube_seq, rank_000100805_mask_25_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_26_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_26_subcube_mask : SignMask := ⟨26, by decide⟩
private def rank_000100805_mask_26_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_26_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_26_subcube_b : Vec3 Rat := { x := (-236/27), y := (100/27), z := (-20/27) }

private theorem rank_000100805_mask_26_subcube_rankWord :
    rankPairWord? rank_000100805_mask_26_subcube_word = some rank_000100805_mask_26_subcube_rank := by
  decide

private theorem rank_000100805_mask_26_subcube_unrank :
    unrankPairWord rank_000100805_mask_26_subcube_rank = rank_000100805_mask_26_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_26_subcube_word rank_000100805_mask_26_subcube_rank).1
    rank_000100805_mask_26_subcube_rankWord |>.symm

private theorem rank_000100805_mask_26_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_26_subcube_word rank_000100805_mask_26_subcube_mask = rank_000100805_mask_26_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_26_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_26_subcube_rank rank_000100805_mask_26_subcube_mask = rank_000100805_mask_26_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_26_subcube_unrank]
  exact rank_000100805_mask_26_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_26_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_26_subcube_rank rank_000100805_mask_26_subcube_mask = rank_000100805_mask_26_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_26_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_26_subcube_b, rank_000100805_mask_26_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_26_subcube_impact_02_denom : Rat := (-100/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_26_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_26_subcube_rank rank_000100805_mask_26_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_26_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_26_subcube_seqAtRank, rank_000100805_mask_26_subcube_bAtRank]
  norm_num [rank_000100805_mask_26_subcube_impact_02_denom, rank_000100805_mask_26_subcube_seq, rank_000100805_mask_26_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_26_subcube_impact_08_denom : Rat := (-28/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_26_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_26_subcube_rank rank_000100805_mask_26_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_26_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_26_subcube_seqAtRank, rank_000100805_mask_26_subcube_bAtRank]
  norm_num [rank_000100805_mask_26_subcube_impact_08_denom, rank_000100805_mask_26_subcube_seq, rank_000100805_mask_26_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_27_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_27_subcube_mask : SignMask := ⟨27, by decide⟩
private def rank_000100805_mask_27_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_27_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_27_subcube_b : Vec3 Rat := { x := (-236/27), y := (316/27), z := (-20/27) }

private theorem rank_000100805_mask_27_subcube_rankWord :
    rankPairWord? rank_000100805_mask_27_subcube_word = some rank_000100805_mask_27_subcube_rank := by
  decide

private theorem rank_000100805_mask_27_subcube_unrank :
    unrankPairWord rank_000100805_mask_27_subcube_rank = rank_000100805_mask_27_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_27_subcube_word rank_000100805_mask_27_subcube_rank).1
    rank_000100805_mask_27_subcube_rankWord |>.symm

private theorem rank_000100805_mask_27_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_27_subcube_word rank_000100805_mask_27_subcube_mask = rank_000100805_mask_27_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_27_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_27_subcube_rank rank_000100805_mask_27_subcube_mask = rank_000100805_mask_27_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_27_subcube_unrank]
  exact rank_000100805_mask_27_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_27_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_27_subcube_rank rank_000100805_mask_27_subcube_mask = rank_000100805_mask_27_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_27_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_27_subcube_b, rank_000100805_mask_27_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_27_subcube_impact_08_denom : Rat := (-28/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_27_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_27_subcube_rank rank_000100805_mask_27_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_27_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_27_subcube_seqAtRank, rank_000100805_mask_27_subcube_bAtRank]
  norm_num [rank_000100805_mask_27_subcube_impact_08_denom, rank_000100805_mask_27_subcube_seq, rank_000100805_mask_27_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_28_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_28_subcube_mask : SignMask := ⟨28, by decide⟩
private def rank_000100805_mask_28_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_28_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_28_subcube_b : Vec3 Rat := { x := (-28/3), y := -4, z := (4/3) }

private theorem rank_000100805_mask_28_subcube_rankWord :
    rankPairWord? rank_000100805_mask_28_subcube_word = some rank_000100805_mask_28_subcube_rank := by
  decide

private theorem rank_000100805_mask_28_subcube_unrank :
    unrankPairWord rank_000100805_mask_28_subcube_rank = rank_000100805_mask_28_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_28_subcube_word rank_000100805_mask_28_subcube_rank).1
    rank_000100805_mask_28_subcube_rankWord |>.symm

private theorem rank_000100805_mask_28_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_28_subcube_word rank_000100805_mask_28_subcube_mask = rank_000100805_mask_28_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_28_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_28_subcube_rank rank_000100805_mask_28_subcube_mask = rank_000100805_mask_28_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_28_subcube_unrank]
  exact rank_000100805_mask_28_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_28_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_28_subcube_rank rank_000100805_mask_28_subcube_mask = rank_000100805_mask_28_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_28_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_28_subcube_b, rank_000100805_mask_28_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_28_subcube_impact_06_denom : Rat := (-20/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_28_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_28_subcube_rank rank_000100805_mask_28_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_28_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_28_subcube_seqAtRank, rank_000100805_mask_28_subcube_bAtRank]
  norm_num [rank_000100805_mask_28_subcube_impact_06_denom, rank_000100805_mask_28_subcube_seq, rank_000100805_mask_28_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_29_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_29_subcube_mask : SignMask := ⟨29, by decide⟩
private def rank_000100805_mask_29_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_29_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def rank_000100805_mask_29_subcube_b : Vec3 Rat := { x := (-28/3), y := 4, z := (4/3) }

private theorem rank_000100805_mask_29_subcube_rankWord :
    rankPairWord? rank_000100805_mask_29_subcube_word = some rank_000100805_mask_29_subcube_rank := by
  decide

private theorem rank_000100805_mask_29_subcube_unrank :
    unrankPairWord rank_000100805_mask_29_subcube_rank = rank_000100805_mask_29_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_29_subcube_word rank_000100805_mask_29_subcube_rank).1
    rank_000100805_mask_29_subcube_rankWord |>.symm

private theorem rank_000100805_mask_29_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_29_subcube_word rank_000100805_mask_29_subcube_mask = rank_000100805_mask_29_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_29_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_29_subcube_rank rank_000100805_mask_29_subcube_mask = rank_000100805_mask_29_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_29_subcube_unrank]
  exact rank_000100805_mask_29_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_29_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_29_subcube_rank rank_000100805_mask_29_subcube_mask = rank_000100805_mask_29_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_29_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_29_subcube_b, rank_000100805_mask_29_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_29_subcube_impact_06_denom : Rat := (-92/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_29_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_29_subcube_rank rank_000100805_mask_29_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_29_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_29_subcube_seqAtRank, rank_000100805_mask_29_subcube_bAtRank]
  norm_num [rank_000100805_mask_29_subcube_impact_06_denom, rank_000100805_mask_29_subcube_seq, rank_000100805_mask_29_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_32_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_32_subcube_mask : SignMask := ⟨32, by decide⟩
private def rank_000100805_mask_32_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_32_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_32_subcube_b : Vec3 Rat := { x := (76/9), y := (-68/9), z := (-20/9) }

private theorem rank_000100805_mask_32_subcube_rankWord :
    rankPairWord? rank_000100805_mask_32_subcube_word = some rank_000100805_mask_32_subcube_rank := by
  decide

private theorem rank_000100805_mask_32_subcube_unrank :
    unrankPairWord rank_000100805_mask_32_subcube_rank = rank_000100805_mask_32_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_32_subcube_word rank_000100805_mask_32_subcube_rank).1
    rank_000100805_mask_32_subcube_rankWord |>.symm

private theorem rank_000100805_mask_32_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_32_subcube_word rank_000100805_mask_32_subcube_mask = rank_000100805_mask_32_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_32_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_32_subcube_rank rank_000100805_mask_32_subcube_mask = rank_000100805_mask_32_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_32_subcube_unrank]
  exact rank_000100805_mask_32_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_32_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_32_subcube_rank rank_000100805_mask_32_subcube_mask = rank_000100805_mask_32_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_32_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_32_subcube_b, rank_000100805_mask_32_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_32_subcube_impact_01_denom : Rat := (-76/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_32_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_32_subcube_rank rank_000100805_mask_32_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_32_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_32_subcube_seqAtRank, rank_000100805_mask_32_subcube_bAtRank]
  norm_num [rank_000100805_mask_32_subcube_impact_01_denom, rank_000100805_mask_32_subcube_seq, rank_000100805_mask_32_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_33_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_33_subcube_mask : SignMask := ⟨33, by decide⟩
private def rank_000100805_mask_33_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_33_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_33_subcube_b : Vec3 Rat := { x := (76/9), y := (4/9), z := (-20/9) }

private theorem rank_000100805_mask_33_subcube_rankWord :
    rankPairWord? rank_000100805_mask_33_subcube_word = some rank_000100805_mask_33_subcube_rank := by
  decide

private theorem rank_000100805_mask_33_subcube_unrank :
    unrankPairWord rank_000100805_mask_33_subcube_rank = rank_000100805_mask_33_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_33_subcube_word rank_000100805_mask_33_subcube_rank).1
    rank_000100805_mask_33_subcube_rankWord |>.symm

private theorem rank_000100805_mask_33_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_33_subcube_word rank_000100805_mask_33_subcube_mask = rank_000100805_mask_33_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_33_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_33_subcube_rank rank_000100805_mask_33_subcube_mask = rank_000100805_mask_33_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_33_subcube_unrank]
  exact rank_000100805_mask_33_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_33_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_33_subcube_rank rank_000100805_mask_33_subcube_mask = rank_000100805_mask_33_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_33_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_33_subcube_b, rank_000100805_mask_33_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_33_subcube_impact_01_denom : Rat := (-76/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_33_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_33_subcube_rank rank_000100805_mask_33_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_33_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_33_subcube_seqAtRank, rank_000100805_mask_33_subcube_bAtRank]
  norm_num [rank_000100805_mask_33_subcube_impact_01_denom, rank_000100805_mask_33_subcube_seq, rank_000100805_mask_33_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_34_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_34_subcube_mask : SignMask := ⟨34, by decide⟩
private def rank_000100805_mask_34_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_34_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_34_subcube_b : Vec3 Rat := { x := (4/3), y := -4, z := (-4/3) }

private theorem rank_000100805_mask_34_subcube_rankWord :
    rankPairWord? rank_000100805_mask_34_subcube_word = some rank_000100805_mask_34_subcube_rank := by
  decide

private theorem rank_000100805_mask_34_subcube_unrank :
    unrankPairWord rank_000100805_mask_34_subcube_rank = rank_000100805_mask_34_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_34_subcube_word rank_000100805_mask_34_subcube_rank).1
    rank_000100805_mask_34_subcube_rankWord |>.symm

private theorem rank_000100805_mask_34_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_34_subcube_word rank_000100805_mask_34_subcube_mask = rank_000100805_mask_34_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_34_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_34_subcube_rank rank_000100805_mask_34_subcube_mask = rank_000100805_mask_34_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_34_subcube_unrank]
  exact rank_000100805_mask_34_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_34_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_34_subcube_rank rank_000100805_mask_34_subcube_mask = rank_000100805_mask_34_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_34_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_34_subcube_b, rank_000100805_mask_34_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_34_subcube_impact_08_denom : Rat := (-4/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_34_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_34_subcube_rank rank_000100805_mask_34_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_34_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_34_subcube_seqAtRank, rank_000100805_mask_34_subcube_bAtRank]
  norm_num [rank_000100805_mask_34_subcube_impact_08_denom, rank_000100805_mask_34_subcube_seq, rank_000100805_mask_34_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_35_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_35_subcube_mask : SignMask := ⟨35, by decide⟩
private def rank_000100805_mask_35_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_35_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_35_subcube_b : Vec3 Rat := { x := (4/3), y := 4, z := (-4/3) }

private theorem rank_000100805_mask_35_subcube_rankWord :
    rankPairWord? rank_000100805_mask_35_subcube_word = some rank_000100805_mask_35_subcube_rank := by
  decide

private theorem rank_000100805_mask_35_subcube_unrank :
    unrankPairWord rank_000100805_mask_35_subcube_rank = rank_000100805_mask_35_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_35_subcube_word rank_000100805_mask_35_subcube_rank).1
    rank_000100805_mask_35_subcube_rankWord |>.symm

private theorem rank_000100805_mask_35_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_35_subcube_word rank_000100805_mask_35_subcube_mask = rank_000100805_mask_35_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_35_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_35_subcube_rank rank_000100805_mask_35_subcube_mask = rank_000100805_mask_35_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_35_subcube_unrank]
  exact rank_000100805_mask_35_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_35_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_35_subcube_rank rank_000100805_mask_35_subcube_mask = rank_000100805_mask_35_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_35_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_35_subcube_b, rank_000100805_mask_35_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_35_subcube_impact_05_denom : Rat := (-20/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_35_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_35_subcube_rank rank_000100805_mask_35_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_35_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_35_subcube_seqAtRank, rank_000100805_mask_35_subcube_bAtRank]
  norm_num [rank_000100805_mask_35_subcube_impact_05_denom, rank_000100805_mask_35_subcube_seq, rank_000100805_mask_35_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_35_subcube_impact_10_denom : Rat := (-4/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_35_subcube_impact_10_denomAtRank :
    impactDenomAtRank rank_000100805_mask_35_subcube_rank rank_000100805_mask_35_subcube_mask ⟨10, by decide⟩ =
      rank_000100805_mask_35_subcube_impact_10_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_35_subcube_seqAtRank, rank_000100805_mask_35_subcube_bAtRank]
  norm_num [rank_000100805_mask_35_subcube_impact_10_denom, rank_000100805_mask_35_subcube_seq, rank_000100805_mask_35_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_36_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_36_subcube_mask : SignMask := ⟨36, by decide⟩
private def rank_000100805_mask_36_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_36_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_36_subcube_b : Vec3 Rat := { x := (20/27), y := (-316/27), z := (20/27) }

private theorem rank_000100805_mask_36_subcube_rankWord :
    rankPairWord? rank_000100805_mask_36_subcube_word = some rank_000100805_mask_36_subcube_rank := by
  decide

private theorem rank_000100805_mask_36_subcube_unrank :
    unrankPairWord rank_000100805_mask_36_subcube_rank = rank_000100805_mask_36_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_36_subcube_word rank_000100805_mask_36_subcube_rank).1
    rank_000100805_mask_36_subcube_rankWord |>.symm

private theorem rank_000100805_mask_36_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_36_subcube_word rank_000100805_mask_36_subcube_mask = rank_000100805_mask_36_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_36_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_36_subcube_rank rank_000100805_mask_36_subcube_mask = rank_000100805_mask_36_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_36_subcube_unrank]
  exact rank_000100805_mask_36_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_36_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_36_subcube_rank rank_000100805_mask_36_subcube_mask = rank_000100805_mask_36_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_36_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_36_subcube_b, rank_000100805_mask_36_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_36_subcube_impact_04_denom : Rat := (-92/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_36_subcube_impact_04_denomAtRank :
    impactDenomAtRank rank_000100805_mask_36_subcube_rank rank_000100805_mask_36_subcube_mask ⟨4, by decide⟩ =
      rank_000100805_mask_36_subcube_impact_04_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_36_subcube_seqAtRank, rank_000100805_mask_36_subcube_bAtRank]
  norm_num [rank_000100805_mask_36_subcube_impact_04_denom, rank_000100805_mask_36_subcube_seq, rank_000100805_mask_36_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_37_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_37_subcube_mask : SignMask := ⟨37, by decide⟩
private def rank_000100805_mask_37_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_37_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_37_subcube_b : Vec3 Rat := { x := (20/27), y := (-100/27), z := (20/27) }

private theorem rank_000100805_mask_37_subcube_rankWord :
    rankPairWord? rank_000100805_mask_37_subcube_word = some rank_000100805_mask_37_subcube_rank := by
  decide

private theorem rank_000100805_mask_37_subcube_unrank :
    unrankPairWord rank_000100805_mask_37_subcube_rank = rank_000100805_mask_37_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_37_subcube_word rank_000100805_mask_37_subcube_rank).1
    rank_000100805_mask_37_subcube_rankWord |>.symm

private theorem rank_000100805_mask_37_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_37_subcube_word rank_000100805_mask_37_subcube_mask = rank_000100805_mask_37_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_37_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_37_subcube_rank rank_000100805_mask_37_subcube_mask = rank_000100805_mask_37_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_37_subcube_unrank]
  exact rank_000100805_mask_37_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_37_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_37_subcube_rank rank_000100805_mask_37_subcube_mask = rank_000100805_mask_37_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_37_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_37_subcube_b, rank_000100805_mask_37_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_37_subcube_impact_02_denom : Rat := (-100/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_37_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_37_subcube_rank rank_000100805_mask_37_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_37_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_37_subcube_seqAtRank, rank_000100805_mask_37_subcube_bAtRank]
  norm_num [rank_000100805_mask_37_subcube_impact_02_denom, rank_000100805_mask_37_subcube_seq, rank_000100805_mask_37_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_38_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_38_subcube_mask : SignMask := ⟨38, by decide⟩
private def rank_000100805_mask_38_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_38_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_38_subcube_b : Vec3 Rat := { x := (-172/27), y := (-220/27), z := (44/27) }

private theorem rank_000100805_mask_38_subcube_rankWord :
    rankPairWord? rank_000100805_mask_38_subcube_word = some rank_000100805_mask_38_subcube_rank := by
  decide

private theorem rank_000100805_mask_38_subcube_unrank :
    unrankPairWord rank_000100805_mask_38_subcube_rank = rank_000100805_mask_38_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_38_subcube_word rank_000100805_mask_38_subcube_rank).1
    rank_000100805_mask_38_subcube_rankWord |>.symm

private theorem rank_000100805_mask_38_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_38_subcube_word rank_000100805_mask_38_subcube_mask = rank_000100805_mask_38_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_38_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_38_subcube_rank rank_000100805_mask_38_subcube_mask = rank_000100805_mask_38_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_38_subcube_unrank]
  exact rank_000100805_mask_38_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_38_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_38_subcube_rank rank_000100805_mask_38_subcube_mask = rank_000100805_mask_38_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_38_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_38_subcube_b, rank_000100805_mask_38_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_38_subcube_impact_04_denom : Rat := (-116/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_38_subcube_impact_04_denomAtRank :
    impactDenomAtRank rank_000100805_mask_38_subcube_rank rank_000100805_mask_38_subcube_mask ⟨4, by decide⟩ =
      rank_000100805_mask_38_subcube_impact_04_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_38_subcube_seqAtRank, rank_000100805_mask_38_subcube_bAtRank]
  norm_num [rank_000100805_mask_38_subcube_impact_04_denom, rank_000100805_mask_38_subcube_seq, rank_000100805_mask_38_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_39_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_39_subcube_mask : SignMask := ⟨39, by decide⟩
private def rank_000100805_mask_39_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_39_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_39_subcube_b : Vec3 Rat := { x := (-172/27), y := (-4/27), z := (44/27) }

private theorem rank_000100805_mask_39_subcube_rankWord :
    rankPairWord? rank_000100805_mask_39_subcube_word = some rank_000100805_mask_39_subcube_rank := by
  decide

private theorem rank_000100805_mask_39_subcube_unrank :
    unrankPairWord rank_000100805_mask_39_subcube_rank = rank_000100805_mask_39_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_39_subcube_word rank_000100805_mask_39_subcube_rank).1
    rank_000100805_mask_39_subcube_rankWord |>.symm

private theorem rank_000100805_mask_39_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_39_subcube_word rank_000100805_mask_39_subcube_mask = rank_000100805_mask_39_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_39_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_39_subcube_rank rank_000100805_mask_39_subcube_mask = rank_000100805_mask_39_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_39_subcube_unrank]
  exact rank_000100805_mask_39_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_39_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_39_subcube_rank rank_000100805_mask_39_subcube_mask = rank_000100805_mask_39_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_39_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_39_subcube_b, rank_000100805_mask_39_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_39_subcube_impact_02_denom : Rat := (-4/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_39_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_39_subcube_rank rank_000100805_mask_39_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_39_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_39_subcube_seqAtRank, rank_000100805_mask_39_subcube_bAtRank]
  norm_num [rank_000100805_mask_39_subcube_impact_02_denom, rank_000100805_mask_39_subcube_seq, rank_000100805_mask_39_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_39_subcube_impact_10_denom : Rat := (-52/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_39_subcube_impact_10_denomAtRank :
    impactDenomAtRank rank_000100805_mask_39_subcube_rank rank_000100805_mask_39_subcube_mask ⟨10, by decide⟩ =
      rank_000100805_mask_39_subcube_impact_10_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_39_subcube_seqAtRank, rank_000100805_mask_39_subcube_bAtRank]
  norm_num [rank_000100805_mask_39_subcube_impact_10_denom, rank_000100805_mask_39_subcube_seq, rank_000100805_mask_39_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_40_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_40_subcube_mask : SignMask := ⟨40, by decide⟩
private def rank_000100805_mask_40_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_40_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_40_subcube_b : Vec3 Rat := { x := (20/3), y := (4/3), z := -4 }

private theorem rank_000100805_mask_40_subcube_rankWord :
    rankPairWord? rank_000100805_mask_40_subcube_word = some rank_000100805_mask_40_subcube_rank := by
  decide

private theorem rank_000100805_mask_40_subcube_unrank :
    unrankPairWord rank_000100805_mask_40_subcube_rank = rank_000100805_mask_40_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_40_subcube_word rank_000100805_mask_40_subcube_rank).1
    rank_000100805_mask_40_subcube_rankWord |>.symm

private theorem rank_000100805_mask_40_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_40_subcube_word rank_000100805_mask_40_subcube_mask = rank_000100805_mask_40_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_40_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_40_subcube_rank rank_000100805_mask_40_subcube_mask = rank_000100805_mask_40_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_40_subcube_unrank]
  exact rank_000100805_mask_40_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_40_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_40_subcube_rank rank_000100805_mask_40_subcube_mask = rank_000100805_mask_40_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_40_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_40_subcube_b, rank_000100805_mask_40_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_40_subcube_impact_01_denom : Rat := (-20/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_40_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_40_subcube_rank rank_000100805_mask_40_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_40_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_40_subcube_seqAtRank, rank_000100805_mask_40_subcube_bAtRank]
  norm_num [rank_000100805_mask_40_subcube_impact_01_denom, rank_000100805_mask_40_subcube_seq, rank_000100805_mask_40_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_41_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_41_subcube_mask : SignMask := ⟨41, by decide⟩
private def rank_000100805_mask_41_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_41_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_41_subcube_b : Vec3 Rat := { x := (20/3), y := (28/3), z := -4 }

private theorem rank_000100805_mask_41_subcube_rankWord :
    rankPairWord? rank_000100805_mask_41_subcube_word = some rank_000100805_mask_41_subcube_rank := by
  decide

private theorem rank_000100805_mask_41_subcube_unrank :
    unrankPairWord rank_000100805_mask_41_subcube_rank = rank_000100805_mask_41_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_41_subcube_word rank_000100805_mask_41_subcube_rank).1
    rank_000100805_mask_41_subcube_rankWord |>.symm

private theorem rank_000100805_mask_41_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_41_subcube_word rank_000100805_mask_41_subcube_mask = rank_000100805_mask_41_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_41_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_41_subcube_rank rank_000100805_mask_41_subcube_mask = rank_000100805_mask_41_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_41_subcube_unrank]
  exact rank_000100805_mask_41_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_41_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_41_subcube_rank rank_000100805_mask_41_subcube_mask = rank_000100805_mask_41_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_41_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_41_subcube_b, rank_000100805_mask_41_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_41_subcube_impact_01_denom : Rat := (-20/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_41_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_41_subcube_rank rank_000100805_mask_41_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_41_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_41_subcube_seqAtRank, rank_000100805_mask_41_subcube_bAtRank]
  norm_num [rank_000100805_mask_41_subcube_impact_01_denom, rank_000100805_mask_41_subcube_seq, rank_000100805_mask_41_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_42_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_42_subcube_mask : SignMask := ⟨42, by decide⟩
private def rank_000100805_mask_42_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_42_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_42_subcube_b : Vec3 Rat := { x := (-4/9), y := (44/9), z := (-28/9) }

private theorem rank_000100805_mask_42_subcube_rankWord :
    rankPairWord? rank_000100805_mask_42_subcube_word = some rank_000100805_mask_42_subcube_rank := by
  decide

private theorem rank_000100805_mask_42_subcube_unrank :
    unrankPairWord rank_000100805_mask_42_subcube_rank = rank_000100805_mask_42_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_42_subcube_word rank_000100805_mask_42_subcube_rank).1
    rank_000100805_mask_42_subcube_rankWord |>.symm

private theorem rank_000100805_mask_42_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_42_subcube_word rank_000100805_mask_42_subcube_mask = rank_000100805_mask_42_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_42_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_42_subcube_rank rank_000100805_mask_42_subcube_mask = rank_000100805_mask_42_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_42_subcube_unrank]
  exact rank_000100805_mask_42_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_42_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_42_subcube_rank rank_000100805_mask_42_subcube_mask = rank_000100805_mask_42_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_42_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_42_subcube_b, rank_000100805_mask_42_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_42_subcube_impact_02_denom : Rat := (-44/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_42_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_42_subcube_rank rank_000100805_mask_42_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_42_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_42_subcube_seqAtRank, rank_000100805_mask_42_subcube_bAtRank]
  norm_num [rank_000100805_mask_42_subcube_impact_02_denom, rank_000100805_mask_42_subcube_seq, rank_000100805_mask_42_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_43_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_43_subcube_mask : SignMask := ⟨43, by decide⟩
private def rank_000100805_mask_43_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_43_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_43_subcube_b : Vec3 Rat := { x := (-4/9), y := (116/9), z := (-28/9) }

private theorem rank_000100805_mask_43_subcube_rankWord :
    rankPairWord? rank_000100805_mask_43_subcube_word = some rank_000100805_mask_43_subcube_rank := by
  decide

private theorem rank_000100805_mask_43_subcube_unrank :
    unrankPairWord rank_000100805_mask_43_subcube_rank = rank_000100805_mask_43_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_43_subcube_word rank_000100805_mask_43_subcube_rank).1
    rank_000100805_mask_43_subcube_rankWord |>.symm

private theorem rank_000100805_mask_43_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_43_subcube_word rank_000100805_mask_43_subcube_mask = rank_000100805_mask_43_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_43_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_43_subcube_rank rank_000100805_mask_43_subcube_mask = rank_000100805_mask_43_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_43_subcube_unrank]
  exact rank_000100805_mask_43_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_43_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_43_subcube_rank rank_000100805_mask_43_subcube_mask = rank_000100805_mask_43_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_43_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_43_subcube_b, rank_000100805_mask_43_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_43_subcube_impact_10_denom : Rat := (-52/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_43_subcube_impact_10_denomAtRank :
    impactDenomAtRank rank_000100805_mask_43_subcube_rank rank_000100805_mask_43_subcube_mask ⟨10, by decide⟩ =
      rank_000100805_mask_43_subcube_impact_10_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_43_subcube_seqAtRank, rank_000100805_mask_43_subcube_bAtRank]
  norm_num [rank_000100805_mask_43_subcube_impact_10_denom, rank_000100805_mask_43_subcube_seq, rank_000100805_mask_43_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_44_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_44_subcube_mask : SignMask := ⟨44, by decide⟩
private def rank_000100805_mask_44_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_44_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_44_subcube_b : Vec3 Rat := { x := (-28/27), y := (-76/27), z := (-28/27) }

private theorem rank_000100805_mask_44_subcube_rankWord :
    rankPairWord? rank_000100805_mask_44_subcube_word = some rank_000100805_mask_44_subcube_rank := by
  decide

private theorem rank_000100805_mask_44_subcube_unrank :
    unrankPairWord rank_000100805_mask_44_subcube_rank = rank_000100805_mask_44_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_44_subcube_word rank_000100805_mask_44_subcube_rank).1
    rank_000100805_mask_44_subcube_rankWord |>.symm

private theorem rank_000100805_mask_44_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_44_subcube_word rank_000100805_mask_44_subcube_mask = rank_000100805_mask_44_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_44_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_44_subcube_rank rank_000100805_mask_44_subcube_mask = rank_000100805_mask_44_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_44_subcube_unrank]
  exact rank_000100805_mask_44_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_44_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_44_subcube_rank rank_000100805_mask_44_subcube_mask = rank_000100805_mask_44_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_44_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_44_subcube_b, rank_000100805_mask_44_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_44_subcube_impact_05_denom : Rat := -4

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_44_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_44_subcube_rank rank_000100805_mask_44_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_44_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_44_subcube_seqAtRank, rank_000100805_mask_44_subcube_bAtRank]
  norm_num [rank_000100805_mask_44_subcube_impact_05_denom, rank_000100805_mask_44_subcube_seq, rank_000100805_mask_44_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_45_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_45_subcube_mask : SignMask := ⟨45, by decide⟩
private def rank_000100805_mask_45_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_45_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_45_subcube_b : Vec3 Rat := { x := (-28/27), y := (140/27), z := (-28/27) }

private theorem rank_000100805_mask_45_subcube_rankWord :
    rankPairWord? rank_000100805_mask_45_subcube_word = some rank_000100805_mask_45_subcube_rank := by
  decide

private theorem rank_000100805_mask_45_subcube_unrank :
    unrankPairWord rank_000100805_mask_45_subcube_rank = rank_000100805_mask_45_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_45_subcube_word rank_000100805_mask_45_subcube_rank).1
    rank_000100805_mask_45_subcube_rankWord |>.symm

private theorem rank_000100805_mask_45_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_45_subcube_word rank_000100805_mask_45_subcube_mask = rank_000100805_mask_45_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_45_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_45_subcube_rank rank_000100805_mask_45_subcube_mask = rank_000100805_mask_45_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_45_subcube_unrank]
  exact rank_000100805_mask_45_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_45_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_45_subcube_rank rank_000100805_mask_45_subcube_mask = rank_000100805_mask_45_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_45_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_45_subcube_b, rank_000100805_mask_45_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_45_subcube_impact_06_denom : Rat := (-28/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_45_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_45_subcube_rank rank_000100805_mask_45_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_45_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_45_subcube_seqAtRank, rank_000100805_mask_45_subcube_bAtRank]
  norm_num [rank_000100805_mask_45_subcube_impact_06_denom, rank_000100805_mask_45_subcube_seq, rank_000100805_mask_45_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_46_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_46_subcube_mask : SignMask := ⟨46, by decide⟩
private def rank_000100805_mask_46_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_46_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_46_subcube_b : Vec3 Rat := { x := (-220/27), y := (20/27), z := (-4/27) }

private theorem rank_000100805_mask_46_subcube_rankWord :
    rankPairWord? rank_000100805_mask_46_subcube_word = some rank_000100805_mask_46_subcube_rank := by
  decide

private theorem rank_000100805_mask_46_subcube_unrank :
    unrankPairWord rank_000100805_mask_46_subcube_rank = rank_000100805_mask_46_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_46_subcube_word rank_000100805_mask_46_subcube_rank).1
    rank_000100805_mask_46_subcube_rankWord |>.symm

private theorem rank_000100805_mask_46_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_46_subcube_word rank_000100805_mask_46_subcube_mask = rank_000100805_mask_46_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_46_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_46_subcube_rank rank_000100805_mask_46_subcube_mask = rank_000100805_mask_46_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_46_subcube_unrank]
  exact rank_000100805_mask_46_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_46_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_46_subcube_rank rank_000100805_mask_46_subcube_mask = rank_000100805_mask_46_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_46_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_46_subcube_b, rank_000100805_mask_46_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_46_subcube_impact_02_denom : Rat := (-20/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_46_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_46_subcube_rank rank_000100805_mask_46_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_46_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_46_subcube_seqAtRank, rank_000100805_mask_46_subcube_bAtRank]
  norm_num [rank_000100805_mask_46_subcube_impact_02_denom, rank_000100805_mask_46_subcube_seq, rank_000100805_mask_46_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_47_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_47_subcube_mask : SignMask := ⟨47, by decide⟩
private def rank_000100805_mask_47_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_47_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_47_subcube_b : Vec3 Rat := { x := (-220/27), y := (236/27), z := (-4/27) }

private theorem rank_000100805_mask_47_subcube_rankWord :
    rankPairWord? rank_000100805_mask_47_subcube_word = some rank_000100805_mask_47_subcube_rank := by
  decide

private theorem rank_000100805_mask_47_subcube_unrank :
    unrankPairWord rank_000100805_mask_47_subcube_rank = rank_000100805_mask_47_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_47_subcube_word rank_000100805_mask_47_subcube_rank).1
    rank_000100805_mask_47_subcube_rankWord |>.symm

private theorem rank_000100805_mask_47_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_47_subcube_word rank_000100805_mask_47_subcube_mask = rank_000100805_mask_47_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_47_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_47_subcube_rank rank_000100805_mask_47_subcube_mask = rank_000100805_mask_47_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_47_subcube_unrank]
  exact rank_000100805_mask_47_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_47_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_47_subcube_rank rank_000100805_mask_47_subcube_mask = rank_000100805_mask_47_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_47_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_47_subcube_b, rank_000100805_mask_47_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_47_subcube_impact_10_denom : Rat := (-100/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_47_subcube_impact_10_denomAtRank :
    impactDenomAtRank rank_000100805_mask_47_subcube_rank rank_000100805_mask_47_subcube_mask ⟨10, by decide⟩ =
      rank_000100805_mask_47_subcube_impact_10_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_47_subcube_seqAtRank, rank_000100805_mask_47_subcube_bAtRank]
  norm_num [rank_000100805_mask_47_subcube_impact_10_denom, rank_000100805_mask_47_subcube_seq, rank_000100805_mask_47_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_48_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_48_subcube_mask : SignMask := ⟨48, by decide⟩
private def rank_000100805_mask_48_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_48_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_48_subcube_b : Vec3 Rat := { x := (148/27), y := (-92/27), z := (148/27) }

private theorem rank_000100805_mask_48_subcube_rankWord :
    rankPairWord? rank_000100805_mask_48_subcube_word = some rank_000100805_mask_48_subcube_rank := by
  decide

private theorem rank_000100805_mask_48_subcube_unrank :
    unrankPairWord rank_000100805_mask_48_subcube_rank = rank_000100805_mask_48_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_48_subcube_word rank_000100805_mask_48_subcube_rank).1
    rank_000100805_mask_48_subcube_rankWord |>.symm

private theorem rank_000100805_mask_48_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_48_subcube_word rank_000100805_mask_48_subcube_mask = rank_000100805_mask_48_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_48_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_48_subcube_rank rank_000100805_mask_48_subcube_mask = rank_000100805_mask_48_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_48_subcube_unrank]
  exact rank_000100805_mask_48_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_48_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_48_subcube_rank rank_000100805_mask_48_subcube_mask = rank_000100805_mask_48_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_48_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_48_subcube_b, rank_000100805_mask_48_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_48_subcube_impact_01_denom : Rat := (-148/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_48_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_48_subcube_rank rank_000100805_mask_48_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_48_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_48_subcube_seqAtRank, rank_000100805_mask_48_subcube_bAtRank]
  norm_num [rank_000100805_mask_48_subcube_impact_01_denom, rank_000100805_mask_48_subcube_seq, rank_000100805_mask_48_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_49_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_49_subcube_mask : SignMask := ⟨49, by decide⟩
private def rank_000100805_mask_49_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_49_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_49_subcube_b : Vec3 Rat := { x := (148/27), y := (124/27), z := (148/27) }

private theorem rank_000100805_mask_49_subcube_rankWord :
    rankPairWord? rank_000100805_mask_49_subcube_word = some rank_000100805_mask_49_subcube_rank := by
  decide

private theorem rank_000100805_mask_49_subcube_unrank :
    unrankPairWord rank_000100805_mask_49_subcube_rank = rank_000100805_mask_49_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_49_subcube_word rank_000100805_mask_49_subcube_rank).1
    rank_000100805_mask_49_subcube_rankWord |>.symm

private theorem rank_000100805_mask_49_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_49_subcube_word rank_000100805_mask_49_subcube_mask = rank_000100805_mask_49_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_49_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_49_subcube_rank rank_000100805_mask_49_subcube_mask = rank_000100805_mask_49_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_49_subcube_unrank]
  exact rank_000100805_mask_49_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_49_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_49_subcube_rank rank_000100805_mask_49_subcube_mask = rank_000100805_mask_49_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_49_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_49_subcube_b, rank_000100805_mask_49_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_49_subcube_impact_01_denom : Rat := (-148/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_49_subcube_impact_01_denomAtRank :
    impactDenomAtRank rank_000100805_mask_49_subcube_rank rank_000100805_mask_49_subcube_mask ⟨1, by decide⟩ =
      rank_000100805_mask_49_subcube_impact_01_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_49_subcube_seqAtRank, rank_000100805_mask_49_subcube_bAtRank]
  norm_num [rank_000100805_mask_49_subcube_impact_01_denom, rank_000100805_mask_49_subcube_seq, rank_000100805_mask_49_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_50_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_50_subcube_mask : SignMask := ⟨50, by decide⟩
private def rank_000100805_mask_50_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_50_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_50_subcube_b : Vec3 Rat := { x := (-44/27), y := (4/27), z := (172/27) }

private theorem rank_000100805_mask_50_subcube_rankWord :
    rankPairWord? rank_000100805_mask_50_subcube_word = some rank_000100805_mask_50_subcube_rank := by
  decide

private theorem rank_000100805_mask_50_subcube_unrank :
    unrankPairWord rank_000100805_mask_50_subcube_rank = rank_000100805_mask_50_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_50_subcube_word rank_000100805_mask_50_subcube_rank).1
    rank_000100805_mask_50_subcube_rankWord |>.symm

private theorem rank_000100805_mask_50_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_50_subcube_word rank_000100805_mask_50_subcube_mask = rank_000100805_mask_50_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_50_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_50_subcube_rank rank_000100805_mask_50_subcube_mask = rank_000100805_mask_50_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_50_subcube_unrank]
  exact rank_000100805_mask_50_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_50_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_50_subcube_rank rank_000100805_mask_50_subcube_mask = rank_000100805_mask_50_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_50_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_50_subcube_b, rank_000100805_mask_50_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_50_subcube_impact_08_denom : Rat := (-52/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_50_subcube_impact_08_denomAtRank :
    impactDenomAtRank rank_000100805_mask_50_subcube_rank rank_000100805_mask_50_subcube_mask ⟨8, by decide⟩ =
      rank_000100805_mask_50_subcube_impact_08_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_50_subcube_seqAtRank, rank_000100805_mask_50_subcube_bAtRank]
  norm_num [rank_000100805_mask_50_subcube_impact_08_denom, rank_000100805_mask_50_subcube_seq, rank_000100805_mask_50_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_51_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_51_subcube_mask : SignMask := ⟨51, by decide⟩
private def rank_000100805_mask_51_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_51_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_51_subcube_b : Vec3 Rat := { x := (-44/27), y := (220/27), z := (172/27) }

private theorem rank_000100805_mask_51_subcube_rankWord :
    rankPairWord? rank_000100805_mask_51_subcube_word = some rank_000100805_mask_51_subcube_rank := by
  decide

private theorem rank_000100805_mask_51_subcube_unrank :
    unrankPairWord rank_000100805_mask_51_subcube_rank = rank_000100805_mask_51_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_51_subcube_word rank_000100805_mask_51_subcube_rank).1
    rank_000100805_mask_51_subcube_rankWord |>.symm

private theorem rank_000100805_mask_51_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_51_subcube_word rank_000100805_mask_51_subcube_mask = rank_000100805_mask_51_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_51_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_51_subcube_rank rank_000100805_mask_51_subcube_mask = rank_000100805_mask_51_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_51_subcube_unrank]
  exact rank_000100805_mask_51_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_51_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_51_subcube_rank rank_000100805_mask_51_subcube_mask = rank_000100805_mask_51_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_51_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_51_subcube_b, rank_000100805_mask_51_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_51_subcube_impact_05_denom : Rat := -12

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_51_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_51_subcube_rank rank_000100805_mask_51_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_51_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_51_subcube_seqAtRank, rank_000100805_mask_51_subcube_bAtRank]
  norm_num [rank_000100805_mask_51_subcube_impact_05_denom, rank_000100805_mask_51_subcube_seq, rank_000100805_mask_51_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_52_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_52_subcube_mask : SignMask := ⟨52, by decide⟩
private def rank_000100805_mask_52_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_52_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_52_subcube_b : Vec3 Rat := { x := (-20/9), y := (-68/9), z := (76/9) }

private theorem rank_000100805_mask_52_subcube_rankWord :
    rankPairWord? rank_000100805_mask_52_subcube_word = some rank_000100805_mask_52_subcube_rank := by
  decide

private theorem rank_000100805_mask_52_subcube_unrank :
    unrankPairWord rank_000100805_mask_52_subcube_rank = rank_000100805_mask_52_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_52_subcube_word rank_000100805_mask_52_subcube_rank).1
    rank_000100805_mask_52_subcube_rankWord |>.symm

private theorem rank_000100805_mask_52_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_52_subcube_word rank_000100805_mask_52_subcube_mask = rank_000100805_mask_52_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_52_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_52_subcube_rank rank_000100805_mask_52_subcube_mask = rank_000100805_mask_52_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_52_subcube_unrank]
  exact rank_000100805_mask_52_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_52_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_52_subcube_rank rank_000100805_mask_52_subcube_mask = rank_000100805_mask_52_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_52_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_52_subcube_b, rank_000100805_mask_52_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_52_subcube_impact_04_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_52_subcube_impact_04_denomAtRank :
    impactDenomAtRank rank_000100805_mask_52_subcube_rank rank_000100805_mask_52_subcube_mask ⟨4, by decide⟩ =
      rank_000100805_mask_52_subcube_impact_04_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_52_subcube_seqAtRank, rank_000100805_mask_52_subcube_bAtRank]
  norm_num [rank_000100805_mask_52_subcube_impact_04_denom, rank_000100805_mask_52_subcube_seq, rank_000100805_mask_52_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_53_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_53_subcube_mask : SignMask := ⟨53, by decide⟩
private def rank_000100805_mask_53_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_53_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_53_subcube_b : Vec3 Rat := { x := (-20/9), y := (4/9), z := (76/9) }

private theorem rank_000100805_mask_53_subcube_rankWord :
    rankPairWord? rank_000100805_mask_53_subcube_word = some rank_000100805_mask_53_subcube_rank := by
  decide

private theorem rank_000100805_mask_53_subcube_unrank :
    unrankPairWord rank_000100805_mask_53_subcube_rank = rank_000100805_mask_53_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_53_subcube_word rank_000100805_mask_53_subcube_rank).1
    rank_000100805_mask_53_subcube_rankWord |>.symm

private theorem rank_000100805_mask_53_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_53_subcube_word rank_000100805_mask_53_subcube_mask = rank_000100805_mask_53_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_53_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_53_subcube_rank rank_000100805_mask_53_subcube_mask = rank_000100805_mask_53_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_53_subcube_unrank]
  exact rank_000100805_mask_53_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_53_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_53_subcube_rank rank_000100805_mask_53_subcube_mask = rank_000100805_mask_53_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_53_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_53_subcube_b, rank_000100805_mask_53_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_53_subcube_impact_06_denom : Rat := (-28/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_53_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_53_subcube_rank rank_000100805_mask_53_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_53_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_53_subcube_seqAtRank, rank_000100805_mask_53_subcube_bAtRank]
  norm_num [rank_000100805_mask_53_subcube_impact_06_denom, rank_000100805_mask_53_subcube_seq, rank_000100805_mask_53_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_54_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_54_subcube_mask : SignMask := ⟨54, by decide⟩
private def rank_000100805_mask_54_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_54_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_54_subcube_b : Vec3 Rat := { x := (-28/3), y := -4, z := (28/3) }

private theorem rank_000100805_mask_54_subcube_rankWord :
    rankPairWord? rank_000100805_mask_54_subcube_word = some rank_000100805_mask_54_subcube_rank := by
  decide

private theorem rank_000100805_mask_54_subcube_unrank :
    unrankPairWord rank_000100805_mask_54_subcube_rank = rank_000100805_mask_54_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_54_subcube_word rank_000100805_mask_54_subcube_rank).1
    rank_000100805_mask_54_subcube_rankWord |>.symm

private theorem rank_000100805_mask_54_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_54_subcube_word rank_000100805_mask_54_subcube_mask = rank_000100805_mask_54_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_54_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_54_subcube_rank rank_000100805_mask_54_subcube_mask = rank_000100805_mask_54_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_54_subcube_unrank]
  exact rank_000100805_mask_54_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_54_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_54_subcube_rank rank_000100805_mask_54_subcube_mask = rank_000100805_mask_54_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_54_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_54_subcube_b, rank_000100805_mask_54_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_54_subcube_impact_04_denom : Rat := -4

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_54_subcube_impact_04_denomAtRank :
    impactDenomAtRank rank_000100805_mask_54_subcube_rank rank_000100805_mask_54_subcube_mask ⟨4, by decide⟩ =
      rank_000100805_mask_54_subcube_impact_04_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_54_subcube_seqAtRank, rank_000100805_mask_54_subcube_bAtRank]
  norm_num [rank_000100805_mask_54_subcube_impact_04_denom, rank_000100805_mask_54_subcube_seq, rank_000100805_mask_54_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_55_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_55_subcube_mask : SignMask := ⟨55, by decide⟩
private def rank_000100805_mask_55_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_55_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_55_subcube_b : Vec3 Rat := { x := (-28/3), y := 4, z := (28/3) }

private theorem rank_000100805_mask_55_subcube_rankWord :
    rankPairWord? rank_000100805_mask_55_subcube_word = some rank_000100805_mask_55_subcube_rank := by
  decide

private theorem rank_000100805_mask_55_subcube_unrank :
    unrankPairWord rank_000100805_mask_55_subcube_rank = rank_000100805_mask_55_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_55_subcube_word rank_000100805_mask_55_subcube_rank).1
    rank_000100805_mask_55_subcube_rankWord |>.symm

private theorem rank_000100805_mask_55_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_55_subcube_word rank_000100805_mask_55_subcube_mask = rank_000100805_mask_55_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_55_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_55_subcube_rank rank_000100805_mask_55_subcube_mask = rank_000100805_mask_55_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_55_subcube_unrank]
  exact rank_000100805_mask_55_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_55_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_55_subcube_rank rank_000100805_mask_55_subcube_mask = rank_000100805_mask_55_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_55_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_55_subcube_b, rank_000100805_mask_55_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_55_subcube_impact_05_denom : Rat := (-20/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_55_subcube_impact_05_denomAtRank :
    impactDenomAtRank rank_000100805_mask_55_subcube_rank rank_000100805_mask_55_subcube_mask ⟨5, by decide⟩ =
      rank_000100805_mask_55_subcube_impact_05_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_55_subcube_seqAtRank, rank_000100805_mask_55_subcube_bAtRank]
  norm_num [rank_000100805_mask_55_subcube_impact_05_denom, rank_000100805_mask_55_subcube_seq, rank_000100805_mask_55_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_56_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_56_subcube_mask : SignMask := ⟨56, by decide⟩
private def rank_000100805_mask_56_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_56_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_56_subcube_b : Vec3 Rat := { x := (100/27), y := (148/27), z := (100/27) }

private theorem rank_000100805_mask_56_subcube_rankWord :
    rankPairWord? rank_000100805_mask_56_subcube_word = some rank_000100805_mask_56_subcube_rank := by
  decide

private theorem rank_000100805_mask_56_subcube_unrank :
    unrankPairWord rank_000100805_mask_56_subcube_rank = rank_000100805_mask_56_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_56_subcube_word rank_000100805_mask_56_subcube_rank).1
    rank_000100805_mask_56_subcube_rankWord |>.symm

private theorem rank_000100805_mask_56_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_56_subcube_word rank_000100805_mask_56_subcube_mask = rank_000100805_mask_56_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_56_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_56_subcube_rank rank_000100805_mask_56_subcube_mask = rank_000100805_mask_56_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_56_subcube_unrank]
  exact rank_000100805_mask_56_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_56_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_56_subcube_rank rank_000100805_mask_56_subcube_mask = rank_000100805_mask_56_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_56_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_56_subcube_b, rank_000100805_mask_56_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_56_subcube_impact_02_denom : Rat := (-148/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_56_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_56_subcube_rank rank_000100805_mask_56_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_56_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_56_subcube_seqAtRank, rank_000100805_mask_56_subcube_bAtRank]
  norm_num [rank_000100805_mask_56_subcube_impact_02_denom, rank_000100805_mask_56_subcube_seq, rank_000100805_mask_56_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_57_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_57_subcube_mask : SignMask := ⟨57, by decide⟩
private def rank_000100805_mask_57_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_57_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_57_subcube_b : Vec3 Rat := { x := (100/27), y := (364/27), z := (100/27) }

private theorem rank_000100805_mask_57_subcube_rankWord :
    rankPairWord? rank_000100805_mask_57_subcube_word = some rank_000100805_mask_57_subcube_rank := by
  decide

private theorem rank_000100805_mask_57_subcube_unrank :
    unrankPairWord rank_000100805_mask_57_subcube_rank = rank_000100805_mask_57_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_57_subcube_word rank_000100805_mask_57_subcube_rank).1
    rank_000100805_mask_57_subcube_rankWord |>.symm

private theorem rank_000100805_mask_57_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_57_subcube_word rank_000100805_mask_57_subcube_mask = rank_000100805_mask_57_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_57_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_57_subcube_rank rank_000100805_mask_57_subcube_mask = rank_000100805_mask_57_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_57_subcube_unrank]
  exact rank_000100805_mask_57_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_57_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_57_subcube_rank rank_000100805_mask_57_subcube_mask = rank_000100805_mask_57_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_57_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_57_subcube_b, rank_000100805_mask_57_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_57_subcube_impact_06_denom : Rat := (-28/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_57_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_57_subcube_rank rank_000100805_mask_57_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_57_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_57_subcube_seqAtRank, rank_000100805_mask_57_subcube_bAtRank]
  norm_num [rank_000100805_mask_57_subcube_impact_06_denom, rank_000100805_mask_57_subcube_seq, rank_000100805_mask_57_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_58_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_58_subcube_mask : SignMask := ⟨58, by decide⟩
private def rank_000100805_mask_58_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_58_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tmmm
  | ⟨9, _⟩ => Face.tppp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_58_subcube_b : Vec3 Rat := { x := (-92/27), y := (244/27), z := (124/27) }

private theorem rank_000100805_mask_58_subcube_rankWord :
    rankPairWord? rank_000100805_mask_58_subcube_word = some rank_000100805_mask_58_subcube_rank := by
  decide

private theorem rank_000100805_mask_58_subcube_unrank :
    unrankPairWord rank_000100805_mask_58_subcube_rank = rank_000100805_mask_58_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_58_subcube_word rank_000100805_mask_58_subcube_rank).1
    rank_000100805_mask_58_subcube_rankWord |>.symm

private theorem rank_000100805_mask_58_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_58_subcube_word rank_000100805_mask_58_subcube_mask = rank_000100805_mask_58_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_58_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_58_subcube_rank rank_000100805_mask_58_subcube_mask = rank_000100805_mask_58_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_58_subcube_unrank]
  exact rank_000100805_mask_58_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_58_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_58_subcube_rank rank_000100805_mask_58_subcube_mask = rank_000100805_mask_58_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_58_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_58_subcube_b, rank_000100805_mask_58_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_58_subcube_impact_02_denom : Rat := (-244/27)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_58_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_58_subcube_rank rank_000100805_mask_58_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_58_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_58_subcube_seqAtRank, rank_000100805_mask_58_subcube_bAtRank]
  norm_num [rank_000100805_mask_58_subcube_impact_02_denom, rank_000100805_mask_58_subcube_seq, rank_000100805_mask_58_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_60_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_60_subcube_mask : SignMask := ⟨60, by decide⟩
private def rank_000100805_mask_60_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_60_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_60_subcube_b : Vec3 Rat := { x := -4, y := (4/3), z := (20/3) }

private theorem rank_000100805_mask_60_subcube_rankWord :
    rankPairWord? rank_000100805_mask_60_subcube_word = some rank_000100805_mask_60_subcube_rank := by
  decide

private theorem rank_000100805_mask_60_subcube_unrank :
    unrankPairWord rank_000100805_mask_60_subcube_rank = rank_000100805_mask_60_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_60_subcube_word rank_000100805_mask_60_subcube_rank).1
    rank_000100805_mask_60_subcube_rankWord |>.symm

private theorem rank_000100805_mask_60_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_60_subcube_word rank_000100805_mask_60_subcube_mask = rank_000100805_mask_60_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_60_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_60_subcube_rank rank_000100805_mask_60_subcube_mask = rank_000100805_mask_60_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_60_subcube_unrank]
  exact rank_000100805_mask_60_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_60_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_60_subcube_rank rank_000100805_mask_60_subcube_mask = rank_000100805_mask_60_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_60_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_60_subcube_b, rank_000100805_mask_60_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_60_subcube_impact_02_denom : Rat := (-4/3)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_60_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_60_subcube_rank rank_000100805_mask_60_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_60_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_60_subcube_seqAtRank, rank_000100805_mask_60_subcube_bAtRank]
  norm_num [rank_000100805_mask_60_subcube_impact_02_denom, rank_000100805_mask_60_subcube_seq, rank_000100805_mask_60_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_61_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_61_subcube_mask : SignMask := ⟨61, by decide⟩
private def rank_000100805_mask_61_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_61_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zm
  | ⟨7, _⟩ => Face.zp
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_61_subcube_b : Vec3 Rat := { x := -4, y := (28/3), z := (20/3) }

private theorem rank_000100805_mask_61_subcube_rankWord :
    rankPairWord? rank_000100805_mask_61_subcube_word = some rank_000100805_mask_61_subcube_rank := by
  decide

private theorem rank_000100805_mask_61_subcube_unrank :
    unrankPairWord rank_000100805_mask_61_subcube_rank = rank_000100805_mask_61_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_61_subcube_word rank_000100805_mask_61_subcube_rank).1
    rank_000100805_mask_61_subcube_rankWord |>.symm

private theorem rank_000100805_mask_61_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_61_subcube_word rank_000100805_mask_61_subcube_mask = rank_000100805_mask_61_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_61_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_61_subcube_rank rank_000100805_mask_61_subcube_mask = rank_000100805_mask_61_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_61_subcube_unrank]
  exact rank_000100805_mask_61_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_61_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_61_subcube_rank rank_000100805_mask_61_subcube_mask = rank_000100805_mask_61_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_61_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_61_subcube_b, rank_000100805_mask_61_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_61_subcube_impact_06_denom : Rat := (-76/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_61_subcube_impact_06_denomAtRank :
    impactDenomAtRank rank_000100805_mask_61_subcube_rank rank_000100805_mask_61_subcube_mask ⟨6, by decide⟩ =
      rank_000100805_mask_61_subcube_impact_06_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_61_subcube_seqAtRank, rank_000100805_mask_61_subcube_bAtRank]
  norm_num [rank_000100805_mask_61_subcube_impact_06_denom, rank_000100805_mask_61_subcube_seq, rank_000100805_mask_61_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_62_subcube_rank : Fin numPairWords := ⟨100805, by decide⟩
private def rank_000100805_mask_62_subcube_mask : SignMask := ⟨62, by decide⟩
private def rank_000100805_mask_62_subcube_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def rank_000100805_mask_62_subcube_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppm
  | ⟨6, _⟩ => Face.zp
  | ⟨7, _⟩ => Face.zm
  | ⟨8, _⟩ => Face.tppp
  | ⟨9, _⟩ => Face.tmmm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def rank_000100805_mask_62_subcube_b : Vec3 Rat := { x := (-100/9), y := (44/9), z := (68/9) }

private theorem rank_000100805_mask_62_subcube_rankWord :
    rankPairWord? rank_000100805_mask_62_subcube_word = some rank_000100805_mask_62_subcube_rank := by
  decide

private theorem rank_000100805_mask_62_subcube_unrank :
    unrankPairWord rank_000100805_mask_62_subcube_rank = rank_000100805_mask_62_subcube_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000100805_mask_62_subcube_word rank_000100805_mask_62_subcube_rank).1
    rank_000100805_mask_62_subcube_rankWord |>.symm

private theorem rank_000100805_mask_62_subcube_seqChoice :
    translationChoiceSeq rank_000100805_mask_62_subcube_word rank_000100805_mask_62_subcube_mask = rank_000100805_mask_62_subcube_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000100805_mask_62_subcube_seqAtRank :
    translationSeqAtRankMask rank_000100805_mask_62_subcube_rank rank_000100805_mask_62_subcube_mask = rank_000100805_mask_62_subcube_seq := by
  rw [translationSeqAtRankMask, rank_000100805_mask_62_subcube_unrank]
  exact rank_000100805_mask_62_subcube_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_62_subcube_bAtRank :
    translationBAtRankMask rank_000100805_mask_62_subcube_rank rank_000100805_mask_62_subcube_mask = rank_000100805_mask_62_subcube_b := by
  rw [translationBAtRankMask, rank_000100805_mask_62_subcube_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000100805_mask_62_subcube_b, rank_000100805_mask_62_subcube_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

private def rank_000100805_mask_62_subcube_impact_02_denom : Rat := (-44/9)

set_option maxHeartbeats 1200000 in
private theorem rank_000100805_mask_62_subcube_impact_02_denomAtRank :
    impactDenomAtRank rank_000100805_mask_62_subcube_rank rank_000100805_mask_62_subcube_mask ⟨2, by decide⟩ =
      rank_000100805_mask_62_subcube_impact_02_denom := by
  rw [impactDenomAtRank, rank_000100805_mask_62_subcube_seqAtRank, rank_000100805_mask_62_subcube_bAtRank]
  norm_num [rank_000100805_mask_62_subcube_impact_02_denom, rank_000100805_mask_62_subcube_seq, rank_000100805_mask_62_subcube_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 4 \/
    mask.val = 6 \/
    mask.val = 11 \/
    mask.val = 22 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 59 \/
    mask.val = 63

private inductive GeneratedImpactSubcube
  | s000
  | s001
  | s002
  | s003
  | s004
  | s005
  | s006
  | s007
  | s008
  | s009
  | s010
  | s011
  | s012
  | s013
  | s014
  | s015
  | s016
  | s017
  | s018
  | s019
deriving DecidableEq, Repr

private def generatedSubcubeMember : GeneratedImpactSubcube -> SignMask -> Prop
  | .s000, mask =>
      mask.val = 0 \/
    mask.val = 1 \/
    mask.val = 16 \/
    mask.val = 17 \/
    mask.val = 32 \/
    mask.val = 33 \/
    mask.val = 48 \/
    mask.val = 49 -- subcube *000**
  | .s001, mask =>
      mask.val = 0 \/
    mask.val = 1 \/
    mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 32 \/
    mask.val = 33 \/
    mask.val = 40 \/
    mask.val = 41 -- subcube *00*0*
  | .s002, mask =>
      mask.val = 2 \/
    mask.val = 18 \/
    mask.val = 34 \/
    mask.val = 50 -- subcube 0100**
  | .s003, mask =>
      mask.val = 42 \/
    mask.val = 46 \/
    mask.val = 58 \/
    mask.val = 62 -- subcube 01*1*1
  | .s004, mask =>
      mask.val = 36 \/
    mask.val = 38 \/
    mask.val = 52 \/
    mask.val = 54 -- subcube 0*10*1
  | .s005, mask =>
      mask.val = 13 \/
    mask.val = 29 \/
    mask.val = 45 \/
    mask.val = 61 -- subcube 1011**
  | .s006, mask =>
      mask.val = 3 \/
    mask.val = 19 \/
    mask.val = 35 \/
    mask.val = 51 -- subcube 1100**
  | .s007, mask =>
      mask.val = 5 \/
    mask.val = 7 \/
    mask.val = 37 \/
    mask.val = 39 -- subcube 1*100*
  | .s008, mask =>
      mask.val = 24 \/
    mask.val = 26 \/
    mask.val = 56 \/
    mask.val = 58 -- subcube 0*011*
  | .s009, mask =>
      mask.val = 20 \/
    mask.val = 21 \/
    mask.val = 28 \/
    mask.val = 29 -- subcube *01*10
  | .s010, mask =>
      mask.val = 25 \/
    mask.val = 29 \/
    mask.val = 57 \/
    mask.val = 61 -- subcube 10*11*
  | .s011, mask =>
      mask.val = 19 \/
    mask.val = 23 \/
    mask.val = 51 \/
    mask.val = 55 -- subcube 11*01*
  | .s012, mask =>
      mask.val = 35 \/
    mask.val = 39 \/
    mask.val = 43 \/
    mask.val = 47 -- subcube 11**01
  | .s013, mask =>
      mask.val = 12 \/
    mask.val = 44 -- subcube 00110*
  | .s014, mask =>
      mask.val = 2 \/
    mask.val = 10 \/
    mask.val = 18 \/
    mask.val = 26 -- subcube 010**0
  | .s015, mask =>
      mask.val = 56 \/
    mask.val = 58 \/
    mask.val = 60 \/
    mask.val = 62 -- subcube 0**111
  | .s016, mask =>
      mask.val = 21 \/
    mask.val = 29 \/
    mask.val = 53 \/
    mask.val = 61 -- subcube 101*1*
  | .s017, mask =>
      mask.val = 18 \/
    mask.val = 19 \/
    mask.val = 26 \/
    mask.val = 27 -- subcube *10*10
  | .s018, mask =>
      mask.val = 12 \/
    mask.val = 14 -- subcube 0*1100
  | .s019, mask =>
      mask.val = 15 \/
    mask.val = 47 -- subcube 11110*

private def generatedSubcubeObstruction :
    (cube : GeneratedImpactSubcube) ->
      ImpactSubcubeObstruction 100805 (generatedSubcubeMember cube)
  | .s000 => {
      impact := ⟨1, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_00_subcube_mask := by
            ext
            simpa [rank_000100805_mask_00_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_00_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_00_subcube_impact_01_denomAtRank]
          norm_num [rank_000100805_mask_00_subcube_impact_01_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_01_subcube_mask := by
              ext
              simpa [rank_000100805_mask_01_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_01_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_01_subcube_impact_01_denomAtRank]
            norm_num [rank_000100805_mask_01_subcube_impact_01_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_16_subcube_mask := by
                ext
                simpa [rank_000100805_mask_16_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_16_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_16_subcube_impact_01_denomAtRank]
              norm_num [rank_000100805_mask_16_subcube_impact_01_denom]
            ·
              rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000100805_mask_17_subcube_mask := by
                  ext
                  simpa [rank_000100805_mask_17_subcube_mask] using h
                rw [hmask]
                have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_17_subcube_rank := by
                  ext
                  rfl
                rw [hrank, rank_000100805_mask_17_subcube_impact_01_denomAtRank]
                norm_num [rank_000100805_mask_17_subcube_impact_01_denom]
              ·
                rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000100805_mask_32_subcube_mask := by
                    ext
                    simpa [rank_000100805_mask_32_subcube_mask] using h
                  rw [hmask]
                  have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_32_subcube_rank := by
                    ext
                    rfl
                  rw [hrank, rank_000100805_mask_32_subcube_impact_01_denomAtRank]
                  norm_num [rank_000100805_mask_32_subcube_impact_01_denom]
                ·
                  rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
                  ·
                    have hmask : mask = rank_000100805_mask_33_subcube_mask := by
                      ext
                      simpa [rank_000100805_mask_33_subcube_mask] using h
                    rw [hmask]
                    have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_33_subcube_rank := by
                      ext
                      rfl
                    rw [hrank, rank_000100805_mask_33_subcube_impact_01_denomAtRank]
                    norm_num [rank_000100805_mask_33_subcube_impact_01_denom]
                  ·
                    rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                    ·
                      have hmask : mask = rank_000100805_mask_48_subcube_mask := by
                        ext
                        simpa [rank_000100805_mask_48_subcube_mask] using h
                      rw [hmask]
                      have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_48_subcube_rank := by
                        ext
                        rfl
                      rw [hrank, rank_000100805_mask_48_subcube_impact_01_denomAtRank]
                      norm_num [rank_000100805_mask_48_subcube_impact_01_denom]
                    ·
                      have hmask : mask = rank_000100805_mask_49_subcube_mask := by
                        ext
                        simpa [rank_000100805_mask_49_subcube_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                      rw [hmask]
                      have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_49_subcube_rank := by
                        ext
                        rfl
                      rw [hrank, rank_000100805_mask_49_subcube_impact_01_denomAtRank]
                      norm_num [rank_000100805_mask_49_subcube_impact_01_denom]
    }
  | .s001 => {
      impact := ⟨1, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_00_subcube_mask := by
            ext
            simpa [rank_000100805_mask_00_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_00_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_00_subcube_impact_01_denomAtRank]
          norm_num [rank_000100805_mask_00_subcube_impact_01_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_01_subcube_mask := by
              ext
              simpa [rank_000100805_mask_01_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_01_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_01_subcube_impact_01_denomAtRank]
            norm_num [rank_000100805_mask_01_subcube_impact_01_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_08_subcube_mask := by
                ext
                simpa [rank_000100805_mask_08_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_08_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_08_subcube_impact_01_denomAtRank]
              norm_num [rank_000100805_mask_08_subcube_impact_01_denom]
            ·
              rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000100805_mask_09_subcube_mask := by
                  ext
                  simpa [rank_000100805_mask_09_subcube_mask] using h
                rw [hmask]
                have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_09_subcube_rank := by
                  ext
                  rfl
                rw [hrank, rank_000100805_mask_09_subcube_impact_01_denomAtRank]
                norm_num [rank_000100805_mask_09_subcube_impact_01_denom]
              ·
                rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000100805_mask_32_subcube_mask := by
                    ext
                    simpa [rank_000100805_mask_32_subcube_mask] using h
                  rw [hmask]
                  have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_32_subcube_rank := by
                    ext
                    rfl
                  rw [hrank, rank_000100805_mask_32_subcube_impact_01_denomAtRank]
                  norm_num [rank_000100805_mask_32_subcube_impact_01_denom]
                ·
                  rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
                  ·
                    have hmask : mask = rank_000100805_mask_33_subcube_mask := by
                      ext
                      simpa [rank_000100805_mask_33_subcube_mask] using h
                    rw [hmask]
                    have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_33_subcube_rank := by
                      ext
                      rfl
                    rw [hrank, rank_000100805_mask_33_subcube_impact_01_denomAtRank]
                    norm_num [rank_000100805_mask_33_subcube_impact_01_denom]
                  ·
                    rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                    ·
                      have hmask : mask = rank_000100805_mask_40_subcube_mask := by
                        ext
                        simpa [rank_000100805_mask_40_subcube_mask] using h
                      rw [hmask]
                      have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_40_subcube_rank := by
                        ext
                        rfl
                      rw [hrank, rank_000100805_mask_40_subcube_impact_01_denomAtRank]
                      norm_num [rank_000100805_mask_40_subcube_impact_01_denom]
                    ·
                      have hmask : mask = rank_000100805_mask_41_subcube_mask := by
                        ext
                        simpa [rank_000100805_mask_41_subcube_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                      rw [hmask]
                      have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_41_subcube_rank := by
                        ext
                        rfl
                      rw [hrank, rank_000100805_mask_41_subcube_impact_01_denomAtRank]
                      norm_num [rank_000100805_mask_41_subcube_impact_01_denom]
    }
  | .s002 => {
      impact := ⟨8, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_02_subcube_mask := by
            ext
            simpa [rank_000100805_mask_02_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_02_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_02_subcube_impact_08_denomAtRank]
          norm_num [rank_000100805_mask_02_subcube_impact_08_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_18_subcube_mask := by
              ext
              simpa [rank_000100805_mask_18_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_18_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_18_subcube_impact_08_denomAtRank]
            norm_num [rank_000100805_mask_18_subcube_impact_08_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_34_subcube_mask := by
                ext
                simpa [rank_000100805_mask_34_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_34_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_34_subcube_impact_08_denomAtRank]
              norm_num [rank_000100805_mask_34_subcube_impact_08_denom]
            ·
              have hmask : mask = rank_000100805_mask_50_subcube_mask := by
                ext
                simpa [rank_000100805_mask_50_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_50_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_50_subcube_impact_08_denomAtRank]
              norm_num [rank_000100805_mask_50_subcube_impact_08_denom]
    }
  | .s003 => {
      impact := ⟨2, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_42_subcube_mask := by
            ext
            simpa [rank_000100805_mask_42_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_42_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_42_subcube_impact_02_denomAtRank]
          norm_num [rank_000100805_mask_42_subcube_impact_02_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_46_subcube_mask := by
              ext
              simpa [rank_000100805_mask_46_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_46_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_46_subcube_impact_02_denomAtRank]
            norm_num [rank_000100805_mask_46_subcube_impact_02_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_58_subcube_mask := by
                ext
                simpa [rank_000100805_mask_58_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_58_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_58_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_58_subcube_impact_02_denom]
            ·
              have hmask : mask = rank_000100805_mask_62_subcube_mask := by
                ext
                simpa [rank_000100805_mask_62_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_62_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_62_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_62_subcube_impact_02_denom]
    }
  | .s004 => {
      impact := ⟨4, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_36_subcube_mask := by
            ext
            simpa [rank_000100805_mask_36_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_36_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_36_subcube_impact_04_denomAtRank]
          norm_num [rank_000100805_mask_36_subcube_impact_04_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_38_subcube_mask := by
              ext
              simpa [rank_000100805_mask_38_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_38_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_38_subcube_impact_04_denomAtRank]
            norm_num [rank_000100805_mask_38_subcube_impact_04_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_52_subcube_mask := by
                ext
                simpa [rank_000100805_mask_52_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_52_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_52_subcube_impact_04_denomAtRank]
              norm_num [rank_000100805_mask_52_subcube_impact_04_denom]
            ·
              have hmask : mask = rank_000100805_mask_54_subcube_mask := by
                ext
                simpa [rank_000100805_mask_54_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_54_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_54_subcube_impact_04_denomAtRank]
              norm_num [rank_000100805_mask_54_subcube_impact_04_denom]
    }
  | .s005 => {
      impact := ⟨6, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_13_subcube_mask := by
            ext
            simpa [rank_000100805_mask_13_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_13_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_13_subcube_impact_06_denomAtRank]
          norm_num [rank_000100805_mask_13_subcube_impact_06_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_29_subcube_mask := by
              ext
              simpa [rank_000100805_mask_29_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_29_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_29_subcube_impact_06_denomAtRank]
            norm_num [rank_000100805_mask_29_subcube_impact_06_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_45_subcube_mask := by
                ext
                simpa [rank_000100805_mask_45_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_45_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_45_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_45_subcube_impact_06_denom]
            ·
              have hmask : mask = rank_000100805_mask_61_subcube_mask := by
                ext
                simpa [rank_000100805_mask_61_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_61_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_61_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_61_subcube_impact_06_denom]
    }
  | .s006 => {
      impact := ⟨5, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_03_subcube_mask := by
            ext
            simpa [rank_000100805_mask_03_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_03_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_03_subcube_impact_05_denomAtRank]
          norm_num [rank_000100805_mask_03_subcube_impact_05_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_19_subcube_mask := by
              ext
              simpa [rank_000100805_mask_19_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_19_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_19_subcube_impact_05_denomAtRank]
            norm_num [rank_000100805_mask_19_subcube_impact_05_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_35_subcube_mask := by
                ext
                simpa [rank_000100805_mask_35_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_35_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_35_subcube_impact_05_denomAtRank]
              norm_num [rank_000100805_mask_35_subcube_impact_05_denom]
            ·
              have hmask : mask = rank_000100805_mask_51_subcube_mask := by
                ext
                simpa [rank_000100805_mask_51_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_51_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_51_subcube_impact_05_denomAtRank]
              norm_num [rank_000100805_mask_51_subcube_impact_05_denom]
    }
  | .s007 => {
      impact := ⟨2, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_05_subcube_mask := by
            ext
            simpa [rank_000100805_mask_05_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_05_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_05_subcube_impact_02_denomAtRank]
          norm_num [rank_000100805_mask_05_subcube_impact_02_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_07_subcube_mask := by
              ext
              simpa [rank_000100805_mask_07_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_07_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_07_subcube_impact_02_denomAtRank]
            norm_num [rank_000100805_mask_07_subcube_impact_02_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_37_subcube_mask := by
                ext
                simpa [rank_000100805_mask_37_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_37_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_37_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_37_subcube_impact_02_denom]
            ·
              have hmask : mask = rank_000100805_mask_39_subcube_mask := by
                ext
                simpa [rank_000100805_mask_39_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_39_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_39_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_39_subcube_impact_02_denom]
    }
  | .s008 => {
      impact := ⟨2, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_24_subcube_mask := by
            ext
            simpa [rank_000100805_mask_24_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_24_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_24_subcube_impact_02_denomAtRank]
          norm_num [rank_000100805_mask_24_subcube_impact_02_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_26_subcube_mask := by
              ext
              simpa [rank_000100805_mask_26_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_26_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_26_subcube_impact_02_denomAtRank]
            norm_num [rank_000100805_mask_26_subcube_impact_02_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_56_subcube_mask := by
                ext
                simpa [rank_000100805_mask_56_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_56_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_56_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_56_subcube_impact_02_denom]
            ·
              have hmask : mask = rank_000100805_mask_58_subcube_mask := by
                ext
                simpa [rank_000100805_mask_58_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_58_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_58_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_58_subcube_impact_02_denom]
    }
  | .s009 => {
      impact := ⟨6, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_20_subcube_mask := by
            ext
            simpa [rank_000100805_mask_20_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_20_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_20_subcube_impact_06_denomAtRank]
          norm_num [rank_000100805_mask_20_subcube_impact_06_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_21_subcube_mask := by
              ext
              simpa [rank_000100805_mask_21_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_21_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_21_subcube_impact_06_denomAtRank]
            norm_num [rank_000100805_mask_21_subcube_impact_06_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_28_subcube_mask := by
                ext
                simpa [rank_000100805_mask_28_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_28_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_28_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_28_subcube_impact_06_denom]
            ·
              have hmask : mask = rank_000100805_mask_29_subcube_mask := by
                ext
                simpa [rank_000100805_mask_29_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_29_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_29_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_29_subcube_impact_06_denom]
    }
  | .s010 => {
      impact := ⟨6, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_25_subcube_mask := by
            ext
            simpa [rank_000100805_mask_25_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_25_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_25_subcube_impact_06_denomAtRank]
          norm_num [rank_000100805_mask_25_subcube_impact_06_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_29_subcube_mask := by
              ext
              simpa [rank_000100805_mask_29_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_29_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_29_subcube_impact_06_denomAtRank]
            norm_num [rank_000100805_mask_29_subcube_impact_06_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_57_subcube_mask := by
                ext
                simpa [rank_000100805_mask_57_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_57_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_57_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_57_subcube_impact_06_denom]
            ·
              have hmask : mask = rank_000100805_mask_61_subcube_mask := by
                ext
                simpa [rank_000100805_mask_61_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_61_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_61_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_61_subcube_impact_06_denom]
    }
  | .s011 => {
      impact := ⟨5, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_19_subcube_mask := by
            ext
            simpa [rank_000100805_mask_19_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_19_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_19_subcube_impact_05_denomAtRank]
          norm_num [rank_000100805_mask_19_subcube_impact_05_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_23_subcube_mask := by
              ext
              simpa [rank_000100805_mask_23_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_23_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_23_subcube_impact_05_denomAtRank]
            norm_num [rank_000100805_mask_23_subcube_impact_05_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_51_subcube_mask := by
                ext
                simpa [rank_000100805_mask_51_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_51_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_51_subcube_impact_05_denomAtRank]
              norm_num [rank_000100805_mask_51_subcube_impact_05_denom]
            ·
              have hmask : mask = rank_000100805_mask_55_subcube_mask := by
                ext
                simpa [rank_000100805_mask_55_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_55_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_55_subcube_impact_05_denomAtRank]
              norm_num [rank_000100805_mask_55_subcube_impact_05_denom]
    }
  | .s012 => {
      impact := ⟨10, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_35_subcube_mask := by
            ext
            simpa [rank_000100805_mask_35_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_35_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_35_subcube_impact_10_denomAtRank]
          norm_num [rank_000100805_mask_35_subcube_impact_10_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_39_subcube_mask := by
              ext
              simpa [rank_000100805_mask_39_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_39_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_39_subcube_impact_10_denomAtRank]
            norm_num [rank_000100805_mask_39_subcube_impact_10_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_43_subcube_mask := by
                ext
                simpa [rank_000100805_mask_43_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_43_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_43_subcube_impact_10_denomAtRank]
              norm_num [rank_000100805_mask_43_subcube_impact_10_denom]
            ·
              have hmask : mask = rank_000100805_mask_47_subcube_mask := by
                ext
                simpa [rank_000100805_mask_47_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_47_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_47_subcube_impact_10_denomAtRank]
              norm_num [rank_000100805_mask_47_subcube_impact_10_denom]
    }
  | .s013 => {
      impact := ⟨5, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_12_subcube_mask := by
            ext
            simpa [rank_000100805_mask_12_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_12_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_12_subcube_impact_05_denomAtRank]
          norm_num [rank_000100805_mask_12_subcube_impact_05_denom]
        ·
          have hmask : mask = rank_000100805_mask_44_subcube_mask := by
            ext
            simpa [rank_000100805_mask_44_subcube_mask] using hmember_tail
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_44_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_44_subcube_impact_05_denomAtRank]
          norm_num [rank_000100805_mask_44_subcube_impact_05_denom]
    }
  | .s014 => {
      impact := ⟨8, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_02_subcube_mask := by
            ext
            simpa [rank_000100805_mask_02_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_02_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_02_subcube_impact_08_denomAtRank]
          norm_num [rank_000100805_mask_02_subcube_impact_08_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_10_subcube_mask := by
              ext
              simpa [rank_000100805_mask_10_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_10_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_10_subcube_impact_08_denomAtRank]
            norm_num [rank_000100805_mask_10_subcube_impact_08_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_18_subcube_mask := by
                ext
                simpa [rank_000100805_mask_18_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_18_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_18_subcube_impact_08_denomAtRank]
              norm_num [rank_000100805_mask_18_subcube_impact_08_denom]
            ·
              have hmask : mask = rank_000100805_mask_26_subcube_mask := by
                ext
                simpa [rank_000100805_mask_26_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_26_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_26_subcube_impact_08_denomAtRank]
              norm_num [rank_000100805_mask_26_subcube_impact_08_denom]
    }
  | .s015 => {
      impact := ⟨2, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_56_subcube_mask := by
            ext
            simpa [rank_000100805_mask_56_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_56_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_56_subcube_impact_02_denomAtRank]
          norm_num [rank_000100805_mask_56_subcube_impact_02_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_58_subcube_mask := by
              ext
              simpa [rank_000100805_mask_58_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_58_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_58_subcube_impact_02_denomAtRank]
            norm_num [rank_000100805_mask_58_subcube_impact_02_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_60_subcube_mask := by
                ext
                simpa [rank_000100805_mask_60_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_60_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_60_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_60_subcube_impact_02_denom]
            ·
              have hmask : mask = rank_000100805_mask_62_subcube_mask := by
                ext
                simpa [rank_000100805_mask_62_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_62_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_62_subcube_impact_02_denomAtRank]
              norm_num [rank_000100805_mask_62_subcube_impact_02_denom]
    }
  | .s016 => {
      impact := ⟨6, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_21_subcube_mask := by
            ext
            simpa [rank_000100805_mask_21_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_21_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_21_subcube_impact_06_denomAtRank]
          norm_num [rank_000100805_mask_21_subcube_impact_06_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_29_subcube_mask := by
              ext
              simpa [rank_000100805_mask_29_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_29_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_29_subcube_impact_06_denomAtRank]
            norm_num [rank_000100805_mask_29_subcube_impact_06_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_53_subcube_mask := by
                ext
                simpa [rank_000100805_mask_53_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_53_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_53_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_53_subcube_impact_06_denom]
            ·
              have hmask : mask = rank_000100805_mask_61_subcube_mask := by
                ext
                simpa [rank_000100805_mask_61_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_61_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_61_subcube_impact_06_denomAtRank]
              norm_num [rank_000100805_mask_61_subcube_impact_06_denom]
    }
  | .s017 => {
      impact := ⟨8, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_18_subcube_mask := by
            ext
            simpa [rank_000100805_mask_18_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_18_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_18_subcube_impact_08_denomAtRank]
          norm_num [rank_000100805_mask_18_subcube_impact_08_denom]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_19_subcube_mask := by
              ext
              simpa [rank_000100805_mask_19_subcube_mask] using h
            rw [hmask]
            have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_19_subcube_rank := by
              ext
              rfl
            rw [hrank, rank_000100805_mask_19_subcube_impact_08_denomAtRank]
            norm_num [rank_000100805_mask_19_subcube_impact_08_denom]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_26_subcube_mask := by
                ext
                simpa [rank_000100805_mask_26_subcube_mask] using h
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_26_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_26_subcube_impact_08_denomAtRank]
              norm_num [rank_000100805_mask_26_subcube_impact_08_denom]
            ·
              have hmask : mask = rank_000100805_mask_27_subcube_mask := by
                ext
                simpa [rank_000100805_mask_27_subcube_mask] using hmember_tail_tail_tail
              rw [hmask]
              have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_27_subcube_rank := by
                ext
                rfl
              rw [hrank, rank_000100805_mask_27_subcube_impact_08_denomAtRank]
              norm_num [rank_000100805_mask_27_subcube_impact_08_denom]
    }
  | .s018 => {
      impact := ⟨5, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_12_subcube_mask := by
            ext
            simpa [rank_000100805_mask_12_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_12_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_12_subcube_impact_05_denomAtRank]
          norm_num [rank_000100805_mask_12_subcube_impact_05_denom]
        ·
          have hmask : mask = rank_000100805_mask_14_subcube_mask := by
            ext
            simpa [rank_000100805_mask_14_subcube_mask] using hmember_tail
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_14_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_14_subcube_impact_05_denomAtRank]
          norm_num [rank_000100805_mask_14_subcube_impact_05_denom]
    }
  | .s019 => {
      impact := ⟨10, by decide⟩
      not_zero := by decide
      not_last := by decide
      nonpos := by
        intro mask hlt hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_15_subcube_mask := by
            ext
            simpa [rank_000100805_mask_15_subcube_mask] using h
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_15_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_15_subcube_impact_10_denomAtRank]
          norm_num [rank_000100805_mask_15_subcube_impact_10_denom]
        ·
          have hmask : mask = rank_000100805_mask_47_subcube_mask := by
            ext
            simpa [rank_000100805_mask_47_subcube_mask] using hmember_tail
          rw [hmask]
          have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_47_subcube_rank := by
            ext
            rfl
          rw [hrank, rank_000100805_mask_47_subcube_impact_10_denomAtRank]
          norm_num [rank_000100805_mask_47_subcube_impact_10_denom]
    }

private theorem generatedSubcube_complete
    {mask : SignMask}
    (hnot : ¬ generatedGoodMaskMember mask) :
    exists cube : GeneratedImpactSubcube, generatedSubcubeMember cube mask := by
  fin_cases mask
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s002, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s006, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s007, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s007, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s001, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s001, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s014, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s013, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s005, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s018, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s019, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s002, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s006, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s009, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s009, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s011, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s008, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s010, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s008, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s017, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s009, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s005, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s002, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s006, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s004, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s007, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s004, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s007, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s001, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s001, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s003, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s012, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s013, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s005, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s003, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s012, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s002, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s006, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s004, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s016, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s004, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s011, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s008, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s010, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s003, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s015, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s005, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s003, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))

private def generatedImpactSubcubeCover :
    ImpactSubcubeCover 100805 generatedGoodMaskMember where
  Family := GeneratedImpactSubcube
  Member := generatedSubcubeMember
  obstruction := generatedSubcubeObstruction
  complete := by
    intro mask hnot
    exact generatedSubcube_complete hnot

theorem generatedGoodMaskMember_of_GoodDirection_viaImpactSubcubes
    {mask : SignMask} (hlt : 100805 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask :=
  generatedImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood

theorem impactSubcubeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeSmoke
