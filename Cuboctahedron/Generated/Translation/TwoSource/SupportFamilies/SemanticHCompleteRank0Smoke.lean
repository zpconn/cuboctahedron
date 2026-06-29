import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

/-!
Generated rank-0 semantic hcomplete smoke for Phase 6Z.6K.8AP.16DU.9DE.

This file is diagnostic only.  It checks the exact theorem surface needed
for generated positive-survivor completeness: arbitrary identity-linear
`GoodDirectionAtRank` cases map to broad source-index/state descriptors.
Bad-direction masks are used only to contradict the `GoodDirectionAtRank`
hypothesis for this one rank; they are not exported as coverage evidence.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticHCompleteRank0Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

private def mask_00_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_00_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_00_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (-28/3) }
private def mask_00_badDirection_denom : Rat := (-4/3)

private theorem mask_00_badDirection_rankWord :
    rankPairWord? mask_00_badDirection_word = some mask_00_badDirection_rank := by
  decide

private theorem mask_00_badDirection_unrank :
    unrankPairWord mask_00_badDirection_rank = mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_00_badDirection_word mask_00_badDirection_rank).1
    mask_00_badDirection_rankWord |>.symm

private theorem mask_00_badDirection_seqChoice :
    translationChoiceSeq mask_00_badDirection_word mask_00_badDirection_mask = mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask mask_00_badDirection_rank mask_00_badDirection_mask = mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_00_badDirection_unrank]
  exact mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_00_badDirection_bAtRank :
    translationBAtRankMask mask_00_badDirection_rank mask_00_badDirection_mask = mask_00_badDirection_b := by
  rw [translationBAtRankMask, mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_00_badDirection_b, mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_00_badDirection_denomAtRank :
    impactDenomAtRank mask_00_badDirection_rank mask_00_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_00_badDirection_denom := by
  rw [impactDenomAtRank, mask_00_badDirection_seqAtRank, mask_00_badDirection_bAtRank]
  norm_num [mask_00_badDirection_denom, mask_00_badDirection_seq, mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_00_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_00_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_00_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_00_badDirection_denomAtRank]
  norm_num [mask_00_badDirection_denom]

private def mask_01_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_01_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_01_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (-28/3) }
private def mask_01_badDirection_denom : Rat := (-4/3)

private theorem mask_01_badDirection_rankWord :
    rankPairWord? mask_01_badDirection_word = some mask_01_badDirection_rank := by
  decide

private theorem mask_01_badDirection_unrank :
    unrankPairWord mask_01_badDirection_rank = mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_01_badDirection_word mask_01_badDirection_rank).1
    mask_01_badDirection_rankWord |>.symm

private theorem mask_01_badDirection_seqChoice :
    translationChoiceSeq mask_01_badDirection_word mask_01_badDirection_mask = mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask mask_01_badDirection_rank mask_01_badDirection_mask = mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_01_badDirection_unrank]
  exact mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_01_badDirection_bAtRank :
    translationBAtRankMask mask_01_badDirection_rank mask_01_badDirection_mask = mask_01_badDirection_b := by
  rw [translationBAtRankMask, mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_01_badDirection_b, mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_01_badDirection_denomAtRank :
    impactDenomAtRank mask_01_badDirection_rank mask_01_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_01_badDirection_denom := by
  rw [impactDenomAtRank, mask_01_badDirection_seqAtRank, mask_01_badDirection_bAtRank]
  norm_num [mask_01_badDirection_denom, mask_01_badDirection_seq, mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_01_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_01_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_01_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_01_badDirection_denomAtRank]
  norm_num [mask_01_badDirection_denom]

private def mask_02_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_02_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_02_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (-4/3) }
private def mask_02_badDirection_denom : Rat := (-4/3)

private theorem mask_02_badDirection_rankWord :
    rankPairWord? mask_02_badDirection_word = some mask_02_badDirection_rank := by
  decide

private theorem mask_02_badDirection_unrank :
    unrankPairWord mask_02_badDirection_rank = mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_02_badDirection_word mask_02_badDirection_rank).1
    mask_02_badDirection_rankWord |>.symm

private theorem mask_02_badDirection_seqChoice :
    translationChoiceSeq mask_02_badDirection_word mask_02_badDirection_mask = mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask mask_02_badDirection_rank mask_02_badDirection_mask = mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_02_badDirection_unrank]
  exact mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_02_badDirection_bAtRank :
    translationBAtRankMask mask_02_badDirection_rank mask_02_badDirection_mask = mask_02_badDirection_b := by
  rw [translationBAtRankMask, mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_02_badDirection_b, mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_02_badDirection_denomAtRank :
    impactDenomAtRank mask_02_badDirection_rank mask_02_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_02_badDirection_denom := by
  rw [impactDenomAtRank, mask_02_badDirection_seqAtRank, mask_02_badDirection_bAtRank]
  norm_num [mask_02_badDirection_denom, mask_02_badDirection_seq, mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_02_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_02_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_02_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_02_badDirection_denomAtRank]
  norm_num [mask_02_badDirection_denom]

private def mask_03_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_03_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_03_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (-4/3) }
private def mask_03_badDirection_denom : Rat := (-4/3)

private theorem mask_03_badDirection_rankWord :
    rankPairWord? mask_03_badDirection_word = some mask_03_badDirection_rank := by
  decide

private theorem mask_03_badDirection_unrank :
    unrankPairWord mask_03_badDirection_rank = mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_03_badDirection_word mask_03_badDirection_rank).1
    mask_03_badDirection_rankWord |>.symm

private theorem mask_03_badDirection_seqChoice :
    translationChoiceSeq mask_03_badDirection_word mask_03_badDirection_mask = mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask mask_03_badDirection_rank mask_03_badDirection_mask = mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_03_badDirection_unrank]
  exact mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_03_badDirection_bAtRank :
    translationBAtRankMask mask_03_badDirection_rank mask_03_badDirection_mask = mask_03_badDirection_b := by
  rw [translationBAtRankMask, mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_03_badDirection_b, mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_03_badDirection_denomAtRank :
    impactDenomAtRank mask_03_badDirection_rank mask_03_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_03_badDirection_denom := by
  rw [impactDenomAtRank, mask_03_badDirection_seqAtRank, mask_03_badDirection_bAtRank]
  norm_num [mask_03_badDirection_denom, mask_03_badDirection_seq, mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_03_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_03_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_03_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_03_badDirection_denomAtRank]
  norm_num [mask_03_badDirection_denom]

private def mask_04_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_04_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_04_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := -4 }
private def mask_04_badDirection_denom : Rat := -4

private theorem mask_04_badDirection_rankWord :
    rankPairWord? mask_04_badDirection_word = some mask_04_badDirection_rank := by
  decide

private theorem mask_04_badDirection_unrank :
    unrankPairWord mask_04_badDirection_rank = mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_04_badDirection_word mask_04_badDirection_rank).1
    mask_04_badDirection_rankWord |>.symm

private theorem mask_04_badDirection_seqChoice :
    translationChoiceSeq mask_04_badDirection_word mask_04_badDirection_mask = mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask mask_04_badDirection_rank mask_04_badDirection_mask = mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_04_badDirection_unrank]
  exact mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_04_badDirection_bAtRank :
    translationBAtRankMask mask_04_badDirection_rank mask_04_badDirection_mask = mask_04_badDirection_b := by
  rw [translationBAtRankMask, mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_04_badDirection_b, mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_04_badDirection_denomAtRank :
    impactDenomAtRank mask_04_badDirection_rank mask_04_badDirection_mask (⟨6, by decide⟩ : Impact15) =
      mask_04_badDirection_denom := by
  rw [impactDenomAtRank, mask_04_badDirection_seqAtRank, mask_04_badDirection_bAtRank]
  norm_num [mask_04_badDirection_denom, mask_04_badDirection_seq, mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_04_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_04_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_04_badDirection_mask)
      (i := (⟨6, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_04_badDirection_denomAtRank]
  norm_num [mask_04_badDirection_denom]

private def mask_05_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_05_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_05_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := -4 }
private def mask_05_badDirection_denom : Rat := -12

private theorem mask_05_badDirection_rankWord :
    rankPairWord? mask_05_badDirection_word = some mask_05_badDirection_rank := by
  decide

private theorem mask_05_badDirection_unrank :
    unrankPairWord mask_05_badDirection_rank = mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_05_badDirection_word mask_05_badDirection_rank).1
    mask_05_badDirection_rankWord |>.symm

private theorem mask_05_badDirection_seqChoice :
    translationChoiceSeq mask_05_badDirection_word mask_05_badDirection_mask = mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask mask_05_badDirection_rank mask_05_badDirection_mask = mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_05_badDirection_unrank]
  exact mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_05_badDirection_bAtRank :
    translationBAtRankMask mask_05_badDirection_rank mask_05_badDirection_mask = mask_05_badDirection_b := by
  rw [translationBAtRankMask, mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_05_badDirection_b, mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_05_badDirection_denomAtRank :
    impactDenomAtRank mask_05_badDirection_rank mask_05_badDirection_mask (⟨8, by decide⟩ : Impact15) =
      mask_05_badDirection_denom := by
  rw [impactDenomAtRank, mask_05_badDirection_seqAtRank, mask_05_badDirection_bAtRank]
  norm_num [mask_05_badDirection_denom, mask_05_badDirection_seq, mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_05_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_05_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_05_badDirection_mask)
      (i := (⟨8, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_05_badDirection_denomAtRank]
  norm_num [mask_05_badDirection_denom]

private def mask_06_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_06_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_06_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := 4 }
private def mask_06_badDirection_denom : Rat := -12

private theorem mask_06_badDirection_rankWord :
    rankPairWord? mask_06_badDirection_word = some mask_06_badDirection_rank := by
  decide

private theorem mask_06_badDirection_unrank :
    unrankPairWord mask_06_badDirection_rank = mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_06_badDirection_word mask_06_badDirection_rank).1
    mask_06_badDirection_rankWord |>.symm

private theorem mask_06_badDirection_seqChoice :
    translationChoiceSeq mask_06_badDirection_word mask_06_badDirection_mask = mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask mask_06_badDirection_rank mask_06_badDirection_mask = mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_06_badDirection_unrank]
  exact mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_06_badDirection_bAtRank :
    translationBAtRankMask mask_06_badDirection_rank mask_06_badDirection_mask = mask_06_badDirection_b := by
  rw [translationBAtRankMask, mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_06_badDirection_b, mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_06_badDirection_denomAtRank :
    impactDenomAtRank mask_06_badDirection_rank mask_06_badDirection_mask (⟨10, by decide⟩ : Impact15) =
      mask_06_badDirection_denom := by
  rw [impactDenomAtRank, mask_06_badDirection_seqAtRank, mask_06_badDirection_bAtRank]
  norm_num [mask_06_badDirection_denom, mask_06_badDirection_seq, mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_06_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_06_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_06_badDirection_mask)
      (i := (⟨10, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_06_badDirection_denomAtRank]
  norm_num [mask_06_badDirection_denom]

private def mask_07_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_07_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_07_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := 4 }
private def mask_07_badDirection_denom : Rat := -4

private theorem mask_07_badDirection_rankWord :
    rankPairWord? mask_07_badDirection_word = some mask_07_badDirection_rank := by
  decide

private theorem mask_07_badDirection_unrank :
    unrankPairWord mask_07_badDirection_rank = mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_07_badDirection_word mask_07_badDirection_rank).1
    mask_07_badDirection_rankWord |>.symm

private theorem mask_07_badDirection_seqChoice :
    translationChoiceSeq mask_07_badDirection_word mask_07_badDirection_mask = mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask mask_07_badDirection_rank mask_07_badDirection_mask = mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_07_badDirection_unrank]
  exact mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_07_badDirection_bAtRank :
    translationBAtRankMask mask_07_badDirection_rank mask_07_badDirection_mask = mask_07_badDirection_b := by
  rw [translationBAtRankMask, mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_07_badDirection_b, mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_07_badDirection_denomAtRank :
    impactDenomAtRank mask_07_badDirection_rank mask_07_badDirection_mask (⟨8, by decide⟩ : Impact15) =
      mask_07_badDirection_denom := by
  rw [impactDenomAtRank, mask_07_badDirection_seqAtRank, mask_07_badDirection_bAtRank]
  norm_num [mask_07_badDirection_denom, mask_07_badDirection_seq, mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_07_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_07_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_07_badDirection_mask)
      (i := (⟨8, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_07_badDirection_denomAtRank]
  norm_num [mask_07_badDirection_denom]

private def mask_10_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_10_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_10_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := (-20/3) }
private def mask_10_badDirection_denom : Rat := (-20/3)

private theorem mask_10_badDirection_rankWord :
    rankPairWord? mask_10_badDirection_word = some mask_10_badDirection_rank := by
  decide

private theorem mask_10_badDirection_unrank :
    unrankPairWord mask_10_badDirection_rank = mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_10_badDirection_word mask_10_badDirection_rank).1
    mask_10_badDirection_rankWord |>.symm

private theorem mask_10_badDirection_seqChoice :
    translationChoiceSeq mask_10_badDirection_word mask_10_badDirection_mask = mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask mask_10_badDirection_rank mask_10_badDirection_mask = mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_10_badDirection_unrank]
  exact mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_10_badDirection_bAtRank :
    translationBAtRankMask mask_10_badDirection_rank mask_10_badDirection_mask = mask_10_badDirection_b := by
  rw [translationBAtRankMask, mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_10_badDirection_b, mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_10_badDirection_denomAtRank :
    impactDenomAtRank mask_10_badDirection_rank mask_10_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_10_badDirection_denom := by
  rw [impactDenomAtRank, mask_10_badDirection_seqAtRank, mask_10_badDirection_bAtRank]
  norm_num [mask_10_badDirection_denom, mask_10_badDirection_seq, mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_10_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_10_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_10_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_10_badDirection_denomAtRank]
  norm_num [mask_10_badDirection_denom]

private def mask_11_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_11_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_11_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := (-20/3) }
private def mask_11_badDirection_denom : Rat := (-20/3)

private theorem mask_11_badDirection_rankWord :
    rankPairWord? mask_11_badDirection_word = some mask_11_badDirection_rank := by
  decide

private theorem mask_11_badDirection_unrank :
    unrankPairWord mask_11_badDirection_rank = mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_11_badDirection_word mask_11_badDirection_rank).1
    mask_11_badDirection_rankWord |>.symm

private theorem mask_11_badDirection_seqChoice :
    translationChoiceSeq mask_11_badDirection_word mask_11_badDirection_mask = mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask mask_11_badDirection_rank mask_11_badDirection_mask = mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_11_badDirection_unrank]
  exact mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_11_badDirection_bAtRank :
    translationBAtRankMask mask_11_badDirection_rank mask_11_badDirection_mask = mask_11_badDirection_b := by
  rw [translationBAtRankMask, mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_11_badDirection_b, mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_11_badDirection_denomAtRank :
    impactDenomAtRank mask_11_badDirection_rank mask_11_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_11_badDirection_denom := by
  rw [impactDenomAtRank, mask_11_badDirection_seqAtRank, mask_11_badDirection_bAtRank]
  norm_num [mask_11_badDirection_denom, mask_11_badDirection_seq, mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_11_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_11_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_11_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_11_badDirection_denomAtRank]
  norm_num [mask_11_badDirection_denom]

private def mask_12_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_12_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_12_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (-28/3) }
private def mask_12_badDirection_denom : Rat := (-4/3)

private theorem mask_12_badDirection_rankWord :
    rankPairWord? mask_12_badDirection_word = some mask_12_badDirection_rank := by
  decide

private theorem mask_12_badDirection_unrank :
    unrankPairWord mask_12_badDirection_rank = mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_12_badDirection_word mask_12_badDirection_rank).1
    mask_12_badDirection_rankWord |>.symm

private theorem mask_12_badDirection_seqChoice :
    translationChoiceSeq mask_12_badDirection_word mask_12_badDirection_mask = mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask mask_12_badDirection_rank mask_12_badDirection_mask = mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_12_badDirection_unrank]
  exact mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_12_badDirection_bAtRank :
    translationBAtRankMask mask_12_badDirection_rank mask_12_badDirection_mask = mask_12_badDirection_b := by
  rw [translationBAtRankMask, mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_12_badDirection_b, mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_12_badDirection_denomAtRank :
    impactDenomAtRank mask_12_badDirection_rank mask_12_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_12_badDirection_denom := by
  rw [impactDenomAtRank, mask_12_badDirection_seqAtRank, mask_12_badDirection_bAtRank]
  norm_num [mask_12_badDirection_denom, mask_12_badDirection_seq, mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_12_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_12_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_12_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_12_badDirection_denomAtRank]
  norm_num [mask_12_badDirection_denom]

private def mask_14_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_14_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_14_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (-4/3) }
private def mask_14_badDirection_denom : Rat := (-4/3)

private theorem mask_14_badDirection_rankWord :
    rankPairWord? mask_14_badDirection_word = some mask_14_badDirection_rank := by
  decide

private theorem mask_14_badDirection_unrank :
    unrankPairWord mask_14_badDirection_rank = mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_14_badDirection_word mask_14_badDirection_rank).1
    mask_14_badDirection_rankWord |>.symm

private theorem mask_14_badDirection_seqChoice :
    translationChoiceSeq mask_14_badDirection_word mask_14_badDirection_mask = mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask mask_14_badDirection_rank mask_14_badDirection_mask = mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_14_badDirection_unrank]
  exact mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_14_badDirection_bAtRank :
    translationBAtRankMask mask_14_badDirection_rank mask_14_badDirection_mask = mask_14_badDirection_b := by
  rw [translationBAtRankMask, mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_14_badDirection_b, mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_14_badDirection_denomAtRank :
    impactDenomAtRank mask_14_badDirection_rank mask_14_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_14_badDirection_denom := by
  rw [impactDenomAtRank, mask_14_badDirection_seqAtRank, mask_14_badDirection_bAtRank]
  norm_num [mask_14_badDirection_denom, mask_14_badDirection_seq, mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_14_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_14_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_14_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_14_badDirection_denomAtRank]
  norm_num [mask_14_badDirection_denom]

private def mask_15_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_15_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_15_badDirection_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-4/3) }
private def mask_15_badDirection_denom : Rat := (-4/3)

private theorem mask_15_badDirection_rankWord :
    rankPairWord? mask_15_badDirection_word = some mask_15_badDirection_rank := by
  decide

private theorem mask_15_badDirection_unrank :
    unrankPairWord mask_15_badDirection_rank = mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_15_badDirection_word mask_15_badDirection_rank).1
    mask_15_badDirection_rankWord |>.symm

private theorem mask_15_badDirection_seqChoice :
    translationChoiceSeq mask_15_badDirection_word mask_15_badDirection_mask = mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask mask_15_badDirection_rank mask_15_badDirection_mask = mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_15_badDirection_unrank]
  exact mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_15_badDirection_bAtRank :
    translationBAtRankMask mask_15_badDirection_rank mask_15_badDirection_mask = mask_15_badDirection_b := by
  rw [translationBAtRankMask, mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_15_badDirection_b, mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_15_badDirection_denomAtRank :
    impactDenomAtRank mask_15_badDirection_rank mask_15_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_15_badDirection_denom := by
  rw [impactDenomAtRank, mask_15_badDirection_seqAtRank, mask_15_badDirection_bAtRank]
  norm_num [mask_15_badDirection_denom, mask_15_badDirection_seq, mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_15_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_15_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_15_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_15_badDirection_denomAtRank]
  norm_num [mask_15_badDirection_denom]

private def mask_17_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_17_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_17_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := -4 }
private def mask_17_badDirection_denom : Rat := (-20/3)

private theorem mask_17_badDirection_rankWord :
    rankPairWord? mask_17_badDirection_word = some mask_17_badDirection_rank := by
  decide

private theorem mask_17_badDirection_unrank :
    unrankPairWord mask_17_badDirection_rank = mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_17_badDirection_word mask_17_badDirection_rank).1
    mask_17_badDirection_rankWord |>.symm

private theorem mask_17_badDirection_seqChoice :
    translationChoiceSeq mask_17_badDirection_word mask_17_badDirection_mask = mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask mask_17_badDirection_rank mask_17_badDirection_mask = mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_17_badDirection_unrank]
  exact mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_17_badDirection_bAtRank :
    translationBAtRankMask mask_17_badDirection_rank mask_17_badDirection_mask = mask_17_badDirection_b := by
  rw [translationBAtRankMask, mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_17_badDirection_b, mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_17_badDirection_denomAtRank :
    impactDenomAtRank mask_17_badDirection_rank mask_17_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_17_badDirection_denom := by
  rw [impactDenomAtRank, mask_17_badDirection_seqAtRank, mask_17_badDirection_bAtRank]
  norm_num [mask_17_badDirection_denom, mask_17_badDirection_seq, mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_17_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_17_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_17_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_17_badDirection_denomAtRank]
  norm_num [mask_17_badDirection_denom]

private def mask_19_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_19_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_19_badDirection_b : Vec3 Rat := { x := -4, y := (-20/3), z := 4 }
private def mask_19_badDirection_denom : Rat := (-20/3)

private theorem mask_19_badDirection_rankWord :
    rankPairWord? mask_19_badDirection_word = some mask_19_badDirection_rank := by
  decide

private theorem mask_19_badDirection_unrank :
    unrankPairWord mask_19_badDirection_rank = mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_19_badDirection_word mask_19_badDirection_rank).1
    mask_19_badDirection_rankWord |>.symm

private theorem mask_19_badDirection_seqChoice :
    translationChoiceSeq mask_19_badDirection_word mask_19_badDirection_mask = mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask mask_19_badDirection_rank mask_19_badDirection_mask = mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_19_badDirection_unrank]
  exact mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_19_badDirection_bAtRank :
    translationBAtRankMask mask_19_badDirection_rank mask_19_badDirection_mask = mask_19_badDirection_b := by
  rw [translationBAtRankMask, mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_19_badDirection_b, mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_19_badDirection_denomAtRank :
    impactDenomAtRank mask_19_badDirection_rank mask_19_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_19_badDirection_denom := by
  rw [impactDenomAtRank, mask_19_badDirection_seqAtRank, mask_19_badDirection_bAtRank]
  norm_num [mask_19_badDirection_denom, mask_19_badDirection_seq, mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_19_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_19_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_19_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_19_badDirection_denomAtRank]
  norm_num [mask_19_badDirection_denom]

private def mask_20_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_20_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_20_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (4/3) }
private def mask_20_badDirection_denom : Rat := (-4/3)

private theorem mask_20_badDirection_rankWord :
    rankPairWord? mask_20_badDirection_word = some mask_20_badDirection_rank := by
  decide

private theorem mask_20_badDirection_unrank :
    unrankPairWord mask_20_badDirection_rank = mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_20_badDirection_word mask_20_badDirection_rank).1
    mask_20_badDirection_rankWord |>.symm

private theorem mask_20_badDirection_seqChoice :
    translationChoiceSeq mask_20_badDirection_word mask_20_badDirection_mask = mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask mask_20_badDirection_rank mask_20_badDirection_mask = mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_20_badDirection_unrank]
  exact mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_20_badDirection_bAtRank :
    translationBAtRankMask mask_20_badDirection_rank mask_20_badDirection_mask = mask_20_badDirection_b := by
  rw [translationBAtRankMask, mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_20_badDirection_b, mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_20_badDirection_denomAtRank :
    impactDenomAtRank mask_20_badDirection_rank mask_20_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_20_badDirection_denom := by
  rw [impactDenomAtRank, mask_20_badDirection_seqAtRank, mask_20_badDirection_bAtRank]
  norm_num [mask_20_badDirection_denom, mask_20_badDirection_seq, mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_20_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_20_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_20_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_20_badDirection_denomAtRank]
  norm_num [mask_20_badDirection_denom]

private def mask_21_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_21_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_21_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (4/3) }
private def mask_21_badDirection_denom : Rat := (-4/3)

private theorem mask_21_badDirection_rankWord :
    rankPairWord? mask_21_badDirection_word = some mask_21_badDirection_rank := by
  decide

private theorem mask_21_badDirection_unrank :
    unrankPairWord mask_21_badDirection_rank = mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_21_badDirection_word mask_21_badDirection_rank).1
    mask_21_badDirection_rankWord |>.symm

private theorem mask_21_badDirection_seqChoice :
    translationChoiceSeq mask_21_badDirection_word mask_21_badDirection_mask = mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask mask_21_badDirection_rank mask_21_badDirection_mask = mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_21_badDirection_unrank]
  exact mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_21_badDirection_bAtRank :
    translationBAtRankMask mask_21_badDirection_rank mask_21_badDirection_mask = mask_21_badDirection_b := by
  rw [translationBAtRankMask, mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_21_badDirection_b, mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_21_badDirection_denomAtRank :
    impactDenomAtRank mask_21_badDirection_rank mask_21_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_21_badDirection_denom := by
  rw [impactDenomAtRank, mask_21_badDirection_seqAtRank, mask_21_badDirection_bAtRank]
  norm_num [mask_21_badDirection_denom, mask_21_badDirection_seq, mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_21_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_21_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_21_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_21_badDirection_denomAtRank]
  norm_num [mask_21_badDirection_denom]

private def mask_23_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_23_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_23_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (28/3) }
private def mask_23_badDirection_denom : Rat := (-4/3)

private theorem mask_23_badDirection_rankWord :
    rankPairWord? mask_23_badDirection_word = some mask_23_badDirection_rank := by
  decide

private theorem mask_23_badDirection_unrank :
    unrankPairWord mask_23_badDirection_rank = mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_23_badDirection_word mask_23_badDirection_rank).1
    mask_23_badDirection_rankWord |>.symm

private theorem mask_23_badDirection_seqChoice :
    translationChoiceSeq mask_23_badDirection_word mask_23_badDirection_mask = mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask mask_23_badDirection_rank mask_23_badDirection_mask = mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_23_badDirection_unrank]
  exact mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_23_badDirection_bAtRank :
    translationBAtRankMask mask_23_badDirection_rank mask_23_badDirection_mask = mask_23_badDirection_b := by
  rw [translationBAtRankMask, mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_23_badDirection_b, mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_23_badDirection_denomAtRank :
    impactDenomAtRank mask_23_badDirection_rank mask_23_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_23_badDirection_denom := by
  rw [impactDenomAtRank, mask_23_badDirection_seqAtRank, mask_23_badDirection_bAtRank]
  norm_num [mask_23_badDirection_denom, mask_23_badDirection_seq, mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_23_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_23_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_23_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_23_badDirection_denomAtRank]
  norm_num [mask_23_badDirection_denom]

private def mask_25_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_25_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_25_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-28/3) }
private def mask_25_badDirection_denom : Rat := (-4/3)

private theorem mask_25_badDirection_rankWord :
    rankPairWord? mask_25_badDirection_word = some mask_25_badDirection_rank := by
  decide

private theorem mask_25_badDirection_unrank :
    unrankPairWord mask_25_badDirection_rank = mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_25_badDirection_word mask_25_badDirection_rank).1
    mask_25_badDirection_rankWord |>.symm

private theorem mask_25_badDirection_seqChoice :
    translationChoiceSeq mask_25_badDirection_word mask_25_badDirection_mask = mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask mask_25_badDirection_rank mask_25_badDirection_mask = mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_25_badDirection_unrank]
  exact mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_25_badDirection_bAtRank :
    translationBAtRankMask mask_25_badDirection_rank mask_25_badDirection_mask = mask_25_badDirection_b := by
  rw [translationBAtRankMask, mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_25_badDirection_b, mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_25_badDirection_denomAtRank :
    impactDenomAtRank mask_25_badDirection_rank mask_25_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_25_badDirection_denom := by
  rw [impactDenomAtRank, mask_25_badDirection_seqAtRank, mask_25_badDirection_bAtRank]
  norm_num [mask_25_badDirection_denom, mask_25_badDirection_seq, mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_25_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_25_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_25_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_25_badDirection_denomAtRank]
  norm_num [mask_25_badDirection_denom]

private def mask_26_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_26_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_26_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-4/3) }
private def mask_26_badDirection_denom : Rat := (-4/3)

private theorem mask_26_badDirection_rankWord :
    rankPairWord? mask_26_badDirection_word = some mask_26_badDirection_rank := by
  decide

private theorem mask_26_badDirection_unrank :
    unrankPairWord mask_26_badDirection_rank = mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_26_badDirection_word mask_26_badDirection_rank).1
    mask_26_badDirection_rankWord |>.symm

private theorem mask_26_badDirection_seqChoice :
    translationChoiceSeq mask_26_badDirection_word mask_26_badDirection_mask = mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask mask_26_badDirection_rank mask_26_badDirection_mask = mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_26_badDirection_unrank]
  exact mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_26_badDirection_bAtRank :
    translationBAtRankMask mask_26_badDirection_rank mask_26_badDirection_mask = mask_26_badDirection_b := by
  rw [translationBAtRankMask, mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_26_badDirection_b, mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_26_badDirection_denomAtRank :
    impactDenomAtRank mask_26_badDirection_rank mask_26_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_26_badDirection_denom := by
  rw [impactDenomAtRank, mask_26_badDirection_seqAtRank, mask_26_badDirection_bAtRank]
  norm_num [mask_26_badDirection_denom, mask_26_badDirection_seq, mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_26_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_26_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_26_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_26_badDirection_denomAtRank]
  norm_num [mask_26_badDirection_denom]

private def mask_27_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_27_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def mask_27_badDirection_b : Vec3 Rat := { x := (-28/3), y := (-4/3), z := (-4/3) }
private def mask_27_badDirection_denom : Rat := (-4/3)

private theorem mask_27_badDirection_rankWord :
    rankPairWord? mask_27_badDirection_word = some mask_27_badDirection_rank := by
  decide

private theorem mask_27_badDirection_unrank :
    unrankPairWord mask_27_badDirection_rank = mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_27_badDirection_word mask_27_badDirection_rank).1
    mask_27_badDirection_rankWord |>.symm

private theorem mask_27_badDirection_seqChoice :
    translationChoiceSeq mask_27_badDirection_word mask_27_badDirection_mask = mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask mask_27_badDirection_rank mask_27_badDirection_mask = mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_27_badDirection_unrank]
  exact mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_27_badDirection_bAtRank :
    translationBAtRankMask mask_27_badDirection_rank mask_27_badDirection_mask = mask_27_badDirection_b := by
  rw [translationBAtRankMask, mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_27_badDirection_b, mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_27_badDirection_denomAtRank :
    impactDenomAtRank mask_27_badDirection_rank mask_27_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_27_badDirection_denom := by
  rw [impactDenomAtRank, mask_27_badDirection_seqAtRank, mask_27_badDirection_bAtRank]
  norm_num [mask_27_badDirection_denom, mask_27_badDirection_seq, mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_27_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_27_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_27_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_27_badDirection_denomAtRank]
  norm_num [mask_27_badDirection_denom]

private def mask_32_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_32_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_32_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := -4 }
private def mask_32_badDirection_denom : Rat := (-20/3)

private theorem mask_32_badDirection_rankWord :
    rankPairWord? mask_32_badDirection_word = some mask_32_badDirection_rank := by
  decide

private theorem mask_32_badDirection_unrank :
    unrankPairWord mask_32_badDirection_rank = mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_32_badDirection_word mask_32_badDirection_rank).1
    mask_32_badDirection_rankWord |>.symm

private theorem mask_32_badDirection_seqChoice :
    translationChoiceSeq mask_32_badDirection_word mask_32_badDirection_mask = mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask mask_32_badDirection_rank mask_32_badDirection_mask = mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_32_badDirection_unrank]
  exact mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_32_badDirection_bAtRank :
    translationBAtRankMask mask_32_badDirection_rank mask_32_badDirection_mask = mask_32_badDirection_b := by
  rw [translationBAtRankMask, mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_32_badDirection_b, mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_32_badDirection_denomAtRank :
    impactDenomAtRank mask_32_badDirection_rank mask_32_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_32_badDirection_denom := by
  rw [impactDenomAtRank, mask_32_badDirection_seqAtRank, mask_32_badDirection_bAtRank]
  norm_num [mask_32_badDirection_denom, mask_32_badDirection_seq, mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_32_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_32_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_32_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_32_badDirection_denomAtRank]
  norm_num [mask_32_badDirection_denom]

private def mask_33_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_33_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_33_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := -4 }
private def mask_33_badDirection_denom : Rat := (-20/3)

private theorem mask_33_badDirection_rankWord :
    rankPairWord? mask_33_badDirection_word = some mask_33_badDirection_rank := by
  decide

private theorem mask_33_badDirection_unrank :
    unrankPairWord mask_33_badDirection_rank = mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_33_badDirection_word mask_33_badDirection_rank).1
    mask_33_badDirection_rankWord |>.symm

private theorem mask_33_badDirection_seqChoice :
    translationChoiceSeq mask_33_badDirection_word mask_33_badDirection_mask = mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask mask_33_badDirection_rank mask_33_badDirection_mask = mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_33_badDirection_unrank]
  exact mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_33_badDirection_bAtRank :
    translationBAtRankMask mask_33_badDirection_rank mask_33_badDirection_mask = mask_33_badDirection_b := by
  rw [translationBAtRankMask, mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_33_badDirection_b, mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_33_badDirection_denomAtRank :
    impactDenomAtRank mask_33_badDirection_rank mask_33_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_33_badDirection_denom := by
  rw [impactDenomAtRank, mask_33_badDirection_seqAtRank, mask_33_badDirection_bAtRank]
  norm_num [mask_33_badDirection_denom, mask_33_badDirection_seq, mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_33_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_33_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_33_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_33_badDirection_denomAtRank]
  norm_num [mask_33_badDirection_denom]

private def mask_34_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_34_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_34_badDirection_b : Vec3 Rat := { x := (20/3), y := -4, z := 4 }
private def mask_34_badDirection_denom : Rat := (-20/3)

private theorem mask_34_badDirection_rankWord :
    rankPairWord? mask_34_badDirection_word = some mask_34_badDirection_rank := by
  decide

private theorem mask_34_badDirection_unrank :
    unrankPairWord mask_34_badDirection_rank = mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_34_badDirection_word mask_34_badDirection_rank).1
    mask_34_badDirection_rankWord |>.symm

private theorem mask_34_badDirection_seqChoice :
    translationChoiceSeq mask_34_badDirection_word mask_34_badDirection_mask = mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask mask_34_badDirection_rank mask_34_badDirection_mask = mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_34_badDirection_unrank]
  exact mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_34_badDirection_bAtRank :
    translationBAtRankMask mask_34_badDirection_rank mask_34_badDirection_mask = mask_34_badDirection_b := by
  rw [translationBAtRankMask, mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_34_badDirection_b, mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_34_badDirection_denomAtRank :
    impactDenomAtRank mask_34_badDirection_rank mask_34_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_34_badDirection_denom := by
  rw [impactDenomAtRank, mask_34_badDirection_seqAtRank, mask_34_badDirection_bAtRank]
  norm_num [mask_34_badDirection_denom, mask_34_badDirection_seq, mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_34_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_34_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_34_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_34_badDirection_denomAtRank]
  norm_num [mask_34_badDirection_denom]

private def mask_35_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_35_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_35_badDirection_b : Vec3 Rat := { x := (20/3), y := 4, z := 4 }
private def mask_35_badDirection_denom : Rat := (-20/3)

private theorem mask_35_badDirection_rankWord :
    rankPairWord? mask_35_badDirection_word = some mask_35_badDirection_rank := by
  decide

private theorem mask_35_badDirection_unrank :
    unrankPairWord mask_35_badDirection_rank = mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_35_badDirection_word mask_35_badDirection_rank).1
    mask_35_badDirection_rankWord |>.symm

private theorem mask_35_badDirection_seqChoice :
    translationChoiceSeq mask_35_badDirection_word mask_35_badDirection_mask = mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask mask_35_badDirection_rank mask_35_badDirection_mask = mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_35_badDirection_unrank]
  exact mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_35_badDirection_bAtRank :
    translationBAtRankMask mask_35_badDirection_rank mask_35_badDirection_mask = mask_35_badDirection_b := by
  rw [translationBAtRankMask, mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_35_badDirection_b, mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_35_badDirection_denomAtRank :
    impactDenomAtRank mask_35_badDirection_rank mask_35_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_35_badDirection_denom := by
  rw [impactDenomAtRank, mask_35_badDirection_seqAtRank, mask_35_badDirection_bAtRank]
  norm_num [mask_35_badDirection_denom, mask_35_badDirection_seq, mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_35_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_35_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_35_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_35_badDirection_denomAtRank]
  norm_num [mask_35_badDirection_denom]

private def mask_36_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_36_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_36_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (4/3) }
private def mask_36_badDirection_denom : Rat := (-4/3)

private theorem mask_36_badDirection_rankWord :
    rankPairWord? mask_36_badDirection_word = some mask_36_badDirection_rank := by
  decide

private theorem mask_36_badDirection_unrank :
    unrankPairWord mask_36_badDirection_rank = mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_36_badDirection_word mask_36_badDirection_rank).1
    mask_36_badDirection_rankWord |>.symm

private theorem mask_36_badDirection_seqChoice :
    translationChoiceSeq mask_36_badDirection_word mask_36_badDirection_mask = mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask mask_36_badDirection_rank mask_36_badDirection_mask = mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_36_badDirection_unrank]
  exact mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_36_badDirection_bAtRank :
    translationBAtRankMask mask_36_badDirection_rank mask_36_badDirection_mask = mask_36_badDirection_b := by
  rw [translationBAtRankMask, mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_36_badDirection_b, mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_36_badDirection_denomAtRank :
    impactDenomAtRank mask_36_badDirection_rank mask_36_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_36_badDirection_denom := by
  rw [impactDenomAtRank, mask_36_badDirection_seqAtRank, mask_36_badDirection_bAtRank]
  norm_num [mask_36_badDirection_denom, mask_36_badDirection_seq, mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_36_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_36_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_36_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_36_badDirection_denomAtRank]
  norm_num [mask_36_badDirection_denom]

private def mask_37_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_37_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_37_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (4/3) }
private def mask_37_badDirection_denom : Rat := (-4/3)

private theorem mask_37_badDirection_rankWord :
    rankPairWord? mask_37_badDirection_word = some mask_37_badDirection_rank := by
  decide

private theorem mask_37_badDirection_unrank :
    unrankPairWord mask_37_badDirection_rank = mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_37_badDirection_word mask_37_badDirection_rank).1
    mask_37_badDirection_rankWord |>.symm

private theorem mask_37_badDirection_seqChoice :
    translationChoiceSeq mask_37_badDirection_word mask_37_badDirection_mask = mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask mask_37_badDirection_rank mask_37_badDirection_mask = mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_37_badDirection_unrank]
  exact mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_37_badDirection_bAtRank :
    translationBAtRankMask mask_37_badDirection_rank mask_37_badDirection_mask = mask_37_badDirection_b := by
  rw [translationBAtRankMask, mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_37_badDirection_b, mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_37_badDirection_denomAtRank :
    impactDenomAtRank mask_37_badDirection_rank mask_37_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_37_badDirection_denom := by
  rw [impactDenomAtRank, mask_37_badDirection_seqAtRank, mask_37_badDirection_bAtRank]
  norm_num [mask_37_badDirection_denom, mask_37_badDirection_seq, mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_37_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_37_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_37_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_37_badDirection_denomAtRank]
  norm_num [mask_37_badDirection_denom]

private def mask_38_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_38_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_38_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (28/3) }
private def mask_38_badDirection_denom : Rat := (-4/3)

private theorem mask_38_badDirection_rankWord :
    rankPairWord? mask_38_badDirection_word = some mask_38_badDirection_rank := by
  decide

private theorem mask_38_badDirection_unrank :
    unrankPairWord mask_38_badDirection_rank = mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_38_badDirection_word mask_38_badDirection_rank).1
    mask_38_badDirection_rankWord |>.symm

private theorem mask_38_badDirection_seqChoice :
    translationChoiceSeq mask_38_badDirection_word mask_38_badDirection_mask = mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask mask_38_badDirection_rank mask_38_badDirection_mask = mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_38_badDirection_unrank]
  exact mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_38_badDirection_bAtRank :
    translationBAtRankMask mask_38_badDirection_rank mask_38_badDirection_mask = mask_38_badDirection_b := by
  rw [translationBAtRankMask, mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_38_badDirection_b, mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_38_badDirection_denomAtRank :
    impactDenomAtRank mask_38_badDirection_rank mask_38_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_38_badDirection_denom := by
  rw [impactDenomAtRank, mask_38_badDirection_seqAtRank, mask_38_badDirection_bAtRank]
  norm_num [mask_38_badDirection_denom, mask_38_badDirection_seq, mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_38_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_38_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_38_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_38_badDirection_denomAtRank]
  norm_num [mask_38_badDirection_denom]

private def mask_39_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_39_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_39_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (28/3) }
private def mask_39_badDirection_denom : Rat := (-4/3)

private theorem mask_39_badDirection_rankWord :
    rankPairWord? mask_39_badDirection_word = some mask_39_badDirection_rank := by
  decide

private theorem mask_39_badDirection_unrank :
    unrankPairWord mask_39_badDirection_rank = mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_39_badDirection_word mask_39_badDirection_rank).1
    mask_39_badDirection_rankWord |>.symm

private theorem mask_39_badDirection_seqChoice :
    translationChoiceSeq mask_39_badDirection_word mask_39_badDirection_mask = mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask mask_39_badDirection_rank mask_39_badDirection_mask = mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_39_badDirection_unrank]
  exact mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_39_badDirection_bAtRank :
    translationBAtRankMask mask_39_badDirection_rank mask_39_badDirection_mask = mask_39_badDirection_b := by
  rw [translationBAtRankMask, mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_39_badDirection_b, mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_39_badDirection_denomAtRank :
    impactDenomAtRank mask_39_badDirection_rank mask_39_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_39_badDirection_denom := by
  rw [impactDenomAtRank, mask_39_badDirection_seqAtRank, mask_39_badDirection_bAtRank]
  norm_num [mask_39_badDirection_denom, mask_39_badDirection_seq, mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_39_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_39_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_39_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_39_badDirection_denomAtRank]
  norm_num [mask_39_badDirection_denom]

private def mask_40_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_40_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_40_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-28/3) }
private def mask_40_badDirection_denom : Rat := (-4/3)

private theorem mask_40_badDirection_rankWord :
    rankPairWord? mask_40_badDirection_word = some mask_40_badDirection_rank := by
  decide

private theorem mask_40_badDirection_unrank :
    unrankPairWord mask_40_badDirection_rank = mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_40_badDirection_word mask_40_badDirection_rank).1
    mask_40_badDirection_rankWord |>.symm

private theorem mask_40_badDirection_seqChoice :
    translationChoiceSeq mask_40_badDirection_word mask_40_badDirection_mask = mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask mask_40_badDirection_rank mask_40_badDirection_mask = mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_40_badDirection_unrank]
  exact mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_40_badDirection_bAtRank :
    translationBAtRankMask mask_40_badDirection_rank mask_40_badDirection_mask = mask_40_badDirection_b := by
  rw [translationBAtRankMask, mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_40_badDirection_b, mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_40_badDirection_denomAtRank :
    impactDenomAtRank mask_40_badDirection_rank mask_40_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_40_badDirection_denom := by
  rw [impactDenomAtRank, mask_40_badDirection_seqAtRank, mask_40_badDirection_bAtRank]
  norm_num [mask_40_badDirection_denom, mask_40_badDirection_seq, mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_40_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_40_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_40_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_40_badDirection_denomAtRank]
  norm_num [mask_40_badDirection_denom]

private def mask_41_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_41_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_41_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-28/3) }
private def mask_41_badDirection_denom : Rat := (-4/3)

private theorem mask_41_badDirection_rankWord :
    rankPairWord? mask_41_badDirection_word = some mask_41_badDirection_rank := by
  decide

private theorem mask_41_badDirection_unrank :
    unrankPairWord mask_41_badDirection_rank = mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_41_badDirection_word mask_41_badDirection_rank).1
    mask_41_badDirection_rankWord |>.symm

private theorem mask_41_badDirection_seqChoice :
    translationChoiceSeq mask_41_badDirection_word mask_41_badDirection_mask = mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask mask_41_badDirection_rank mask_41_badDirection_mask = mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_41_badDirection_unrank]
  exact mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_41_badDirection_bAtRank :
    translationBAtRankMask mask_41_badDirection_rank mask_41_badDirection_mask = mask_41_badDirection_b := by
  rw [translationBAtRankMask, mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_41_badDirection_b, mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_41_badDirection_denomAtRank :
    impactDenomAtRank mask_41_badDirection_rank mask_41_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_41_badDirection_denom := by
  rw [impactDenomAtRank, mask_41_badDirection_seqAtRank, mask_41_badDirection_bAtRank]
  norm_num [mask_41_badDirection_denom, mask_41_badDirection_seq, mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_41_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_41_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_41_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_41_badDirection_denomAtRank]
  norm_num [mask_41_badDirection_denom]

private def mask_42_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_42_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_42_badDirection_b : Vec3 Rat := { x := (4/3), y := (4/3), z := (-4/3) }
private def mask_42_badDirection_denom : Rat := (-4/3)

private theorem mask_42_badDirection_rankWord :
    rankPairWord? mask_42_badDirection_word = some mask_42_badDirection_rank := by
  decide

private theorem mask_42_badDirection_unrank :
    unrankPairWord mask_42_badDirection_rank = mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_42_badDirection_word mask_42_badDirection_rank).1
    mask_42_badDirection_rankWord |>.symm

private theorem mask_42_badDirection_seqChoice :
    translationChoiceSeq mask_42_badDirection_word mask_42_badDirection_mask = mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask mask_42_badDirection_rank mask_42_badDirection_mask = mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_42_badDirection_unrank]
  exact mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_42_badDirection_bAtRank :
    translationBAtRankMask mask_42_badDirection_rank mask_42_badDirection_mask = mask_42_badDirection_b := by
  rw [translationBAtRankMask, mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_42_badDirection_b, mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_42_badDirection_denomAtRank :
    impactDenomAtRank mask_42_badDirection_rank mask_42_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_42_badDirection_denom := by
  rw [impactDenomAtRank, mask_42_badDirection_seqAtRank, mask_42_badDirection_bAtRank]
  norm_num [mask_42_badDirection_denom, mask_42_badDirection_seq, mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_42_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_42_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_42_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_42_badDirection_denomAtRank]
  norm_num [mask_42_badDirection_denom]

private def mask_43_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_43_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_43_badDirection_b : Vec3 Rat := { x := (4/3), y := (28/3), z := (-4/3) }
private def mask_43_badDirection_denom : Rat := (-4/3)

private theorem mask_43_badDirection_rankWord :
    rankPairWord? mask_43_badDirection_word = some mask_43_badDirection_rank := by
  decide

private theorem mask_43_badDirection_unrank :
    unrankPairWord mask_43_badDirection_rank = mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_43_badDirection_word mask_43_badDirection_rank).1
    mask_43_badDirection_rankWord |>.symm

private theorem mask_43_badDirection_seqChoice :
    translationChoiceSeq mask_43_badDirection_word mask_43_badDirection_mask = mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask mask_43_badDirection_rank mask_43_badDirection_mask = mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_43_badDirection_unrank]
  exact mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_43_badDirection_bAtRank :
    translationBAtRankMask mask_43_badDirection_rank mask_43_badDirection_mask = mask_43_badDirection_b := by
  rw [translationBAtRankMask, mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_43_badDirection_b, mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_43_badDirection_denomAtRank :
    impactDenomAtRank mask_43_badDirection_rank mask_43_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_43_badDirection_denom := by
  rw [impactDenomAtRank, mask_43_badDirection_seqAtRank, mask_43_badDirection_bAtRank]
  norm_num [mask_43_badDirection_denom, mask_43_badDirection_seq, mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_43_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_43_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_43_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_43_badDirection_denomAtRank]
  norm_num [mask_43_badDirection_denom]

private def mask_44_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_44_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_44_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := -4 }
private def mask_44_badDirection_denom : Rat := (-20/3)

private theorem mask_44_badDirection_rankWord :
    rankPairWord? mask_44_badDirection_word = some mask_44_badDirection_rank := by
  decide

private theorem mask_44_badDirection_unrank :
    unrankPairWord mask_44_badDirection_rank = mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_44_badDirection_word mask_44_badDirection_rank).1
    mask_44_badDirection_rankWord |>.symm

private theorem mask_44_badDirection_seqChoice :
    translationChoiceSeq mask_44_badDirection_word mask_44_badDirection_mask = mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask mask_44_badDirection_rank mask_44_badDirection_mask = mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_44_badDirection_unrank]
  exact mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_44_badDirection_bAtRank :
    translationBAtRankMask mask_44_badDirection_rank mask_44_badDirection_mask = mask_44_badDirection_b := by
  rw [translationBAtRankMask, mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_44_badDirection_b, mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_44_badDirection_denomAtRank :
    impactDenomAtRank mask_44_badDirection_rank mask_44_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_44_badDirection_denom := by
  rw [impactDenomAtRank, mask_44_badDirection_seqAtRank, mask_44_badDirection_bAtRank]
  norm_num [mask_44_badDirection_denom, mask_44_badDirection_seq, mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_44_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_44_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_44_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_44_badDirection_denomAtRank]
  norm_num [mask_44_badDirection_denom]

private def mask_46_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_46_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_46_badDirection_b : Vec3 Rat := { x := -4, y := (20/3), z := 4 }
private def mask_46_badDirection_denom : Rat := (-20/3)

private theorem mask_46_badDirection_rankWord :
    rankPairWord? mask_46_badDirection_word = some mask_46_badDirection_rank := by
  decide

private theorem mask_46_badDirection_unrank :
    unrankPairWord mask_46_badDirection_rank = mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_46_badDirection_word mask_46_badDirection_rank).1
    mask_46_badDirection_rankWord |>.symm

private theorem mask_46_badDirection_seqChoice :
    translationChoiceSeq mask_46_badDirection_word mask_46_badDirection_mask = mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask mask_46_badDirection_rank mask_46_badDirection_mask = mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_46_badDirection_unrank]
  exact mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_46_badDirection_bAtRank :
    translationBAtRankMask mask_46_badDirection_rank mask_46_badDirection_mask = mask_46_badDirection_b := by
  rw [translationBAtRankMask, mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_46_badDirection_b, mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_46_badDirection_denomAtRank :
    impactDenomAtRank mask_46_badDirection_rank mask_46_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_46_badDirection_denom := by
  rw [impactDenomAtRank, mask_46_badDirection_seqAtRank, mask_46_badDirection_bAtRank]
  norm_num [mask_46_badDirection_denom, mask_46_badDirection_seq, mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_46_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_46_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_46_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_46_badDirection_denomAtRank]
  norm_num [mask_46_badDirection_denom]

private def mask_48_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_48_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_48_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (4/3) }
private def mask_48_badDirection_denom : Rat := (-4/3)

private theorem mask_48_badDirection_rankWord :
    rankPairWord? mask_48_badDirection_word = some mask_48_badDirection_rank := by
  decide

private theorem mask_48_badDirection_unrank :
    unrankPairWord mask_48_badDirection_rank = mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_48_badDirection_word mask_48_badDirection_rank).1
    mask_48_badDirection_rankWord |>.symm

private theorem mask_48_badDirection_seqChoice :
    translationChoiceSeq mask_48_badDirection_word mask_48_badDirection_mask = mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask mask_48_badDirection_rank mask_48_badDirection_mask = mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_48_badDirection_unrank]
  exact mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_48_badDirection_bAtRank :
    translationBAtRankMask mask_48_badDirection_rank mask_48_badDirection_mask = mask_48_badDirection_b := by
  rw [translationBAtRankMask, mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_48_badDirection_b, mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_48_badDirection_denomAtRank :
    impactDenomAtRank mask_48_badDirection_rank mask_48_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_48_badDirection_denom := by
  rw [impactDenomAtRank, mask_48_badDirection_seqAtRank, mask_48_badDirection_bAtRank]
  norm_num [mask_48_badDirection_denom, mask_48_badDirection_seq, mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_48_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_48_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_48_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_48_badDirection_denomAtRank]
  norm_num [mask_48_badDirection_denom]

private def mask_49_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_49_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_49_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (4/3) }
private def mask_49_badDirection_denom : Rat := (-4/3)

private theorem mask_49_badDirection_rankWord :
    rankPairWord? mask_49_badDirection_word = some mask_49_badDirection_rank := by
  decide

private theorem mask_49_badDirection_unrank :
    unrankPairWord mask_49_badDirection_rank = mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_49_badDirection_word mask_49_badDirection_rank).1
    mask_49_badDirection_rankWord |>.symm

private theorem mask_49_badDirection_seqChoice :
    translationChoiceSeq mask_49_badDirection_word mask_49_badDirection_mask = mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask mask_49_badDirection_rank mask_49_badDirection_mask = mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_49_badDirection_unrank]
  exact mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_49_badDirection_bAtRank :
    translationBAtRankMask mask_49_badDirection_rank mask_49_badDirection_mask = mask_49_badDirection_b := by
  rw [translationBAtRankMask, mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_49_badDirection_b, mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_49_badDirection_denomAtRank :
    impactDenomAtRank mask_49_badDirection_rank mask_49_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_49_badDirection_denom := by
  rw [impactDenomAtRank, mask_49_badDirection_seqAtRank, mask_49_badDirection_bAtRank]
  norm_num [mask_49_badDirection_denom, mask_49_badDirection_seq, mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_49_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_49_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_49_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_49_badDirection_denomAtRank]
  norm_num [mask_49_badDirection_denom]

private def mask_50_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_50_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_50_badDirection_b : Vec3 Rat := { x := (4/3), y := (-28/3), z := (28/3) }
private def mask_50_badDirection_denom : Rat := (-4/3)

private theorem mask_50_badDirection_rankWord :
    rankPairWord? mask_50_badDirection_word = some mask_50_badDirection_rank := by
  decide

private theorem mask_50_badDirection_unrank :
    unrankPairWord mask_50_badDirection_rank = mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_50_badDirection_word mask_50_badDirection_rank).1
    mask_50_badDirection_rankWord |>.symm

private theorem mask_50_badDirection_seqChoice :
    translationChoiceSeq mask_50_badDirection_word mask_50_badDirection_mask = mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask mask_50_badDirection_rank mask_50_badDirection_mask = mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_50_badDirection_unrank]
  exact mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_50_badDirection_bAtRank :
    translationBAtRankMask mask_50_badDirection_rank mask_50_badDirection_mask = mask_50_badDirection_b := by
  rw [translationBAtRankMask, mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_50_badDirection_b, mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_50_badDirection_denomAtRank :
    impactDenomAtRank mask_50_badDirection_rank mask_50_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_50_badDirection_denom := by
  rw [impactDenomAtRank, mask_50_badDirection_seqAtRank, mask_50_badDirection_bAtRank]
  norm_num [mask_50_badDirection_denom, mask_50_badDirection_seq, mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_50_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_50_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_50_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_50_badDirection_denomAtRank]
  norm_num [mask_50_badDirection_denom]

private def mask_51_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_51_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_51_badDirection_b : Vec3 Rat := { x := (4/3), y := (-4/3), z := (28/3) }
private def mask_51_badDirection_denom : Rat := (-4/3)

private theorem mask_51_badDirection_rankWord :
    rankPairWord? mask_51_badDirection_word = some mask_51_badDirection_rank := by
  decide

private theorem mask_51_badDirection_unrank :
    unrankPairWord mask_51_badDirection_rank = mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_51_badDirection_word mask_51_badDirection_rank).1
    mask_51_badDirection_rankWord |>.symm

private theorem mask_51_badDirection_seqChoice :
    translationChoiceSeq mask_51_badDirection_word mask_51_badDirection_mask = mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask mask_51_badDirection_rank mask_51_badDirection_mask = mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_51_badDirection_unrank]
  exact mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_51_badDirection_bAtRank :
    translationBAtRankMask mask_51_badDirection_rank mask_51_badDirection_mask = mask_51_badDirection_b := by
  rw [translationBAtRankMask, mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_51_badDirection_b, mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_51_badDirection_denomAtRank :
    impactDenomAtRank mask_51_badDirection_rank mask_51_badDirection_mask (⟨1, by decide⟩ : Impact15) =
      mask_51_badDirection_denom := by
  rw [impactDenomAtRank, mask_51_badDirection_seqAtRank, mask_51_badDirection_bAtRank]
  norm_num [mask_51_badDirection_denom, mask_51_badDirection_seq, mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_51_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_51_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_51_badDirection_mask)
      (i := (⟨1, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_51_badDirection_denomAtRank]
  norm_num [mask_51_badDirection_denom]

private def mask_52_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_52_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_52_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := (20/3) }
private def mask_52_badDirection_denom : Rat := (-20/3)

private theorem mask_52_badDirection_rankWord :
    rankPairWord? mask_52_badDirection_word = some mask_52_badDirection_rank := by
  decide

private theorem mask_52_badDirection_unrank :
    unrankPairWord mask_52_badDirection_rank = mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_52_badDirection_word mask_52_badDirection_rank).1
    mask_52_badDirection_rankWord |>.symm

private theorem mask_52_badDirection_seqChoice :
    translationChoiceSeq mask_52_badDirection_word mask_52_badDirection_mask = mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask mask_52_badDirection_rank mask_52_badDirection_mask = mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_52_badDirection_unrank]
  exact mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_52_badDirection_bAtRank :
    translationBAtRankMask mask_52_badDirection_rank mask_52_badDirection_mask = mask_52_badDirection_b := by
  rw [translationBAtRankMask, mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_52_badDirection_b, mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_52_badDirection_denomAtRank :
    impactDenomAtRank mask_52_badDirection_rank mask_52_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_52_badDirection_denom := by
  rw [impactDenomAtRank, mask_52_badDirection_seqAtRank, mask_52_badDirection_bAtRank]
  norm_num [mask_52_badDirection_denom, mask_52_badDirection_seq, mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_52_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_52_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_52_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_52_badDirection_denomAtRank]
  norm_num [mask_52_badDirection_denom]

private def mask_53_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_53_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_53_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := (20/3) }
private def mask_53_badDirection_denom : Rat := (-20/3)

private theorem mask_53_badDirection_rankWord :
    rankPairWord? mask_53_badDirection_word = some mask_53_badDirection_rank := by
  decide

private theorem mask_53_badDirection_unrank :
    unrankPairWord mask_53_badDirection_rank = mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_53_badDirection_word mask_53_badDirection_rank).1
    mask_53_badDirection_rankWord |>.symm

private theorem mask_53_badDirection_seqChoice :
    translationChoiceSeq mask_53_badDirection_word mask_53_badDirection_mask = mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask mask_53_badDirection_rank mask_53_badDirection_mask = mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_53_badDirection_unrank]
  exact mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_53_badDirection_bAtRank :
    translationBAtRankMask mask_53_badDirection_rank mask_53_badDirection_mask = mask_53_badDirection_b := by
  rw [translationBAtRankMask, mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_53_badDirection_b, mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_53_badDirection_denomAtRank :
    impactDenomAtRank mask_53_badDirection_rank mask_53_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_53_badDirection_denom := by
  rw [impactDenomAtRank, mask_53_badDirection_seqAtRank, mask_53_badDirection_bAtRank]
  norm_num [mask_53_badDirection_denom, mask_53_badDirection_seq, mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_53_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_53_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_53_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_53_badDirection_denomAtRank]
  norm_num [mask_53_badDirection_denom]

private def mask_56_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_56_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_56_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := -4 }
private def mask_56_badDirection_denom : Rat := -12

private theorem mask_56_badDirection_rankWord :
    rankPairWord? mask_56_badDirection_word = some mask_56_badDirection_rank := by
  decide

private theorem mask_56_badDirection_unrank :
    unrankPairWord mask_56_badDirection_rank = mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_56_badDirection_word mask_56_badDirection_rank).1
    mask_56_badDirection_rankWord |>.symm

private theorem mask_56_badDirection_seqChoice :
    translationChoiceSeq mask_56_badDirection_word mask_56_badDirection_mask = mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask mask_56_badDirection_rank mask_56_badDirection_mask = mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_56_badDirection_unrank]
  exact mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_56_badDirection_bAtRank :
    translationBAtRankMask mask_56_badDirection_rank mask_56_badDirection_mask = mask_56_badDirection_b := by
  rw [translationBAtRankMask, mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_56_badDirection_b, mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_56_badDirection_denomAtRank :
    impactDenomAtRank mask_56_badDirection_rank mask_56_badDirection_mask (⟨12, by decide⟩ : Impact15) =
      mask_56_badDirection_denom := by
  rw [impactDenomAtRank, mask_56_badDirection_seqAtRank, mask_56_badDirection_bAtRank]
  norm_num [mask_56_badDirection_denom, mask_56_badDirection_seq, mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_56_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_56_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_56_badDirection_mask)
      (i := (⟨12, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_56_badDirection_denomAtRank]
  norm_num [mask_56_badDirection_denom]

private def mask_57_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_57_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_57_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := -4 }
private def mask_57_badDirection_denom : Rat := -4

private theorem mask_57_badDirection_rankWord :
    rankPairWord? mask_57_badDirection_word = some mask_57_badDirection_rank := by
  decide

private theorem mask_57_badDirection_unrank :
    unrankPairWord mask_57_badDirection_rank = mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_57_badDirection_word mask_57_badDirection_rank).1
    mask_57_badDirection_rankWord |>.symm

private theorem mask_57_badDirection_seqChoice :
    translationChoiceSeq mask_57_badDirection_word mask_57_badDirection_mask = mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask mask_57_badDirection_rank mask_57_badDirection_mask = mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_57_badDirection_unrank]
  exact mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_57_badDirection_bAtRank :
    translationBAtRankMask mask_57_badDirection_rank mask_57_badDirection_mask = mask_57_badDirection_b := by
  rw [translationBAtRankMask, mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_57_badDirection_b, mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_57_badDirection_denomAtRank :
    impactDenomAtRank mask_57_badDirection_rank mask_57_badDirection_mask (⟨6, by decide⟩ : Impact15) =
      mask_57_badDirection_denom := by
  rw [impactDenomAtRank, mask_57_badDirection_seqAtRank, mask_57_badDirection_bAtRank]
  norm_num [mask_57_badDirection_denom, mask_57_badDirection_seq, mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_57_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_57_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_57_badDirection_mask)
      (i := (⟨6, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_57_badDirection_denomAtRank]
  norm_num [mask_57_badDirection_denom]

private def mask_58_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_58_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_58_badDirection_b : Vec3 Rat := { x := -4, y := -4, z := 4 }
private def mask_58_badDirection_denom : Rat := -4

private theorem mask_58_badDirection_rankWord :
    rankPairWord? mask_58_badDirection_word = some mask_58_badDirection_rank := by
  decide

private theorem mask_58_badDirection_unrank :
    unrankPairWord mask_58_badDirection_rank = mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_58_badDirection_word mask_58_badDirection_rank).1
    mask_58_badDirection_rankWord |>.symm

private theorem mask_58_badDirection_seqChoice :
    translationChoiceSeq mask_58_badDirection_word mask_58_badDirection_mask = mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask mask_58_badDirection_rank mask_58_badDirection_mask = mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_58_badDirection_unrank]
  exact mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_58_badDirection_bAtRank :
    translationBAtRankMask mask_58_badDirection_rank mask_58_badDirection_mask = mask_58_badDirection_b := by
  rw [translationBAtRankMask, mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_58_badDirection_b, mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_58_badDirection_denomAtRank :
    impactDenomAtRank mask_58_badDirection_rank mask_58_badDirection_mask (⟨6, by decide⟩ : Impact15) =
      mask_58_badDirection_denom := by
  rw [impactDenomAtRank, mask_58_badDirection_seqAtRank, mask_58_badDirection_bAtRank]
  norm_num [mask_58_badDirection_denom, mask_58_badDirection_seq, mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_58_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_58_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_58_badDirection_mask)
      (i := (⟨6, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_58_badDirection_denomAtRank]
  norm_num [mask_58_badDirection_denom]

private def mask_59_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_59_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_59_badDirection_b : Vec3 Rat := { x := -4, y := 4, z := 4 }
private def mask_59_badDirection_denom : Rat := -12

private theorem mask_59_badDirection_rankWord :
    rankPairWord? mask_59_badDirection_word = some mask_59_badDirection_rank := by
  decide

private theorem mask_59_badDirection_unrank :
    unrankPairWord mask_59_badDirection_rank = mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_59_badDirection_word mask_59_badDirection_rank).1
    mask_59_badDirection_rankWord |>.symm

private theorem mask_59_badDirection_seqChoice :
    translationChoiceSeq mask_59_badDirection_word mask_59_badDirection_mask = mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask mask_59_badDirection_rank mask_59_badDirection_mask = mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_59_badDirection_unrank]
  exact mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_59_badDirection_bAtRank :
    translationBAtRankMask mask_59_badDirection_rank mask_59_badDirection_mask = mask_59_badDirection_b := by
  rw [translationBAtRankMask, mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_59_badDirection_b, mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_59_badDirection_denomAtRank :
    impactDenomAtRank mask_59_badDirection_rank mask_59_badDirection_mask (⟨6, by decide⟩ : Impact15) =
      mask_59_badDirection_denom := by
  rw [impactDenomAtRank, mask_59_badDirection_seqAtRank, mask_59_badDirection_bAtRank]
  norm_num [mask_59_badDirection_denom, mask_59_badDirection_seq, mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_59_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_59_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_59_badDirection_mask)
      (i := (⟨6, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_59_badDirection_denomAtRank]
  norm_num [mask_59_badDirection_denom]

private def mask_60_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_60_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_60_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (4/3) }
private def mask_60_badDirection_denom : Rat := (-4/3)

private theorem mask_60_badDirection_rankWord :
    rankPairWord? mask_60_badDirection_word = some mask_60_badDirection_rank := by
  decide

private theorem mask_60_badDirection_unrank :
    unrankPairWord mask_60_badDirection_rank = mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_60_badDirection_word mask_60_badDirection_rank).1
    mask_60_badDirection_rankWord |>.symm

private theorem mask_60_badDirection_seqChoice :
    translationChoiceSeq mask_60_badDirection_word mask_60_badDirection_mask = mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask mask_60_badDirection_rank mask_60_badDirection_mask = mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_60_badDirection_unrank]
  exact mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_60_badDirection_bAtRank :
    translationBAtRankMask mask_60_badDirection_rank mask_60_badDirection_mask = mask_60_badDirection_b := by
  rw [translationBAtRankMask, mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_60_badDirection_b, mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_60_badDirection_denomAtRank :
    impactDenomAtRank mask_60_badDirection_rank mask_60_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_60_badDirection_denom := by
  rw [impactDenomAtRank, mask_60_badDirection_seqAtRank, mask_60_badDirection_bAtRank]
  norm_num [mask_60_badDirection_denom, mask_60_badDirection_seq, mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_60_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_60_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_60_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_60_badDirection_denomAtRank]
  norm_num [mask_60_badDirection_denom]

private def mask_61_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_61_badDirection_mask : SignMask := ⟨61, by decide⟩
private def mask_61_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_61_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_61_badDirection_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (4/3) }
private def mask_61_badDirection_denom : Rat := (-4/3)

private theorem mask_61_badDirection_rankWord :
    rankPairWord? mask_61_badDirection_word = some mask_61_badDirection_rank := by
  decide

private theorem mask_61_badDirection_unrank :
    unrankPairWord mask_61_badDirection_rank = mask_61_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_61_badDirection_word mask_61_badDirection_rank).1
    mask_61_badDirection_rankWord |>.symm

private theorem mask_61_badDirection_seqChoice :
    translationChoiceSeq mask_61_badDirection_word mask_61_badDirection_mask = mask_61_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_61_badDirection_seqAtRank :
    translationSeqAtRankMask mask_61_badDirection_rank mask_61_badDirection_mask = mask_61_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_61_badDirection_unrank]
  exact mask_61_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_61_badDirection_bAtRank :
    translationBAtRankMask mask_61_badDirection_rank mask_61_badDirection_mask = mask_61_badDirection_b := by
  rw [translationBAtRankMask, mask_61_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_61_badDirection_b, mask_61_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_61_badDirection_denomAtRank :
    impactDenomAtRank mask_61_badDirection_rank mask_61_badDirection_mask (⟨4, by decide⟩ : Impact15) =
      mask_61_badDirection_denom := by
  rw [impactDenomAtRank, mask_61_badDirection_seqAtRank, mask_61_badDirection_bAtRank]
  norm_num [mask_61_badDirection_denom, mask_61_badDirection_seq, mask_61_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_61_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_61_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_61_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_61_badDirection_mask)
      (i := (⟨4, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_61_badDirection_denomAtRank]
  norm_num [mask_61_badDirection_denom]

private def mask_62_badDirection_rank : Fin numPairWords := ⟨0, by decide⟩
private def mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def mask_62_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def mask_62_badDirection_b : Vec3 Rat := { x := (-28/3), y := (4/3), z := (28/3) }
private def mask_62_badDirection_denom : Rat := (-4/3)

private theorem mask_62_badDirection_rankWord :
    rankPairWord? mask_62_badDirection_word = some mask_62_badDirection_rank := by
  decide

private theorem mask_62_badDirection_unrank :
    unrankPairWord mask_62_badDirection_rank = mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank mask_62_badDirection_word mask_62_badDirection_rank).1
    mask_62_badDirection_rankWord |>.symm

private theorem mask_62_badDirection_seqChoice :
    translationChoiceSeq mask_62_badDirection_word mask_62_badDirection_mask = mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask mask_62_badDirection_rank mask_62_badDirection_mask = mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, mask_62_badDirection_unrank]
  exact mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem mask_62_badDirection_bAtRank :
    translationBAtRankMask mask_62_badDirection_rank mask_62_badDirection_mask = mask_62_badDirection_b := by
  rw [translationBAtRankMask, mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [mask_62_badDirection_b, mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_62_badDirection_denomAtRank :
    impactDenomAtRank mask_62_badDirection_rank mask_62_badDirection_mask (⟨2, by decide⟩ : Impact15) =
      mask_62_badDirection_denom := by
  rw [impactDenomAtRank, mask_62_badDirection_seqAtRank, mask_62_badDirection_bAtRank]
  norm_num [mask_62_badDirection_denom, mask_62_badDirection_seq, mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem mask_62_badDirection_notGood (hlt : 0 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨0, hlt⟩ : Fin numPairWords) mask_62_badDirection_mask := by
  have hrank :
      (⟨0, hlt⟩ : Fin numPairWords) = mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨0, hlt⟩ : Fin numPairWords))
      (mask := mask_62_badDirection_mask)
      (i := (⟨2, by decide⟩ : Impact15))
    <;> try decide
  rw [hrank, mask_62_badDirection_denomAtRank]
  norm_num [mask_62_badDirection_denom]

/-- Rank-0 semantic survivor descriptor for mask 8. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000000_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000000_mask : SignMask := ⟨8, by decide⟩
private def case_000000_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000000_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000000_b : Vec3 Rat := { x := -4, y := -4, z := (-44/3) }
private def case_000000_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000000_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000000_rankWord :
    rankPairWord? case_000000_word = some case_000000_rank := by
  decide

private theorem case_000000_unrank :
    unrankPairWord case_000000_rank = case_000000_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000000_word case_000000_rank).1
    case_000000_rankWord |>.symm

private theorem case_000000_seqChoice :
    translationChoiceSeq case_000000_word case_000000_mask = case_000000_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000000_seqAtRank :
    translationSeqAtRankMask case_000000_rank case_000000_mask = case_000000_seq := by
  rw [translationSeqAtRankMask, case_000000_unrank]
  exact case_000000_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000000_bAtRank :
    translationBAtRankMask case_000000_rank case_000000_mask = case_000000_b := by
  rw [translationBAtRankMask, case_000000_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000000_b, case_000000_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000000_firstLine_eq :
    case_000000_support.firstLine case_000000_seq case_000000_b = case_000000_firstLine := by
  norm_num [case_000000_firstLine, case_000000_support, case_000000_seq, case_000000_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000000_secondLine_eq :
    case_000000_support.secondLine case_000000_seq case_000000_b = case_000000_secondLine := by
  norm_num [case_000000_secondLine, case_000000_support, case_000000_seq, case_000000_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000000_rows :
    EqEqPosVarFirstRows case_000000_support case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank : (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_b := by
    simpa [hrank] using case_000000_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000000_support case_000000_rank.val hlt
          case_000000_mask = case_000000_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000000_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000000_support case_000000_rank.val hlt
          case_000000_mask = case_000000_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000000_secondLine_eq]
  have case_000000_rowFirst :
      EqEqPosRow (FirstLineAt case_000000_support case_000000_rank.val hlt case_000000_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000000_firstLine, EqEqPosRow]
  have case_000000_fixedSecond :
      FixedRow (SecondLineAt case_000000_support case_000000_rank.val hlt case_000000_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000000_secondLine, FixedRow]
  exact ⟨case_000000_rowFirst, case_000000_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000000_sourceMatches :
    fam_000_desc.SourceMatches case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank :
      (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000000_seq)
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000000_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000000_rank.val hlt case_000000_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000000_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000000_applies :
    fam_000_desc.Applies case_000000_rank.val case_000000_mask := by
  exact ⟨
    case_000000_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000000_support] using case_000000_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 9. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_001_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_001_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000001_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000001_mask : SignMask := ⟨9, by decide⟩
private def case_000001_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000001_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000001_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000001_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000001_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000001_rankWord :
    rankPairWord? case_000001_word = some case_000001_rank := by
  decide

private theorem case_000001_unrank :
    unrankPairWord case_000001_rank = case_000001_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000001_word case_000001_rank).1
    case_000001_rankWord |>.symm

private theorem case_000001_seqChoice :
    translationChoiceSeq case_000001_word case_000001_mask = case_000001_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000001_seqAtRank :
    translationSeqAtRankMask case_000001_rank case_000001_mask = case_000001_seq := by
  rw [translationSeqAtRankMask, case_000001_unrank]
  exact case_000001_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000001_bAtRank :
    translationBAtRankMask case_000001_rank case_000001_mask = case_000001_b := by
  rw [translationBAtRankMask, case_000001_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000001_b, case_000001_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000001_firstLine_eq :
    case_000001_support.firstLine case_000001_seq case_000001_b = case_000001_firstLine := by
  norm_num [case_000001_firstLine, case_000001_support, case_000001_seq, case_000001_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000001_secondLine_eq :
    case_000001_support.secondLine case_000001_seq case_000001_b = case_000001_secondLine := by
  norm_num [case_000001_secondLine, case_000001_support, case_000001_seq, case_000001_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000001_rows :
    EqEqPosVarFirstRows case_000001_support case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_b := by
    simpa [hrank] using case_000001_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000001_support case_000001_rank.val hlt
          case_000001_mask = case_000001_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000001_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000001_support case_000001_rank.val hlt
          case_000001_mask = case_000001_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000001_secondLine_eq]
  have case_000001_rowFirst :
      EqEqPosRow (FirstLineAt case_000001_support case_000001_rank.val hlt case_000001_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000001_firstLine, EqEqPosRow]
  have case_000001_fixedSecond :
      FixedRow (SecondLineAt case_000001_support case_000001_rank.val hlt case_000001_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000001_secondLine, FixedRow]
  exact ⟨case_000001_rowFirst, case_000001_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000001_sourceMatches :
    fam_001_desc.SourceMatches case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank :
      (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000001_seq)
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000001_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000001_rank.val hlt case_000001_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000001_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000001_applies :
    fam_001_desc.Applies case_000001_rank.val case_000001_mask := by
  exact ⟨
    case_000001_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000001_support] using case_000001_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 13. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_002_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 7
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarSecond

private def case_000002_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000002_mask : SignMask := ⟨13, by decide⟩
private def case_000002_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000002_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000002_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000002_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000002_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

private theorem case_000002_rankWord :
    rankPairWord? case_000002_word = some case_000002_rank := by
  decide

private theorem case_000002_unrank :
    unrankPairWord case_000002_rank = case_000002_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000002_word case_000002_rank).1
    case_000002_rankWord |>.symm

private theorem case_000002_seqChoice :
    translationChoiceSeq case_000002_word case_000002_mask = case_000002_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000002_seqAtRank :
    translationSeqAtRankMask case_000002_rank case_000002_mask = case_000002_seq := by
  rw [translationSeqAtRankMask, case_000002_unrank]
  exact case_000002_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000002_bAtRank :
    translationBAtRankMask case_000002_rank case_000002_mask = case_000002_b := by
  rw [translationBAtRankMask, case_000002_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000002_b, case_000002_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000002_firstLine_eq :
    case_000002_support.firstLine case_000002_seq case_000002_b = case_000002_firstLine := by
  norm_num [case_000002_firstLine, case_000002_support, case_000002_seq, case_000002_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000002_secondLine_eq :
    case_000002_support.secondLine case_000002_seq case_000002_b = case_000002_secondLine := by
  norm_num [case_000002_secondLine, case_000002_support, case_000002_seq, case_000002_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000002_rows :
    EqEqPosVarSecondRows case_000002_support case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_b := by
    simpa [hrank] using case_000002_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000002_support case_000002_rank.val hlt
          case_000002_mask = case_000002_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000002_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000002_support case_000002_rank.val hlt
          case_000002_mask = case_000002_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000002_secondLine_eq]
  have case_000002_fixedFirst :
      FixedRow (FirstLineAt case_000002_support case_000002_rank.val hlt case_000002_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000002_firstLine, FixedRow]
  have case_000002_rowSecond :
      EqEqPosRow (SecondLineAt case_000002_support case_000002_rank.val hlt case_000002_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000002_secondLine, EqEqPosRow]
  exact ⟨case_000002_fixedFirst, case_000002_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000002_sourceMatches :
    fam_002_desc.SourceMatches case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank :
      (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000002_seq)
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000002_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000002_rank.val hlt case_000002_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000002_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000002_applies :
    fam_002_desc.Applies case_000002_rank.val case_000002_mask := by
  exact ⟨
    case_000002_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000002_support] using case_000002_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 16. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_003_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000003_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000003_mask : SignMask := ⟨16, by decide⟩
private def case_000003_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000003_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000003_b : Vec3 Rat := { x := -4, y := (-44/3), z := -4 }
private def case_000003_firstLine : StrictLin2 := { a := -1, b := -1, c := (-25/3) }
private def case_000003_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000003_rankWord :
    rankPairWord? case_000003_word = some case_000003_rank := by
  decide

private theorem case_000003_unrank :
    unrankPairWord case_000003_rank = case_000003_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000003_word case_000003_rank).1
    case_000003_rankWord |>.symm

private theorem case_000003_seqChoice :
    translationChoiceSeq case_000003_word case_000003_mask = case_000003_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000003_seqAtRank :
    translationSeqAtRankMask case_000003_rank case_000003_mask = case_000003_seq := by
  rw [translationSeqAtRankMask, case_000003_unrank]
  exact case_000003_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000003_bAtRank :
    translationBAtRankMask case_000003_rank case_000003_mask = case_000003_b := by
  rw [translationBAtRankMask, case_000003_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000003_b, case_000003_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000003_firstLine_eq :
    case_000003_support.firstLine case_000003_seq case_000003_b = case_000003_firstLine := by
  norm_num [case_000003_firstLine, case_000003_support, case_000003_seq, case_000003_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000003_secondLine_eq :
    case_000003_support.secondLine case_000003_seq case_000003_b = case_000003_secondLine := by
  norm_num [case_000003_secondLine, case_000003_support, case_000003_seq, case_000003_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000003_rows :
    EqEqPosVarFirstRows case_000003_support case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank : (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_b := by
    simpa [hrank] using case_000003_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000003_support case_000003_rank.val hlt
          case_000003_mask = case_000003_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000003_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000003_support case_000003_rank.val hlt
          case_000003_mask = case_000003_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000003_secondLine_eq]
  have case_000003_rowFirst :
      EqEqPosRow (FirstLineAt case_000003_support case_000003_rank.val hlt case_000003_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000003_firstLine, EqEqPosRow]
  have case_000003_fixedSecond :
      FixedRow (SecondLineAt case_000003_support case_000003_rank.val hlt case_000003_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000003_secondLine, FixedRow]
  exact ⟨case_000003_rowFirst, case_000003_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000003_sourceMatches :
    fam_003_desc.SourceMatches case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank :
      (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000003_seq)
          fam_003_desc.firstIndex = some fam_003_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000003_seq)
          fam_003_desc.secondIndex = some fam_003_support.second := by
    decide
  have hchecks :
      SourceChecks fam_003_support case_000003_rank.val hlt case_000003_mask := by
    simp [SourceChecks, hseq, fam_003_support,
      checkTranslationConstraintSource, case_000003_seq, impactFace]
  exact ⟨
    by simpa [fam_003_desc, hseq] using hfirstIndex,
    by simpa [fam_003_desc, hseq] using hsecondIndex,
    by simpa [fam_003_desc] using hchecks
  ⟩

private theorem case_000003_applies :
    fam_003_desc.Applies case_000003_rank.val case_000003_mask := by
  exact ⟨
    case_000003_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_003_desc, fam_003_support, case_000003_support] using case_000003_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 18. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_004_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000004_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000004_mask : SignMask := ⟨18, by decide⟩
private def case_000004_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000004_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000004_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000004_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000004_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000004_rankWord :
    rankPairWord? case_000004_word = some case_000004_rank := by
  decide

private theorem case_000004_unrank :
    unrankPairWord case_000004_rank = case_000004_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000004_word case_000004_rank).1
    case_000004_rankWord |>.symm

private theorem case_000004_seqChoice :
    translationChoiceSeq case_000004_word case_000004_mask = case_000004_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000004_seqAtRank :
    translationSeqAtRankMask case_000004_rank case_000004_mask = case_000004_seq := by
  rw [translationSeqAtRankMask, case_000004_unrank]
  exact case_000004_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000004_bAtRank :
    translationBAtRankMask case_000004_rank case_000004_mask = case_000004_b := by
  rw [translationBAtRankMask, case_000004_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000004_b, case_000004_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000004_firstLine_eq :
    case_000004_support.firstLine case_000004_seq case_000004_b = case_000004_firstLine := by
  norm_num [case_000004_firstLine, case_000004_support, case_000004_seq, case_000004_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000004_secondLine_eq :
    case_000004_support.secondLine case_000004_seq case_000004_b = case_000004_secondLine := by
  norm_num [case_000004_secondLine, case_000004_support, case_000004_seq, case_000004_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000004_rows :
    EqEqPosVarFirstRows case_000004_support case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_b := by
    simpa [hrank] using case_000004_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000004_support case_000004_rank.val hlt
          case_000004_mask = case_000004_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000004_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000004_support case_000004_rank.val hlt
          case_000004_mask = case_000004_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000004_secondLine_eq]
  have case_000004_rowFirst :
      EqEqPosRow (FirstLineAt case_000004_support case_000004_rank.val hlt case_000004_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000004_firstLine, EqEqPosRow]
  have case_000004_fixedSecond :
      FixedRow (SecondLineAt case_000004_support case_000004_rank.val hlt case_000004_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000004_secondLine, FixedRow]
  exact ⟨case_000004_rowFirst, case_000004_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000004_sourceMatches :
    fam_004_desc.SourceMatches case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank :
      (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000004_seq)
          fam_004_desc.firstIndex = some fam_004_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000004_seq)
          fam_004_desc.secondIndex = some fam_004_support.second := by
    decide
  have hchecks :
      SourceChecks fam_004_support case_000004_rank.val hlt case_000004_mask := by
    simp [SourceChecks, hseq, fam_004_support,
      checkTranslationConstraintSource, case_000004_seq, impactFace]
  exact ⟨
    by simpa [fam_004_desc, hseq] using hfirstIndex,
    by simpa [fam_004_desc, hseq] using hsecondIndex,
    by simpa [fam_004_desc] using hchecks
  ⟩

private theorem case_000004_applies :
    fam_004_desc.Applies case_000004_rank.val case_000004_mask := by
  exact ⟨
    case_000004_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_004_desc, fam_004_support, case_000004_support] using case_000004_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 22. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_005_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_005_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000005_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000005_mask : SignMask := ⟨22, by decide⟩
private def case_000005_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000005_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000005_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000005_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000005_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000005_rankWord :
    rankPairWord? case_000005_word = some case_000005_rank := by
  decide

private theorem case_000005_unrank :
    unrankPairWord case_000005_rank = case_000005_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000005_word case_000005_rank).1
    case_000005_rankWord |>.symm

private theorem case_000005_seqChoice :
    translationChoiceSeq case_000005_word case_000005_mask = case_000005_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000005_seqAtRank :
    translationSeqAtRankMask case_000005_rank case_000005_mask = case_000005_seq := by
  rw [translationSeqAtRankMask, case_000005_unrank]
  exact case_000005_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000005_bAtRank :
    translationBAtRankMask case_000005_rank case_000005_mask = case_000005_b := by
  rw [translationBAtRankMask, case_000005_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000005_b, case_000005_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000005_firstLine_eq :
    case_000005_support.firstLine case_000005_seq case_000005_b = case_000005_firstLine := by
  norm_num [case_000005_firstLine, case_000005_support, case_000005_seq, case_000005_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000005_secondLine_eq :
    case_000005_support.secondLine case_000005_seq case_000005_b = case_000005_secondLine := by
  norm_num [case_000005_secondLine, case_000005_support, case_000005_seq, case_000005_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000005_rows :
    EqEqPosVarFirstRows case_000005_support case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_b := by
    simpa [hrank] using case_000005_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000005_support case_000005_rank.val hlt
          case_000005_mask = case_000005_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000005_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000005_support case_000005_rank.val hlt
          case_000005_mask = case_000005_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000005_secondLine_eq]
  have case_000005_rowFirst :
      EqEqPosRow (FirstLineAt case_000005_support case_000005_rank.val hlt case_000005_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000005_firstLine, EqEqPosRow]
  have case_000005_fixedSecond :
      FixedRow (SecondLineAt case_000005_support case_000005_rank.val hlt case_000005_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000005_secondLine, FixedRow]
  exact ⟨case_000005_rowFirst, case_000005_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000005_sourceMatches :
    fam_005_desc.SourceMatches case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank :
      (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000005_seq)
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000005_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000005_rank.val hlt case_000005_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000005_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000005_applies :
    fam_005_desc.Applies case_000005_rank.val case_000005_mask := by
  exact ⟨
    case_000005_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000005_support] using case_000005_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 24. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_006_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000006_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000006_mask : SignMask := ⟨24, by decide⟩
private def case_000006_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000006_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000006_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (-28/3) }
private def case_000006_firstLine : StrictLin2 := { a := -1, b := -1, c := -3 }
private def case_000006_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000006_rankWord :
    rankPairWord? case_000006_word = some case_000006_rank := by
  decide

private theorem case_000006_unrank :
    unrankPairWord case_000006_rank = case_000006_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000006_word case_000006_rank).1
    case_000006_rankWord |>.symm

private theorem case_000006_seqChoice :
    translationChoiceSeq case_000006_word case_000006_mask = case_000006_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000006_seqAtRank :
    translationSeqAtRankMask case_000006_rank case_000006_mask = case_000006_seq := by
  rw [translationSeqAtRankMask, case_000006_unrank]
  exact case_000006_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000006_bAtRank :
    translationBAtRankMask case_000006_rank case_000006_mask = case_000006_b := by
  rw [translationBAtRankMask, case_000006_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000006_b, case_000006_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000006_firstLine_eq :
    case_000006_support.firstLine case_000006_seq case_000006_b = case_000006_firstLine := by
  norm_num [case_000006_firstLine, case_000006_support, case_000006_seq, case_000006_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000006_secondLine_eq :
    case_000006_support.secondLine case_000006_seq case_000006_b = case_000006_secondLine := by
  norm_num [case_000006_secondLine, case_000006_support, case_000006_seq, case_000006_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000006_rows :
    EqEqPosVarFirstRows case_000006_support case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_b := by
    simpa [hrank] using case_000006_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000006_support case_000006_rank.val hlt
          case_000006_mask = case_000006_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000006_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000006_support case_000006_rank.val hlt
          case_000006_mask = case_000006_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000006_secondLine_eq]
  have case_000006_rowFirst :
      EqEqPosRow (FirstLineAt case_000006_support case_000006_rank.val hlt case_000006_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000006_firstLine, EqEqPosRow]
  have case_000006_fixedSecond :
      FixedRow (SecondLineAt case_000006_support case_000006_rank.val hlt case_000006_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000006_secondLine, FixedRow]
  exact ⟨case_000006_rowFirst, case_000006_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000006_sourceMatches :
    fam_006_desc.SourceMatches case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank :
      (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000006_seq)
          fam_006_desc.firstIndex = some fam_006_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000006_seq)
          fam_006_desc.secondIndex = some fam_006_support.second := by
    decide
  have hchecks :
      SourceChecks fam_006_support case_000006_rank.val hlt case_000006_mask := by
    simp [SourceChecks, hseq, fam_006_support,
      checkTranslationConstraintSource, case_000006_seq, impactFace]
  exact ⟨
    by simpa [fam_006_desc, hseq] using hfirstIndex,
    by simpa [fam_006_desc, hseq] using hsecondIndex,
    by simpa [fam_006_desc] using hchecks
  ⟩

private theorem case_000006_applies :
    fam_006_desc.Applies case_000006_rank.val case_000006_mask := by
  exact ⟨
    case_000006_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_006_desc, fam_006_support, case_000006_support] using case_000006_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 28. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_007_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 167
  secondIndex := 0
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000007_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000007_mask : SignMask := ⟨28, by decide⟩
private def case_000007_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000007_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000007_b : Vec3 Rat := { x := (-44/3), y := -4, z := -4 }
private def case_000007_firstLine : StrictLin2 := { a := (-22/17), b := (-22/17), c := (-88/51) }
private def case_000007_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000007_rankWord :
    rankPairWord? case_000007_word = some case_000007_rank := by
  decide

private theorem case_000007_unrank :
    unrankPairWord case_000007_rank = case_000007_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000007_word case_000007_rank).1
    case_000007_rankWord |>.symm

private theorem case_000007_seqChoice :
    translationChoiceSeq case_000007_word case_000007_mask = case_000007_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000007_seqAtRank :
    translationSeqAtRankMask case_000007_rank case_000007_mask = case_000007_seq := by
  rw [translationSeqAtRankMask, case_000007_unrank]
  exact case_000007_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000007_bAtRank :
    translationBAtRankMask case_000007_rank case_000007_mask = case_000007_b := by
  rw [translationBAtRankMask, case_000007_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000007_b, case_000007_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000007_firstLine_eq :
    case_000007_support.firstLine case_000007_seq case_000007_b = case_000007_firstLine := by
  norm_num [case_000007_firstLine, case_000007_support, case_000007_seq, case_000007_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000007_secondLine_eq :
    case_000007_support.secondLine case_000007_seq case_000007_b = case_000007_secondLine := by
  norm_num [case_000007_secondLine, case_000007_support, case_000007_seq, case_000007_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000007_rows :
    EqEqPosVarFirstRows case_000007_support case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_b := by
    simpa [hrank] using case_000007_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000007_support case_000007_rank.val hlt
          case_000007_mask = case_000007_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000007_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000007_support case_000007_rank.val hlt
          case_000007_mask = case_000007_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000007_secondLine_eq]
  have case_000007_rowFirst :
      EqEqPosRow (FirstLineAt case_000007_support case_000007_rank.val hlt case_000007_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000007_firstLine, EqEqPosRow]
  have case_000007_fixedSecond :
      FixedRow (SecondLineAt case_000007_support case_000007_rank.val hlt case_000007_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000007_secondLine, FixedRow]
  exact ⟨case_000007_rowFirst, case_000007_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000007_sourceMatches :
    fam_007_desc.SourceMatches case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank :
      (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000007_seq)
          fam_007_desc.firstIndex = some fam_007_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000007_seq)
          fam_007_desc.secondIndex = some fam_007_support.second := by
    decide
  have hchecks :
      SourceChecks fam_007_support case_000007_rank.val hlt case_000007_mask := by
    simp [SourceChecks, hseq, fam_007_support,
      checkTranslationConstraintSource, case_000007_seq, impactFace]
  exact ⟨
    by simpa [fam_007_desc, hseq] using hfirstIndex,
    by simpa [fam_007_desc, hseq] using hsecondIndex,
    by simpa [fam_007_desc] using hchecks
  ⟩

private theorem case_000007_applies :
    fam_007_desc.Applies case_000007_rank.val case_000007_mask := by
  exact ⟨
    case_000007_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_007_desc, fam_007_support, case_000007_support] using case_000007_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 29. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_008_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 7
  support := fam_008_support
  template := SourceIndexTemplate.eqEqPosVarSecond

private def case_000008_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000008_mask : SignMask := ⟨29, by decide⟩
private def case_000008_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000008_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000008_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000008_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000008_secondLine : StrictLin2 := { a := (-1/4), b := (-1/4), c := (-1/2) }

private theorem case_000008_rankWord :
    rankPairWord? case_000008_word = some case_000008_rank := by
  decide

private theorem case_000008_unrank :
    unrankPairWord case_000008_rank = case_000008_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000008_word case_000008_rank).1
    case_000008_rankWord |>.symm

private theorem case_000008_seqChoice :
    translationChoiceSeq case_000008_word case_000008_mask = case_000008_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000008_seqAtRank :
    translationSeqAtRankMask case_000008_rank case_000008_mask = case_000008_seq := by
  rw [translationSeqAtRankMask, case_000008_unrank]
  exact case_000008_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000008_bAtRank :
    translationBAtRankMask case_000008_rank case_000008_mask = case_000008_b := by
  rw [translationBAtRankMask, case_000008_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000008_b, case_000008_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000008_firstLine_eq :
    case_000008_support.firstLine case_000008_seq case_000008_b = case_000008_firstLine := by
  norm_num [case_000008_firstLine, case_000008_support, case_000008_seq, case_000008_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000008_secondLine_eq :
    case_000008_support.secondLine case_000008_seq case_000008_b = case_000008_secondLine := by
  norm_num [case_000008_secondLine, case_000008_support, case_000008_seq, case_000008_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000008_rows :
    EqEqPosVarSecondRows case_000008_support case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_b := by
    simpa [hrank] using case_000008_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000008_support case_000008_rank.val hlt
          case_000008_mask = case_000008_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000008_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000008_support case_000008_rank.val hlt
          case_000008_mask = case_000008_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000008_secondLine_eq]
  have case_000008_fixedFirst :
      FixedRow (FirstLineAt case_000008_support case_000008_rank.val hlt case_000008_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000008_firstLine, FixedRow]
  have case_000008_rowSecond :
      EqEqPosRow (SecondLineAt case_000008_support case_000008_rank.val hlt case_000008_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000008_secondLine, EqEqPosRow]
  exact ⟨case_000008_fixedFirst, case_000008_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000008_sourceMatches :
    fam_008_desc.SourceMatches case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank :
      (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000008_seq)
          fam_008_desc.firstIndex = some fam_008_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000008_seq)
          fam_008_desc.secondIndex = some fam_008_support.second := by
    decide
  have hchecks :
      SourceChecks fam_008_support case_000008_rank.val hlt case_000008_mask := by
    simp [SourceChecks, hseq, fam_008_support,
      checkTranslationConstraintSource, case_000008_seq, impactFace]
  exact ⟨
    by simpa [fam_008_desc, hseq] using hfirstIndex,
    by simpa [fam_008_desc, hseq] using hsecondIndex,
    by simpa [fam_008_desc] using hchecks
  ⟩

private theorem case_000008_applies :
    fam_008_desc.Applies case_000008_rank.val case_000008_mask := by
  exact ⟨
    case_000008_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_008_desc, fam_008_support, case_000008_support] using case_000008_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 30. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_009_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_009_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000009_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000009_mask : SignMask := ⟨30, by decide⟩
private def case_000009_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000009_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000009_b : Vec3 Rat := { x := (-44/3), y := -4, z := 4 }
private def case_000009_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000009_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000009_rankWord :
    rankPairWord? case_000009_word = some case_000009_rank := by
  decide

private theorem case_000009_unrank :
    unrankPairWord case_000009_rank = case_000009_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000009_word case_000009_rank).1
    case_000009_rankWord |>.symm

private theorem case_000009_seqChoice :
    translationChoiceSeq case_000009_word case_000009_mask = case_000009_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000009_seqAtRank :
    translationSeqAtRankMask case_000009_rank case_000009_mask = case_000009_seq := by
  rw [translationSeqAtRankMask, case_000009_unrank]
  exact case_000009_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000009_bAtRank :
    translationBAtRankMask case_000009_rank case_000009_mask = case_000009_b := by
  rw [translationBAtRankMask, case_000009_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000009_b, case_000009_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000009_firstLine_eq :
    case_000009_support.firstLine case_000009_seq case_000009_b = case_000009_firstLine := by
  norm_num [case_000009_firstLine, case_000009_support, case_000009_seq, case_000009_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000009_secondLine_eq :
    case_000009_support.secondLine case_000009_seq case_000009_b = case_000009_secondLine := by
  norm_num [case_000009_secondLine, case_000009_support, case_000009_seq, case_000009_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000009_rows :
    EqEqPosVarFirstRows case_000009_support case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_b := by
    simpa [hrank] using case_000009_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000009_support case_000009_rank.val hlt
          case_000009_mask = case_000009_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000009_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000009_support case_000009_rank.val hlt
          case_000009_mask = case_000009_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000009_secondLine_eq]
  have case_000009_rowFirst :
      EqEqPosRow (FirstLineAt case_000009_support case_000009_rank.val hlt case_000009_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000009_firstLine, EqEqPosRow]
  have case_000009_fixedSecond :
      FixedRow (SecondLineAt case_000009_support case_000009_rank.val hlt case_000009_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000009_secondLine, FixedRow]
  exact ⟨case_000009_rowFirst, case_000009_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000009_sourceMatches :
    fam_009_desc.SourceMatches case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank :
      (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000009_seq)
          fam_009_desc.firstIndex = some fam_009_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000009_seq)
          fam_009_desc.secondIndex = some fam_009_support.second := by
    decide
  have hchecks :
      SourceChecks fam_009_support case_000009_rank.val hlt case_000009_mask := by
    simp [SourceChecks, hseq, fam_009_support,
      checkTranslationConstraintSource, case_000009_seq, impactFace]
  exact ⟨
    by simpa [fam_009_desc, hseq] using hfirstIndex,
    by simpa [fam_009_desc, hseq] using hsecondIndex,
    by simpa [fam_009_desc] using hchecks
  ⟩

private theorem case_000009_applies :
    fam_009_desc.Applies case_000009_rank.val case_000009_mask := by
  exact ⟨
    case_000009_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_009_desc, fam_009_support, case_000009_support] using case_000009_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 31. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_010_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_010_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000010_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000010_mask : SignMask := ⟨31, by decide⟩
private def case_000010_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000010_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000010_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000010_firstLine : StrictLin2 := { a := (-11/17), b := (-11/17), c := (-75/17) }
private def case_000010_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000010_rankWord :
    rankPairWord? case_000010_word = some case_000010_rank := by
  decide

private theorem case_000010_unrank :
    unrankPairWord case_000010_rank = case_000010_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000010_word case_000010_rank).1
    case_000010_rankWord |>.symm

private theorem case_000010_seqChoice :
    translationChoiceSeq case_000010_word case_000010_mask = case_000010_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000010_seqAtRank :
    translationSeqAtRankMask case_000010_rank case_000010_mask = case_000010_seq := by
  rw [translationSeqAtRankMask, case_000010_unrank]
  exact case_000010_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000010_bAtRank :
    translationBAtRankMask case_000010_rank case_000010_mask = case_000010_b := by
  rw [translationBAtRankMask, case_000010_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000010_b, case_000010_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000010_firstLine_eq :
    case_000010_support.firstLine case_000010_seq case_000010_b = case_000010_firstLine := by
  norm_num [case_000010_firstLine, case_000010_support, case_000010_seq, case_000010_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000010_secondLine_eq :
    case_000010_support.secondLine case_000010_seq case_000010_b = case_000010_secondLine := by
  norm_num [case_000010_secondLine, case_000010_support, case_000010_seq, case_000010_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000010_rows :
    EqEqPosVarFirstRows case_000010_support case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_b := by
    simpa [hrank] using case_000010_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000010_support case_000010_rank.val hlt
          case_000010_mask = case_000010_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000010_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000010_support case_000010_rank.val hlt
          case_000010_mask = case_000010_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000010_secondLine_eq]
  have case_000010_rowFirst :
      EqEqPosRow (FirstLineAt case_000010_support case_000010_rank.val hlt case_000010_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000010_firstLine, EqEqPosRow]
  have case_000010_fixedSecond :
      FixedRow (SecondLineAt case_000010_support case_000010_rank.val hlt case_000010_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000010_secondLine, FixedRow]
  exact ⟨case_000010_rowFirst, case_000010_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000010_sourceMatches :
    fam_010_desc.SourceMatches case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank :
      (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000010_seq)
          fam_010_desc.firstIndex = some fam_010_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000010_seq)
          fam_010_desc.secondIndex = some fam_010_support.second := by
    decide
  have hchecks :
      SourceChecks fam_010_support case_000010_rank.val hlt case_000010_mask := by
    simp [SourceChecks, hseq, fam_010_support,
      checkTranslationConstraintSource, case_000010_seq, impactFace]
  exact ⟨
    by simpa [fam_010_desc, hseq] using hfirstIndex,
    by simpa [fam_010_desc, hseq] using hsecondIndex,
    by simpa [fam_010_desc] using hchecks
  ⟩

private theorem case_000010_applies :
    fam_010_desc.Applies case_000010_rank.val case_000010_mask := by
  exact ⟨
    case_000010_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_010_desc, fam_010_support, case_000010_support] using case_000010_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 45. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_011_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 13
  support := fam_011_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

private def case_000011_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000011_mask : SignMask := ⟨45, by decide⟩
private def case_000011_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000011_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000011_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000011_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000011_secondLine : StrictLin2 := { a := (9/374), b := (-9/374), c := (-73/187) }

private theorem case_000011_rankWord :
    rankPairWord? case_000011_word = some case_000011_rank := by
  decide

private theorem case_000011_unrank :
    unrankPairWord case_000011_rank = case_000011_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000011_word case_000011_rank).1
    case_000011_rankWord |>.symm

private theorem case_000011_seqChoice :
    translationChoiceSeq case_000011_word case_000011_mask = case_000011_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000011_seqAtRank :
    translationSeqAtRankMask case_000011_rank case_000011_mask = case_000011_seq := by
  rw [translationSeqAtRankMask, case_000011_unrank]
  exact case_000011_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000011_bAtRank :
    translationBAtRankMask case_000011_rank case_000011_mask = case_000011_b := by
  rw [translationBAtRankMask, case_000011_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000011_b, case_000011_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000011_firstLine_eq :
    case_000011_support.firstLine case_000011_seq case_000011_b = case_000011_firstLine := by
  norm_num [case_000011_firstLine, case_000011_support, case_000011_seq, case_000011_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000011_secondLine_eq :
    case_000011_support.secondLine case_000011_seq case_000011_b = case_000011_secondLine := by
  norm_num [case_000011_secondLine, case_000011_support, case_000011_seq, case_000011_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000011_rows :
    OppMinusOneVarSecondRows case_000011_support case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank : (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_b := by
    simpa [hrank] using case_000011_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000011_support case_000011_rank.val hlt
          case_000011_mask = case_000011_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000011_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000011_support case_000011_rank.val hlt
          case_000011_mask = case_000011_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000011_secondLine_eq]
  have case_000011_fixedFirst :
      FixedRow (FirstLineAt case_000011_support case_000011_rank.val hlt case_000011_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000011_firstLine, FixedRow]
  have case_000011_rowSecond :
      OppNegRow (SecondLineAt case_000011_support case_000011_rank.val hlt case_000011_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000011_secondLine, OppNegRow]
  exact ⟨case_000011_fixedFirst, case_000011_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000011_sourceMatches :
    fam_011_desc.SourceMatches case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank :
      (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000011_seq)
          fam_011_desc.firstIndex = some fam_011_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000011_seq)
          fam_011_desc.secondIndex = some fam_011_support.second := by
    decide
  have hchecks :
      SourceChecks fam_011_support case_000011_rank.val hlt case_000011_mask := by
    simp [SourceChecks, hseq, fam_011_support,
      checkTranslationConstraintSource, case_000011_seq, impactFace]
  exact ⟨
    by simpa [fam_011_desc, hseq] using hfirstIndex,
    by simpa [fam_011_desc, hseq] using hsecondIndex,
    by simpa [fam_011_desc] using hchecks
  ⟩

private theorem case_000011_applies :
    fam_011_desc.Applies case_000011_rank.val case_000011_mask := by
  exact ⟨
    case_000011_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_011_desc, fam_011_support, case_000011_support] using case_000011_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 47. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_012_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 13
  support := fam_012_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

private def case_000012_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000012_mask : SignMask := ⟨47, by decide⟩
private def case_000012_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000012_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000012_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000012_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000012_secondLine : StrictLin2 := { a := (9/110), b := (-9/110), c := (-52/55) }

private theorem case_000012_rankWord :
    rankPairWord? case_000012_word = some case_000012_rank := by
  decide

private theorem case_000012_unrank :
    unrankPairWord case_000012_rank = case_000012_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000012_word case_000012_rank).1
    case_000012_rankWord |>.symm

private theorem case_000012_seqChoice :
    translationChoiceSeq case_000012_word case_000012_mask = case_000012_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000012_seqAtRank :
    translationSeqAtRankMask case_000012_rank case_000012_mask = case_000012_seq := by
  rw [translationSeqAtRankMask, case_000012_unrank]
  exact case_000012_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000012_bAtRank :
    translationBAtRankMask case_000012_rank case_000012_mask = case_000012_b := by
  rw [translationBAtRankMask, case_000012_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000012_b, case_000012_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000012_firstLine_eq :
    case_000012_support.firstLine case_000012_seq case_000012_b = case_000012_firstLine := by
  norm_num [case_000012_firstLine, case_000012_support, case_000012_seq, case_000012_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000012_secondLine_eq :
    case_000012_support.secondLine case_000012_seq case_000012_b = case_000012_secondLine := by
  norm_num [case_000012_secondLine, case_000012_support, case_000012_seq, case_000012_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000012_rows :
    OppMinusOneVarSecondRows case_000012_support case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_b := by
    simpa [hrank] using case_000012_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000012_support case_000012_rank.val hlt
          case_000012_mask = case_000012_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000012_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000012_support case_000012_rank.val hlt
          case_000012_mask = case_000012_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000012_secondLine_eq]
  have case_000012_fixedFirst :
      FixedRow (FirstLineAt case_000012_support case_000012_rank.val hlt case_000012_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000012_firstLine, FixedRow]
  have case_000012_rowSecond :
      OppNegRow (SecondLineAt case_000012_support case_000012_rank.val hlt case_000012_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000012_secondLine, OppNegRow]
  exact ⟨case_000012_fixedFirst, case_000012_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000012_sourceMatches :
    fam_012_desc.SourceMatches case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank :
      (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000012_seq)
          fam_012_desc.firstIndex = some fam_012_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000012_seq)
          fam_012_desc.secondIndex = some fam_012_support.second := by
    decide
  have hchecks :
      SourceChecks fam_012_support case_000012_rank.val hlt case_000012_mask := by
    simp [SourceChecks, hseq, fam_012_support,
      checkTranslationConstraintSource, case_000012_seq, impactFace]
  exact ⟨
    by simpa [fam_012_desc, hseq] using hfirstIndex,
    by simpa [fam_012_desc, hseq] using hsecondIndex,
    by simpa [fam_012_desc] using hchecks
  ⟩

private theorem case_000012_applies :
    fam_012_desc.Applies case_000012_rank.val case_000012_mask := by
  exact ⟨
    case_000012_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_012_desc, fam_012_support, case_000012_support] using case_000012_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 54. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_013_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_013_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

private def case_000013_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000013_mask : SignMask := ⟨54, by decide⟩
private def case_000013_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000013_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000013_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000013_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000013_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000013_rankWord :
    rankPairWord? case_000013_word = some case_000013_rank := by
  decide

private theorem case_000013_unrank :
    unrankPairWord case_000013_rank = case_000013_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000013_word case_000013_rank).1
    case_000013_rankWord |>.symm

private theorem case_000013_seqChoice :
    translationChoiceSeq case_000013_word case_000013_mask = case_000013_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000013_seqAtRank :
    translationSeqAtRankMask case_000013_rank case_000013_mask = case_000013_seq := by
  rw [translationSeqAtRankMask, case_000013_unrank]
  exact case_000013_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000013_bAtRank :
    translationBAtRankMask case_000013_rank case_000013_mask = case_000013_b := by
  rw [translationBAtRankMask, case_000013_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000013_b, case_000013_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000013_firstLine_eq :
    case_000013_support.firstLine case_000013_seq case_000013_b = case_000013_firstLine := by
  norm_num [case_000013_firstLine, case_000013_support, case_000013_seq, case_000013_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000013_secondLine_eq :
    case_000013_support.secondLine case_000013_seq case_000013_b = case_000013_secondLine := by
  norm_num [case_000013_secondLine, case_000013_support, case_000013_seq, case_000013_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000013_rows :
    OppOneMinusVarFirstRows case_000013_support case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank : (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_b := by
    simpa [hrank] using case_000013_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000013_support case_000013_rank.val hlt
          case_000013_mask = case_000013_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000013_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000013_support case_000013_rank.val hlt
          case_000013_mask = case_000013_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000013_secondLine_eq]
  have case_000013_rowFirst :
      OppPosRow (FirstLineAt case_000013_support case_000013_rank.val hlt case_000013_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000013_firstLine, OppPosRow]
  have case_000013_fixedSecond :
      FixedRow (SecondLineAt case_000013_support case_000013_rank.val hlt case_000013_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000013_secondLine, FixedRow]
  exact ⟨case_000013_rowFirst, case_000013_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000013_sourceMatches :
    fam_013_desc.SourceMatches case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank :
      (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000013_seq)
          fam_013_desc.firstIndex = some fam_013_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000013_seq)
          fam_013_desc.secondIndex = some fam_013_support.second := by
    decide
  have hchecks :
      SourceChecks fam_013_support case_000013_rank.val hlt case_000013_mask := by
    simp [SourceChecks, hseq, fam_013_support,
      checkTranslationConstraintSource, case_000013_seq, impactFace]
  exact ⟨
    by simpa [fam_013_desc, hseq] using hfirstIndex,
    by simpa [fam_013_desc, hseq] using hsecondIndex,
    by simpa [fam_013_desc] using hchecks
  ⟩

private theorem case_000013_applies :
    fam_013_desc.Applies case_000013_rank.val case_000013_mask := by
  exact ⟨
    case_000013_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_013_desc, fam_013_support, case_000013_support] using case_000013_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 55. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_014_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_014_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

private def case_000014_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000014_mask : SignMask := ⟨55, by decide⟩
private def case_000014_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000014_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000014_b : Vec3 Rat := { x := -4, y := 4, z := (44/3) }
private def case_000014_firstLine : StrictLin2 := { a := -1, b := 1, c := (-13/3) }
private def case_000014_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000014_rankWord :
    rankPairWord? case_000014_word = some case_000014_rank := by
  decide

private theorem case_000014_unrank :
    unrankPairWord case_000014_rank = case_000014_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000014_word case_000014_rank).1
    case_000014_rankWord |>.symm

private theorem case_000014_seqChoice :
    translationChoiceSeq case_000014_word case_000014_mask = case_000014_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000014_seqAtRank :
    translationSeqAtRankMask case_000014_rank case_000014_mask = case_000014_seq := by
  rw [translationSeqAtRankMask, case_000014_unrank]
  exact case_000014_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000014_bAtRank :
    translationBAtRankMask case_000014_rank case_000014_mask = case_000014_b := by
  rw [translationBAtRankMask, case_000014_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000014_b, case_000014_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000014_firstLine_eq :
    case_000014_support.firstLine case_000014_seq case_000014_b = case_000014_firstLine := by
  norm_num [case_000014_firstLine, case_000014_support, case_000014_seq, case_000014_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000014_secondLine_eq :
    case_000014_support.secondLine case_000014_seq case_000014_b = case_000014_secondLine := by
  norm_num [case_000014_secondLine, case_000014_support, case_000014_seq, case_000014_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000014_rows :
    OppOneMinusVarFirstRows case_000014_support case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank : (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_b := by
    simpa [hrank] using case_000014_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000014_support case_000014_rank.val hlt
          case_000014_mask = case_000014_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000014_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000014_support case_000014_rank.val hlt
          case_000014_mask = case_000014_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000014_secondLine_eq]
  have case_000014_rowFirst :
      OppPosRow (FirstLineAt case_000014_support case_000014_rank.val hlt case_000014_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000014_firstLine, OppPosRow]
  have case_000014_fixedSecond :
      FixedRow (SecondLineAt case_000014_support case_000014_rank.val hlt case_000014_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000014_secondLine, FixedRow]
  exact ⟨case_000014_rowFirst, case_000014_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000014_sourceMatches :
    fam_014_desc.SourceMatches case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank :
      (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000014_seq)
          fam_014_desc.firstIndex = some fam_014_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000014_seq)
          fam_014_desc.secondIndex = some fam_014_support.second := by
    decide
  have hchecks :
      SourceChecks fam_014_support case_000014_rank.val hlt case_000014_mask := by
    simp [SourceChecks, hseq, fam_014_support,
      checkTranslationConstraintSource, case_000014_seq, impactFace]
  exact ⟨
    by simpa [fam_014_desc, hseq] using hfirstIndex,
    by simpa [fam_014_desc, hseq] using hsecondIndex,
    by simpa [fam_014_desc] using hchecks
  ⟩

private theorem case_000014_applies :
    fam_014_desc.Applies case_000014_rank.val case_000014_mask := by
  exact ⟨
    case_000014_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_014_desc, fam_014_support, case_000014_support] using case_000014_rows
  ⟩

/-- Rank-0 semantic survivor descriptor for mask 63. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_015_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_015_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def case_000015_rank : Fin numPairWords := ⟨0, by decide⟩
private def case_000015_mask : SignMask := ⟨63, by decide⟩
private def case_000015_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩
private def case_000015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000015_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000015_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000015_firstLine : StrictLin2 := { a := (-1/3), b := (-1/3), c := (-1/3) }
private def case_000015_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000015_rankWord :
    rankPairWord? case_000015_word = some case_000015_rank := by
  decide

private theorem case_000015_unrank :
    unrankPairWord case_000015_rank = case_000015_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000015_word case_000015_rank).1
    case_000015_rankWord |>.symm

private theorem case_000015_seqChoice :
    translationChoiceSeq case_000015_word case_000015_mask = case_000015_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000015_seqAtRank :
    translationSeqAtRankMask case_000015_rank case_000015_mask = case_000015_seq := by
  rw [translationSeqAtRankMask, case_000015_unrank]
  exact case_000015_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000015_bAtRank :
    translationBAtRankMask case_000015_rank case_000015_mask = case_000015_b := by
  rw [translationBAtRankMask, case_000015_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000015_b, case_000015_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000015_firstLine_eq :
    case_000015_support.firstLine case_000015_seq case_000015_b = case_000015_firstLine := by
  norm_num [case_000015_firstLine, case_000015_support, case_000015_seq, case_000015_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000015_secondLine_eq :
    case_000015_support.secondLine case_000015_seq case_000015_b = case_000015_secondLine := by
  norm_num [case_000015_secondLine, case_000015_support, case_000015_seq, case_000015_b,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000015_rows :
    EqEqPosVarFirstRows case_000015_support case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank : (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_b := by
    simpa [hrank] using case_000015_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000015_support case_000015_rank.val hlt
          case_000015_mask = case_000015_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000015_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000015_support case_000015_rank.val hlt
          case_000015_mask = case_000015_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000015_secondLine_eq]
  have case_000015_rowFirst :
      EqEqPosRow (FirstLineAt case_000015_support case_000015_rank.val hlt case_000015_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000015_firstLine, EqEqPosRow]
  have case_000015_fixedSecond :
      FixedRow (SecondLineAt case_000015_support case_000015_rank.val hlt case_000015_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000015_secondLine, FixedRow]
  exact ⟨case_000015_rowFirst, case_000015_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000015_sourceMatches :
    fam_015_desc.SourceMatches case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank :
      (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hfirstIndex :
      listGet? (translationConstraintSources case_000015_seq)
          fam_015_desc.firstIndex = some fam_015_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000015_seq)
          fam_015_desc.secondIndex = some fam_015_support.second := by
    decide
  have hchecks :
      SourceChecks fam_015_support case_000015_rank.val hlt case_000015_mask := by
    simp [SourceChecks, hseq, fam_015_support,
      checkTranslationConstraintSource, case_000015_seq, impactFace]
  exact ⟨
    by simpa [fam_015_desc, hseq] using hfirstIndex,
    by simpa [fam_015_desc, hseq] using hsecondIndex,
    by simpa [fam_015_desc] using hchecks
  ⟩

private theorem case_000015_applies :
    fam_015_desc.Applies case_000015_rank.val case_000015_mask := by
  exact ⟨
    case_000015_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_015_desc, fam_015_support, case_000015_support] using case_000015_rows
  ⟩

/--
A microscopic complete semantic classifier for the rank interval `[0,1)`.

The proof performs a finite mask split only in this diagnostic smoke.
Production evidence must replace the split with state/signature families.
-/
theorem rank0DescriptorGoodCoverage :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 1 := by
  intro rank mask hlt hlo hhi hM hgood
  have hrank : rank = 0 := by omega
  subst rank
  fin_cases mask
  · exact False.elim ((mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_07_badDirection_notGood hlt) hgood)
  · exact ⟨fam_000_desc, by simpa [case_000000_rank, case_000000_mask] using case_000000_applies⟩
  · exact ⟨fam_001_desc, by simpa [case_000001_rank, case_000001_mask] using case_000001_applies⟩
  · exact False.elim ((mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_12_badDirection_notGood hlt) hgood)
  · exact ⟨fam_002_desc, by simpa [case_000002_rank, case_000002_mask] using case_000002_applies⟩
  · exact False.elim ((mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_15_badDirection_notGood hlt) hgood)
  · exact ⟨fam_003_desc, by simpa [case_000003_rank, case_000003_mask] using case_000003_applies⟩
  · exact False.elim ((mask_17_badDirection_notGood hlt) hgood)
  · exact ⟨fam_004_desc, by simpa [case_000004_rank, case_000004_mask] using case_000004_applies⟩
  · exact False.elim ((mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_21_badDirection_notGood hlt) hgood)
  · exact ⟨fam_005_desc, by simpa [case_000005_rank, case_000005_mask] using case_000005_applies⟩
  · exact False.elim ((mask_23_badDirection_notGood hlt) hgood)
  · exact ⟨fam_006_desc, by simpa [case_000006_rank, case_000006_mask] using case_000006_applies⟩
  · exact False.elim ((mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_27_badDirection_notGood hlt) hgood)
  · exact ⟨fam_007_desc, by simpa [case_000007_rank, case_000007_mask] using case_000007_applies⟩
  · exact ⟨fam_008_desc, by simpa [case_000008_rank, case_000008_mask] using case_000008_applies⟩
  · exact ⟨fam_009_desc, by simpa [case_000009_rank, case_000009_mask] using case_000009_applies⟩
  · exact ⟨fam_010_desc, by simpa [case_000010_rank, case_000010_mask] using case_000010_applies⟩
  · exact False.elim ((mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_44_badDirection_notGood hlt) hgood)
  · exact ⟨fam_011_desc, by simpa [case_000011_rank, case_000011_mask] using case_000011_applies⟩
  · exact False.elim ((mask_46_badDirection_notGood hlt) hgood)
  · exact ⟨fam_012_desc, by simpa [case_000012_rank, case_000012_mask] using case_000012_applies⟩
  · exact False.elim ((mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_53_badDirection_notGood hlt) hgood)
  · exact ⟨fam_013_desc, by simpa [case_000013_rank, case_000013_mask] using case_000013_applies⟩
  · exact ⟨fam_014_desc, by simpa [case_000014_rank, case_000014_mask] using case_000014_applies⟩
  · exact False.elim ((mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_60_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_61_badDirection_notGood hlt) hgood)
  · exact False.elim ((mask_62_badDirection_notGood hlt) hgood)
  · exact ⟨fam_015_desc, by simpa [case_000015_rank, case_000015_mask] using case_000015_applies⟩

theorem rank0AllGoodCoverage : AllTranslationGoodCoverageOnRange 0 1 :=
  SourceIndexStateDescriptorGoodCoverageOnRange.to_allGoodCoverage
    rank0DescriptorGoodCoverage

theorem semanticHCompleteRank0Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticHCompleteRank0Smoke
