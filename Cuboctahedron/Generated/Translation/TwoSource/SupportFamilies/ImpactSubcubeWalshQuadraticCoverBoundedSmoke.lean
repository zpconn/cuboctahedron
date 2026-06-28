import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadratic

/-!
Generated AP.16CC bounded WalshQuadratic impact-subcube cover smoke.

This validates `WalshQuadraticImpactObstruction` on one AP16BJ
selected subcube. Denominator equality is still proved by bounded
mask replay, so this remains diagnostic rather than production
evidence.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadraticCoverBoundedSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

namespace Subcube000

-- selected subcube 0, label *000**, impact 1
private def generatedCube : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some false
    | SignBit.d11m => some false
    | _ => none

private theorem generatedCube_z
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 32/9
  d111 := 104/27
  d11m := 8/9
  d1m1 := 40/27
  dm11 := (-8/3)
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def generatedBound : WalshQuadratic where
  c := 4
  y := 0
  z := (-32/9)
  d111 := (-104/27)
  d11m := (-8/9)
  d1m1 := 40/27
  dm11 := 8/3
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def generatedUpper :
    WalshQuadraticSubcubeUpperBound generatedCube generatedPoly where
  bound := generatedBound
  c_le := by
    intro mask hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId]
  y_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y]
  z_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
  d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
  d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
  d1m1_le := by
    intro mask hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
  yz_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
  y_d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>
      by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

theorem generatedQuadratic_nonpos
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    generatedPoly.coeffEval mask <= 0 :=
  generatedUpper.coeffEval_nonpos hmask

end Subcube000

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

private theorem Subcube000_mask_00_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_00_subcube_mask = rank_000100805_mask_00_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_00_subcube_mask, rank_000100805_mask_00_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private theorem Subcube000_mask_01_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_01_subcube_mask = rank_000100805_mask_01_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_01_subcube_mask, rank_000100805_mask_01_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private theorem Subcube000_mask_16_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_16_subcube_mask = rank_000100805_mask_16_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_16_subcube_mask, rank_000100805_mask_16_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private theorem Subcube000_mask_17_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_17_subcube_mask = rank_000100805_mask_17_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_17_subcube_mask, rank_000100805_mask_17_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private theorem Subcube000_mask_32_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_32_subcube_mask = rank_000100805_mask_32_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_32_subcube_mask, rank_000100805_mask_32_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private theorem Subcube000_mask_33_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_33_subcube_mask = rank_000100805_mask_33_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_33_subcube_mask, rank_000100805_mask_33_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private theorem Subcube000_mask_48_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_48_subcube_mask = rank_000100805_mask_48_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_48_subcube_mask, rank_000100805_mask_48_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private theorem Subcube000_mask_49_coeffEval :
    Subcube000.generatedPoly.coeffEval rank_000100805_mask_49_subcube_mask = rank_000100805_mask_49_subcube_impact_01_denom := by
  norm_num [Subcube000.generatedPoly, rank_000100805_mask_49_subcube_mask, rank_000100805_mask_49_subcube_impact_01_denom,
    WalshQuadratic.coeffEval, SignBit.value, SignBit.toPairId,
    maskBitForPair]

private def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 2 \/
    mask.val = 3 \/
    mask.val = 4 \/
    mask.val = 5 \/
    mask.val = 6 \/
    mask.val = 7 \/
    mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 10 \/
    mask.val = 11 \/
    mask.val = 12 \/
    mask.val = 13 \/
    mask.val = 14 \/
    mask.val = 15 \/
    mask.val = 18 \/
    mask.val = 19 \/
    mask.val = 20 \/
    mask.val = 21 \/
    mask.val = 22 \/
    mask.val = 23 \/
    mask.val = 24 \/
    mask.val = 25 \/
    mask.val = 26 \/
    mask.val = 27 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 34 \/
    mask.val = 35 \/
    mask.val = 36 \/
    mask.val = 37 \/
    mask.val = 38 \/
    mask.val = 39 \/
    mask.val = 40 \/
    mask.val = 41 \/
    mask.val = 42 \/
    mask.val = 43 \/
    mask.val = 44 \/
    mask.val = 45 \/
    mask.val = 46 \/
    mask.val = 47 \/
    mask.val = 50 \/
    mask.val = 51 \/
    mask.val = 52 \/
    mask.val = 53 \/
    mask.val = 54 \/
    mask.val = 55 \/
    mask.val = 56 \/
    mask.val = 57 \/
    mask.val = 58 \/
    mask.val = 59 \/
    mask.val = 60 \/
    mask.val = 61 \/
    mask.val = 62 \/
    mask.val = 63

private inductive GeneratedWalshQuadraticSubcube
  | s000
deriving DecidableEq, Repr

private def generatedSubcubeMember : GeneratedWalshQuadraticSubcube -> SignMask -> Prop
  | .s000, mask =>
      mask.val = 0 \/
    mask.val = 1 \/
    mask.val = 16 \/
    mask.val = 17 \/
    mask.val = 32 \/
    mask.val = 33 \/
    mask.val = 48 \/
    mask.val = 49 -- subcube *000**

private def generatedWalshQuadraticObstruction :
    (cube : GeneratedWalshQuadraticSubcube) ->
      WalshQuadraticImpactObstruction 100805 (generatedSubcubeMember cube)
  | .s000 => {
      impact := ⟨1, by decide⟩
      not_zero := by decide
      not_last := by decide
      cube := Subcube000.generatedCube
      member_cube := by
        intro mask hmember
        simp [generatedSubcubeMember] at hmember
        rcases hmember with h | hmember_tail
        ·
          have hmask : mask = rank_000100805_mask_00_subcube_mask := by
            ext
            simpa [rank_000100805_mask_00_subcube_mask] using h
          rw [hmask]
          intro bit
          cases bit <;> simp [
            Subcube000.generatedCube, rank_000100805_mask_00_subcube_mask,
            MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
        ·
          rcases hmember_tail with h | hmember_tail_tail
          ·
            have hmask : mask = rank_000100805_mask_01_subcube_mask := by
              ext
              simpa [rank_000100805_mask_01_subcube_mask] using h
            rw [hmask]
            intro bit
            cases bit <;> simp [
              Subcube000.generatedCube, rank_000100805_mask_01_subcube_mask,
              MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
          ·
            rcases hmember_tail_tail with h | hmember_tail_tail_tail
            ·
              have hmask : mask = rank_000100805_mask_16_subcube_mask := by
                ext
                simpa [rank_000100805_mask_16_subcube_mask] using h
              rw [hmask]
              intro bit
              cases bit <;> simp [
                Subcube000.generatedCube, rank_000100805_mask_16_subcube_mask,
                MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
            ·
              rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000100805_mask_17_subcube_mask := by
                  ext
                  simpa [rank_000100805_mask_17_subcube_mask] using h
                rw [hmask]
                intro bit
                cases bit <;> simp [
                  Subcube000.generatedCube, rank_000100805_mask_17_subcube_mask,
                  MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
              ·
                rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000100805_mask_32_subcube_mask := by
                    ext
                    simpa [rank_000100805_mask_32_subcube_mask] using h
                  rw [hmask]
                  intro bit
                  cases bit <;> simp [
                    Subcube000.generatedCube, rank_000100805_mask_32_subcube_mask,
                    MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
                ·
                  rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
                  ·
                    have hmask : mask = rank_000100805_mask_33_subcube_mask := by
                      ext
                      simpa [rank_000100805_mask_33_subcube_mask] using h
                    rw [hmask]
                    intro bit
                    cases bit <;> simp [
                      Subcube000.generatedCube, rank_000100805_mask_33_subcube_mask,
                      MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
                  ·
                    rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                    ·
                      have hmask : mask = rank_000100805_mask_48_subcube_mask := by
                        ext
                        simpa [rank_000100805_mask_48_subcube_mask] using h
                      rw [hmask]
                      intro bit
                      cases bit <;> simp [
                        Subcube000.generatedCube, rank_000100805_mask_48_subcube_mask,
                        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
                    ·
                      have hmask : mask = rank_000100805_mask_49_subcube_mask := by
                        ext
                        simpa [rank_000100805_mask_49_subcube_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                      rw [hmask]
                      intro bit
                      cases bit <;> simp [
                        Subcube000.generatedCube, rank_000100805_mask_49_subcube_mask,
                        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]
      poly := Subcube000.generatedPoly
      upper := Subcube000.generatedUpper
      denom_eq := by
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
          exact (Subcube000_mask_00_coeffEval).symm
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
            exact (Subcube000_mask_01_coeffEval).symm
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
              exact (Subcube000_mask_16_coeffEval).symm
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
                exact (Subcube000_mask_17_coeffEval).symm
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
                  exact (Subcube000_mask_32_coeffEval).symm
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
                    exact (Subcube000_mask_33_coeffEval).symm
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
                      exact (Subcube000_mask_48_coeffEval).symm
                    ·
                      have hmask : mask = rank_000100805_mask_49_subcube_mask := by
                        ext
                        simpa [rank_000100805_mask_49_subcube_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                      rw [hmask]
                      have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = rank_000100805_mask_49_subcube_rank := by
                        ext
                        rfl
                      rw [hrank, rank_000100805_mask_49_subcube_impact_01_denomAtRank]
                      exact (Subcube000_mask_49_coeffEval).symm
    }

private theorem generatedSubcube_complete
    {mask : SignMask}
    (hnot : ¬ generatedGoodMaskMember mask) :
    exists cube : GeneratedWalshQuadraticSubcube, generatedSubcubeMember cube mask := by
  fin_cases mask
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact ⟨.s000, by simp [generatedSubcubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))

private def generatedImpactSubcubeCover :
    ImpactSubcubeCover 100805 generatedGoodMaskMember where
  Family := GeneratedWalshQuadraticSubcube
  Member := generatedSubcubeMember
  obstruction := fun cube =>
    (generatedWalshQuadraticObstruction cube).toImpactSubcubeObstruction
  complete := by
    intro mask hnot
    exact generatedSubcube_complete hnot
theorem generatedGoodMaskMember_of_GoodDirection_viaQuadraticImpactSubcubes
    {mask : SignMask} (hlt : 100805 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask :=
  generatedImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood

theorem impactSubcubeWalshQuadraticCoverBoundedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshQuadraticCoverBoundedSmoke
