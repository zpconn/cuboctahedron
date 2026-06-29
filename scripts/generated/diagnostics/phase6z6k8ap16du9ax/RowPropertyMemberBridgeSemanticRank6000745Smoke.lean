import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge

/-!
Generated DU.9AX semantic half for a direct-local-key production-like rank smoke.

This module intentionally does not import compact-Walsh denominator cover modules.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRank6000745Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemantic
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticSelectorBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

abbrev rank : Nat := 6000745

/-- Local semantic family `19ddc0725b0383271f612f61d696ef8f466fff8470b08fdfbfaf2f3e19f8513a`.
Observed rank-local GoodDirection cases: 3. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def fam_000_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 8
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarSecond

private def fam_000_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 8
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Local semantic family `fab6ac0a8c9822fe9933f6265dd48d5f58ab53c3f06e3e65ee9c37accc9f891e`.
Observed rank-local GoodDirection cases: 3. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_001_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 31
  secondIndex := 2
  support := fam_001_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

private def fam_001_key : SourceIndexStateKey where
  firstIndex := 31
  secondIndex := 2
  support := fam_001_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Local semantic family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed rank-local GoodDirection cases: 1. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_002_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def fam_002_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Local semantic family `3deda5bfda7dd10dab177ab07d85e4bec5bae07344e932072d7bcd7ef986f363`.
Observed rank-local GoodDirection cases: 1. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_003_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 0
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarFirst

private def fam_003_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 0
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Local semantic family `7e4254e8e8a89467666d4f70d090bb4af72f4df73a95a4ab07e2be3aaf5aa1e9`.
Observed rank-local GoodDirection cases: 1. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_004_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 10
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarSecond

private def fam_004_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 10
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Local semantic family `2de5f70715ac7eacea36d336de5a29867271725c98e9ac3604612daa6ef1d770`.
Observed rank-local GoodDirection cases: 1. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_005_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 1
  support := fam_005_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

private def fam_005_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 1
  support := fam_005_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Local semantic family `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed rank-local GoodDirection cases: 1. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_006_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 1
  support := fam_006_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

private def fam_006_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 1
  support := fam_006_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Local semantic family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed rank-local GoodDirection cases: 1. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_007_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_007_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

private def fam_007_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := fam_007_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Local semantic family `fac79fe0bbad64b65dacccd4efea0bed4916683dd9a748acf14d725c8c3f75eb`.
Observed rank-local GoodDirection cases: 1. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_008_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 5
  support := fam_008_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

private def fam_008_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 5
  support := fam_008_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

private def case_000000_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000000_mask : SignMask := ⟨8, by decide⟩
private def case_000000_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000000_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zp
private def case_000000_b : Vec3 Rat := { x := (-20/9), y := (-20/9), z := (-116/9) }
private def case_000000_firstLine : StrictLin2 := { a := -1, b := -1, c := (-63/5) }
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
    fam_002_desc.SourceMatches case_000000_rank.val case_000000_mask := by
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
          fam_002_desc.firstIndex = some fam_002_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000000_seq)
          fam_002_desc.secondIndex = some fam_002_support.second := by
    decide
  have hchecks :
      SourceChecks fam_002_support case_000000_rank.val hlt case_000000_mask := by
    simp [SourceChecks, hseq, fam_002_support,
      checkTranslationConstraintSource, case_000000_seq, impactFace]
  exact ⟨
    by simpa [fam_002_desc, hseq] using hfirstIndex,
    by simpa [fam_002_desc, hseq] using hsecondIndex,
    by simpa [fam_002_desc] using hchecks
  ⟩

private theorem case_000000_applies :
    fam_002_desc.Applies case_000000_rank.val case_000000_mask := by
  exact ⟨
    case_000000_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_002_desc, fam_002_support, case_000000_support] using case_000000_rows
  ⟩

private theorem case_000000_sourceFacts :
    SourceIndexStateSourceFacts fam_002_key
      case_000000_rank.val case_000000_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000000_sourceMatches hlt
        simpa [fam_002_key, fam_002_desc, fam_002_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000000_sourceMatches hlt
        simpa [fam_002_key, fam_002_desc, fam_002_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000000_sourceMatches hlt
        simpa [fam_002_key, fam_002_desc, fam_002_support] using hs.2.2
    }

private theorem case_000000_rowFacts :
    SourceIndexStateRowFacts fam_002_key
      case_000000_rank.val case_000000_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_002_key, SourceIndexTemplate.Rows, fam_002_support,
      case_000000_support] using case_000000_rows)

private theorem case_000000_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000000_rank.val
        case_000000_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000000_sourceFacts case_000000_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_002_key, firstRole, secondRole, hsemantic⟩

private def case_000001_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000001_mask : SignMask := ⟨13, by decide⟩
private def case_000001_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000001_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zp
private def case_000001_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (-100/9) }
private def case_000001_firstLine : StrictLin2 := { a := (-25/17), b := (25/17), c := (-157/51) }
private def case_000001_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

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
    OppOneMinusVarFirstRows case_000001_support case_000001_rank.val case_000001_mask := by
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
      OppPosRow (FirstLineAt case_000001_support case_000001_rank.val hlt case_000001_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000001_firstLine, OppPosRow]
  have case_000001_fixedSecond :
      FixedRow (SecondLineAt case_000001_support case_000001_rank.val hlt case_000001_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000001_secondLine, FixedRow]
  exact ⟨case_000001_rowFirst, case_000001_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000001_sourceMatches :
    fam_005_desc.SourceMatches case_000001_rank.val case_000001_mask := by
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
          fam_005_desc.firstIndex = some fam_005_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000001_seq)
          fam_005_desc.secondIndex = some fam_005_support.second := by
    decide
  have hchecks :
      SourceChecks fam_005_support case_000001_rank.val hlt case_000001_mask := by
    simp [SourceChecks, hseq, fam_005_support,
      checkTranslationConstraintSource, case_000001_seq, impactFace]
  exact ⟨
    by simpa [fam_005_desc, hseq] using hfirstIndex,
    by simpa [fam_005_desc, hseq] using hsecondIndex,
    by simpa [fam_005_desc] using hchecks
  ⟩

private theorem case_000001_applies :
    fam_005_desc.Applies case_000001_rank.val case_000001_mask := by
  exact ⟨
    case_000001_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_005_desc, fam_005_support, case_000001_support] using case_000001_rows
  ⟩

private theorem case_000001_sourceFacts :
    SourceIndexStateSourceFacts fam_005_key
      case_000001_rank.val case_000001_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000001_sourceMatches hlt
        simpa [fam_005_key, fam_005_desc, fam_005_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000001_sourceMatches hlt
        simpa [fam_005_key, fam_005_desc, fam_005_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000001_sourceMatches hlt
        simpa [fam_005_key, fam_005_desc, fam_005_support] using hs.2.2
    }

private theorem case_000001_rowFacts :
    SourceIndexStateRowFacts fam_005_key
      case_000001_rank.val case_000001_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_005_key, SourceIndexTemplate.Rows, fam_005_support,
      case_000001_support] using case_000001_rows)

private theorem case_000001_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000001_rank.val
        case_000001_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000001_sourceFacts case_000001_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_005_key, firstRole, secondRole, hsemantic⟩

private def case_000002_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000002_mask : SignMask := ⟨16, by decide⟩
private def case_000002_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def case_000002_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zp
private def case_000002_b : Vec3 Rat := { x := (-20/9), y := (-116/9), z := (-20/9) }
private def case_000002_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000002_secondLine : StrictLin2 := { a := (-5/26), b := (-5/26), c := (-274/39) }

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
    fam_000_desc.SourceMatches case_000002_rank.val case_000002_mask := by
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
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000002_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000002_rank.val hlt case_000002_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000002_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000002_applies :
    fam_000_desc.Applies case_000002_rank.val case_000002_mask := by
  exact ⟨
    case_000002_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000002_support] using case_000002_rows
  ⟩

private theorem case_000002_sourceFacts :
    SourceIndexStateSourceFacts fam_000_key
      case_000002_rank.val case_000002_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000002_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000002_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000002_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.2.2
    }

private theorem case_000002_rowFacts :
    SourceIndexStateRowFacts fam_000_key
      case_000002_rank.val case_000002_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_000_key, SourceIndexTemplate.Rows, fam_000_support,
      case_000002_support] using case_000002_rows)

private theorem case_000002_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000002_rank.val
        case_000002_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000002_sourceFacts case_000002_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_000_key, firstRole, secondRole, hsemantic⟩

private def case_000003_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000003_mask : SignMask := ⟨22, by decide⟩
private def case_000003_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000003_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zm
private def case_000003_b : Vec3 Rat := { x := (-100/9), y := (-100/9), z := (68/9) }
private def case_000003_firstLine : StrictLin2 := { a := (-25/39), b := (-25/39), c := (-109/117) }
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

private theorem case_000003_sourceFacts :
    SourceIndexStateSourceFacts fam_003_key
      case_000003_rank.val case_000003_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000003_sourceMatches hlt
        simpa [fam_003_key, fam_003_desc, fam_003_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000003_sourceMatches hlt
        simpa [fam_003_key, fam_003_desc, fam_003_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000003_sourceMatches hlt
        simpa [fam_003_key, fam_003_desc, fam_003_support] using hs.2.2
    }

private theorem case_000003_rowFacts :
    SourceIndexStateRowFacts fam_003_key
      case_000003_rank.val case_000003_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_003_key, SourceIndexTemplate.Rows, fam_003_support,
      case_000003_support] using case_000003_rows)

private theorem case_000003_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000003_rank.val
        case_000003_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000003_sourceFacts case_000003_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_003_key, firstRole, secondRole, hsemantic⟩

private def case_000004_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000004_mask : SignMask := ⟨28, by decide⟩
private def case_000004_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def case_000004_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zp
private def case_000004_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (-52/9) }
private def case_000004_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000004_secondLine : StrictLin2 := { a := (-37/742), b := (-37/742), c := (-223/1113) }

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
    EqEqPosVarSecondRows case_000004_support case_000004_rank.val case_000004_mask := by
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
  have case_000004_fixedFirst :
      FixedRow (FirstLineAt case_000004_support case_000004_rank.val hlt case_000004_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000004_firstLine, FixedRow]
  have case_000004_rowSecond :
      EqEqPosRow (SecondLineAt case_000004_support case_000004_rank.val hlt case_000004_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000004_secondLine, EqEqPosRow]
  exact ⟨case_000004_fixedFirst, case_000004_rowSecond⟩

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

private theorem case_000004_sourceFacts :
    SourceIndexStateSourceFacts fam_004_key
      case_000004_rank.val case_000004_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000004_sourceMatches hlt
        simpa [fam_004_key, fam_004_desc, fam_004_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000004_sourceMatches hlt
        simpa [fam_004_key, fam_004_desc, fam_004_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000004_sourceMatches hlt
        simpa [fam_004_key, fam_004_desc, fam_004_support] using hs.2.2
    }

private theorem case_000004_rowFacts :
    SourceIndexStateRowFacts fam_004_key
      case_000004_rank.val case_000004_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_004_key, SourceIndexTemplate.Rows, fam_004_support,
      case_000004_support] using case_000004_rows)

private theorem case_000004_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000004_rank.val
        case_000004_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000004_sourceFacts case_000004_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_004_key, firstRole, secondRole, hsemantic⟩

private def case_000005_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000005_mask : SignMask := ⟨29, by decide⟩
private def case_000005_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000005_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zp
private def case_000005_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (-52/9) }
private def case_000005_firstLine : StrictLin2 := { a := (37/19), b := (-37/19), c := (-109/19) }
private def case_000005_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

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
    OppMinusOneVarFirstRows case_000005_support case_000005_rank.val case_000005_mask := by
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
      OppNegRow (FirstLineAt case_000005_support case_000005_rank.val hlt case_000005_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000005_firstLine, OppNegRow]
  have case_000005_fixedSecond :
      FixedRow (SecondLineAt case_000005_support case_000005_rank.val hlt case_000005_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000005_secondLine, FixedRow]
  exact ⟨case_000005_rowFirst, case_000005_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000005_sourceMatches :
    fam_001_desc.SourceMatches case_000005_rank.val case_000005_mask := by
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
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000005_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000005_rank.val hlt case_000005_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000005_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000005_applies :
    fam_001_desc.Applies case_000005_rank.val case_000005_mask := by
  exact ⟨
    case_000005_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000005_support] using case_000005_rows
  ⟩

private theorem case_000005_sourceFacts :
    SourceIndexStateSourceFacts fam_001_key
      case_000005_rank.val case_000005_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000005_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000005_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000005_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.2.2
    }

private theorem case_000005_rowFacts :
    SourceIndexStateRowFacts fam_001_key
      case_000005_rank.val case_000005_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_001_key, SourceIndexTemplate.Rows, fam_001_support,
      case_000005_support] using case_000005_rows)

private theorem case_000005_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000005_rank.val
        case_000005_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000005_sourceFacts case_000005_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_001_key, firstRole, secondRole, hsemantic⟩

private def case_000006_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000006_mask : SignMask := ⟨30, by decide⟩
private def case_000006_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000006_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zm
private def case_000006_b : Vec3 Rat := { x := (-148/9), y := (-52/9), z := (20/9) }
private def case_000006_firstLine : StrictLin2 := { a := (-37/19), b := (37/19), c := (-263/57) }
private def case_000006_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

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
    OppOneMinusVarFirstRows case_000006_support case_000006_rank.val case_000006_mask := by
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
      OppPosRow (FirstLineAt case_000006_support case_000006_rank.val hlt case_000006_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000006_firstLine, OppPosRow]
  have case_000006_fixedSecond :
      FixedRow (SecondLineAt case_000006_support case_000006_rank.val hlt case_000006_mask)
        (1) (-1) := by
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

private theorem case_000006_sourceFacts :
    SourceIndexStateSourceFacts fam_006_key
      case_000006_rank.val case_000006_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000006_sourceMatches hlt
        simpa [fam_006_key, fam_006_desc, fam_006_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000006_sourceMatches hlt
        simpa [fam_006_key, fam_006_desc, fam_006_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000006_sourceMatches hlt
        simpa [fam_006_key, fam_006_desc, fam_006_support] using hs.2.2
    }

private theorem case_000006_rowFacts :
    SourceIndexStateRowFacts fam_006_key
      case_000006_rank.val case_000006_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_006_key, SourceIndexTemplate.Rows, fam_006_support,
      case_000006_support] using case_000006_rows)

private theorem case_000006_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000006_rank.val
        case_000006_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000006_sourceFacts case_000006_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_006_key, firstRole, secondRole, hsemantic⟩

private def case_000007_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000007_mask : SignMask := ⟨31, by decide⟩
private def case_000007_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000007_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmpp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000007_b : Vec3 Rat := { x := (-148/9), y := (20/9), z := (20/9) }
private def case_000007_firstLine : StrictLin2 := { a := 1, b := -1, c := -1 }
private def case_000007_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

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
    OppMinusOneVarFirstRows case_000007_support case_000007_rank.val case_000007_mask := by
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
      OppNegRow (FirstLineAt case_000007_support case_000007_rank.val hlt case_000007_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000007_firstLine, OppNegRow]
  have case_000007_fixedSecond :
      FixedRow (SecondLineAt case_000007_support case_000007_rank.val hlt case_000007_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000007_secondLine, FixedRow]
  exact ⟨case_000007_rowFirst, case_000007_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000007_sourceMatches :
    fam_001_desc.SourceMatches case_000007_rank.val case_000007_mask := by
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
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000007_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000007_rank.val hlt case_000007_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000007_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000007_applies :
    fam_001_desc.Applies case_000007_rank.val case_000007_mask := by
  exact ⟨
    case_000007_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000007_support] using case_000007_rows
  ⟩

private theorem case_000007_sourceFacts :
    SourceIndexStateSourceFacts fam_001_key
      case_000007_rank.val case_000007_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000007_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000007_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000007_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.2.2
    }

private theorem case_000007_rowFacts :
    SourceIndexStateRowFacts fam_001_key
      case_000007_rank.val case_000007_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_001_key, SourceIndexTemplate.Rows, fam_001_support,
      case_000007_support] using case_000007_rows)

private theorem case_000007_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000007_rank.val
        case_000007_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000007_sourceFacts case_000007_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_001_key, firstRole, secondRole, hsemantic⟩

private def case_000008_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000008_mask : SignMask := ⟨45, by decide⟩
private def case_000008_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def case_000008_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zp
private def case_000008_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (-52/9) }
private def case_000008_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000008_secondLine : StrictLin2 := { a := (-13/18), b := (-13/18), c := (-31/27) }

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
    fam_000_desc.SourceMatches case_000008_rank.val case_000008_mask := by
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
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000008_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000008_rank.val hlt case_000008_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000008_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000008_applies :
    fam_000_desc.Applies case_000008_rank.val case_000008_mask := by
  exact ⟨
    case_000008_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000008_support] using case_000008_rows
  ⟩

private theorem case_000008_sourceFacts :
    SourceIndexStateSourceFacts fam_000_key
      case_000008_rank.val case_000008_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000008_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000008_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000008_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.2.2
    }

private theorem case_000008_rowFacts :
    SourceIndexStateRowFacts fam_000_key
      case_000008_rank.val case_000008_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_000_key, SourceIndexTemplate.Rows, fam_000_support,
      case_000008_support] using case_000008_rows)

private theorem case_000008_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000008_rank.val
        case_000008_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000008_sourceFacts case_000008_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_000_key, firstRole, secondRole, hsemantic⟩

private def case_000009_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000009_mask : SignMask := ⟨47, by decide⟩
private def case_000009_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def case_000009_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000009_b : Vec3 Rat := { x := (-52/9), y := (116/9), z := (20/9) }
private def case_000009_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000009_secondLine : StrictLin2 := { a := (-13/154), b := (-13/154), c := (-2/21) }

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
    EqEqPosVarSecondRows case_000009_support case_000009_rank.val case_000009_mask := by
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
  have case_000009_fixedFirst :
      FixedRow (FirstLineAt case_000009_support case_000009_rank.val hlt case_000009_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000009_firstLine, FixedRow]
  have case_000009_rowSecond :
      EqEqPosRow (SecondLineAt case_000009_support case_000009_rank.val hlt case_000009_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000009_secondLine, EqEqPosRow]
  exact ⟨case_000009_fixedFirst, case_000009_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000009_sourceMatches :
    fam_000_desc.SourceMatches case_000009_rank.val case_000009_mask := by
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
          fam_000_desc.firstIndex = some fam_000_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000009_seq)
          fam_000_desc.secondIndex = some fam_000_support.second := by
    decide
  have hchecks :
      SourceChecks fam_000_support case_000009_rank.val hlt case_000009_mask := by
    simp [SourceChecks, hseq, fam_000_support,
      checkTranslationConstraintSource, case_000009_seq, impactFace]
  exact ⟨
    by simpa [fam_000_desc, hseq] using hfirstIndex,
    by simpa [fam_000_desc, hseq] using hsecondIndex,
    by simpa [fam_000_desc] using hchecks
  ⟩

private theorem case_000009_applies :
    fam_000_desc.Applies case_000009_rank.val case_000009_mask := by
  exact ⟨
    case_000009_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_000_desc, fam_000_support, case_000009_support] using case_000009_rows
  ⟩

private theorem case_000009_sourceFacts :
    SourceIndexStateSourceFacts fam_000_key
      case_000009_rank.val case_000009_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000009_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000009_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000009_sourceMatches hlt
        simpa [fam_000_key, fam_000_desc, fam_000_support] using hs.2.2
    }

private theorem case_000009_rowFacts :
    SourceIndexStateRowFacts fam_000_key
      case_000009_rank.val case_000009_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_000_key, SourceIndexTemplate.Rows, fam_000_support,
      case_000009_support] using case_000009_rows)

private theorem case_000009_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000009_rank.val
        case_000009_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000009_sourceFacts case_000009_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_000_key, firstRole, secondRole, hsemantic⟩

private def case_000010_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000010_mask : SignMask := ⟨54, by decide⟩
private def case_000010_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000010_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zm
private def case_000010_b : Vec3 Rat := { x := (-52/9), y := (-52/9), z := (116/9) }
private def case_000010_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000010_secondLine : StrictLin2 := { a := (-9/220), b := (9/220), c := (-81/572) }

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
    OppOneMinusVarSecondRows case_000010_support case_000010_rank.val case_000010_mask := by
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
  have case_000010_fixedFirst :
      FixedRow (FirstLineAt case_000010_support case_000010_rank.val hlt case_000010_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000010_firstLine, FixedRow]
  have case_000010_rowSecond :
      OppPosRow (SecondLineAt case_000010_support case_000010_rank.val hlt case_000010_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000010_secondLine, OppPosRow]
  exact ⟨case_000010_fixedFirst, case_000010_rowSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000010_sourceMatches :
    fam_008_desc.SourceMatches case_000010_rank.val case_000010_mask := by
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
          fam_008_desc.firstIndex = some fam_008_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000010_seq)
          fam_008_desc.secondIndex = some fam_008_support.second := by
    decide
  have hchecks :
      SourceChecks fam_008_support case_000010_rank.val hlt case_000010_mask := by
    simp [SourceChecks, hseq, fam_008_support,
      checkTranslationConstraintSource, case_000010_seq, impactFace]
  exact ⟨
    by simpa [fam_008_desc, hseq] using hfirstIndex,
    by simpa [fam_008_desc, hseq] using hsecondIndex,
    by simpa [fam_008_desc] using hchecks
  ⟩

private theorem case_000010_applies :
    fam_008_desc.Applies case_000010_rank.val case_000010_mask := by
  exact ⟨
    case_000010_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_008_desc, fam_008_support, case_000010_support] using case_000010_rows
  ⟩

private theorem case_000010_sourceFacts :
    SourceIndexStateSourceFacts fam_008_key
      case_000010_rank.val case_000010_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000010_sourceMatches hlt
        simpa [fam_008_key, fam_008_desc, fam_008_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000010_sourceMatches hlt
        simpa [fam_008_key, fam_008_desc, fam_008_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000010_sourceMatches hlt
        simpa [fam_008_key, fam_008_desc, fam_008_support] using hs.2.2
    }

private theorem case_000010_rowFacts :
    SourceIndexStateRowFacts fam_008_key
      case_000010_rank.val case_000010_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_008_key, SourceIndexTemplate.Rows, fam_008_support,
      case_000010_support] using case_000010_rows)

private theorem case_000010_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000010_rank.val
        case_000010_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000010_sourceFacts case_000010_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_008_key, firstRole, secondRole, hsemantic⟩

private def case_000011_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000011_mask : SignMask := ⟨55, by decide⟩
private def case_000011_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000011_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tppm
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000011_b : Vec3 Rat := { x := (-52/9), y := (20/9), z := (116/9) }
private def case_000011_firstLine : StrictLin2 := { a := -1, b := 1, c := (-35/13) }
private def case_000011_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

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
    OppOneMinusVarFirstRows case_000011_support case_000011_rank.val case_000011_mask := by
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
  have case_000011_rowFirst :
      OppPosRow (FirstLineAt case_000011_support case_000011_rank.val hlt case_000011_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000011_firstLine, OppPosRow]
  have case_000011_fixedSecond :
      FixedRow (SecondLineAt case_000011_support case_000011_rank.val hlt case_000011_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000011_secondLine, FixedRow]
  exact ⟨case_000011_rowFirst, case_000011_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000011_sourceMatches :
    fam_007_desc.SourceMatches case_000011_rank.val case_000011_mask := by
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
          fam_007_desc.firstIndex = some fam_007_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000011_seq)
          fam_007_desc.secondIndex = some fam_007_support.second := by
    decide
  have hchecks :
      SourceChecks fam_007_support case_000011_rank.val hlt case_000011_mask := by
    simp [SourceChecks, hseq, fam_007_support,
      checkTranslationConstraintSource, case_000011_seq, impactFace]
  exact ⟨
    by simpa [fam_007_desc, hseq] using hfirstIndex,
    by simpa [fam_007_desc, hseq] using hsecondIndex,
    by simpa [fam_007_desc] using hchecks
  ⟩

private theorem case_000011_applies :
    fam_007_desc.Applies case_000011_rank.val case_000011_mask := by
  exact ⟨
    case_000011_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_007_desc, fam_007_support, case_000011_support] using case_000011_rows
  ⟩

private theorem case_000011_sourceFacts :
    SourceIndexStateSourceFacts fam_007_key
      case_000011_rank.val case_000011_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000011_sourceMatches hlt
        simpa [fam_007_key, fam_007_desc, fam_007_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000011_sourceMatches hlt
        simpa [fam_007_key, fam_007_desc, fam_007_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000011_sourceMatches hlt
        simpa [fam_007_key, fam_007_desc, fam_007_support] using hs.2.2
    }

private theorem case_000011_rowFacts :
    SourceIndexStateRowFacts fam_007_key
      case_000011_rank.val case_000011_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_007_key, SourceIndexTemplate.Rows, fam_007_support,
      case_000011_support] using case_000011_rows)

private theorem case_000011_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000011_rank.val
        case_000011_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000011_sourceFacts case_000011_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_007_key, firstRole, secondRole, hsemantic⟩

private def case_000012_rank : Fin numPairWords := ⟨6000745, by decide⟩
private def case_000012_mask : SignMask := ⟨63, by decide⟩
private def case_000012_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000012_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000012_b : Vec3 Rat := { x := (-100/9), y := (68/9), z := (68/9) }
private def case_000012_firstLine : StrictLin2 := { a := 1, b := -1, c := -1 }
private def case_000012_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

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
    OppMinusOneVarFirstRows case_000012_support case_000012_rank.val case_000012_mask := by
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
  have case_000012_rowFirst :
      OppNegRow (FirstLineAt case_000012_support case_000012_rank.val hlt case_000012_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000012_firstLine, OppNegRow]
  have case_000012_fixedSecond :
      FixedRow (SecondLineAt case_000012_support case_000012_rank.val hlt case_000012_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000012_secondLine, FixedRow]
  exact ⟨case_000012_rowFirst, case_000012_fixedSecond⟩

set_option maxHeartbeats 1200000 in
private theorem case_000012_sourceMatches :
    fam_001_desc.SourceMatches case_000012_rank.val case_000012_mask := by
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
          fam_001_desc.firstIndex = some fam_001_support.first := by
    decide
  have hsecondIndex :
      listGet? (translationConstraintSources case_000012_seq)
          fam_001_desc.secondIndex = some fam_001_support.second := by
    decide
  have hchecks :
      SourceChecks fam_001_support case_000012_rank.val hlt case_000012_mask := by
    simp [SourceChecks, hseq, fam_001_support,
      checkTranslationConstraintSource, case_000012_seq, impactFace]
  exact ⟨
    by simpa [fam_001_desc, hseq] using hfirstIndex,
    by simpa [fam_001_desc, hseq] using hsecondIndex,
    by simpa [fam_001_desc] using hchecks
  ⟩

private theorem case_000012_applies :
    fam_001_desc.Applies case_000012_rank.val case_000012_mask := by
  exact ⟨
    case_000012_sourceMatches,
    by simpa [SourceIndexTemplate.Rows, fam_001_desc, fam_001_support, case_000012_support] using case_000012_rows
  ⟩

private theorem case_000012_sourceFacts :
    SourceIndexStateSourceFacts fam_001_key
      case_000012_rank.val case_000012_mask := by
  exact
    { firstSource := fun hlt => by
        have hs := case_000012_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.1
      secondSource := fun hlt => by
        have hs := case_000012_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.2.1
      sourceChecks := fun hlt => by
        have hs := case_000012_sourceMatches hlt
        simpa [fam_001_key, fam_001_desc, fam_001_support] using hs.2.2
    }

private theorem case_000012_rowFacts :
    SourceIndexStateRowFacts fam_001_key
      case_000012_rank.val case_000012_mask := by
  exact SourceIndexStateRowFacts.of_rows (by
    simpa [fam_001_key, SourceIndexTemplate.Rows, fam_001_support,
      case_000012_support] using case_000012_rows)

private theorem case_000012_semanticFacts :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole case_000012_rank.val
        case_000012_mask := by
  rcases semanticFacts_of_source_row_nonaxis
      case_000012_sourceFacts case_000012_rowFacts
      (by decide) (by decide) (by decide) with
    ⟨firstRole, secondRole, hsemantic⟩
  exact ⟨fam_001_key, firstRole, secondRole, hsemantic⟩

/-- Positive GoodDirection survivor masks represented in this rank leaf. -/
inductive PositiveCase : SignMask -> Prop
  | m00 : PositiveCase (⟨8, by decide⟩ : SignMask)
  | m01 : PositiveCase (⟨13, by decide⟩ : SignMask)
  | m02 : PositiveCase (⟨16, by decide⟩ : SignMask)
  | m03 : PositiveCase (⟨22, by decide⟩ : SignMask)
  | m04 : PositiveCase (⟨28, by decide⟩ : SignMask)
  | m05 : PositiveCase (⟨29, by decide⟩ : SignMask)
  | m06 : PositiveCase (⟨30, by decide⟩ : SignMask)
  | m07 : PositiveCase (⟨31, by decide⟩ : SignMask)
  | m08 : PositiveCase (⟨45, by decide⟩ : SignMask)
  | m09 : PositiveCase (⟨47, by decide⟩ : SignMask)
  | m10 : PositiveCase (⟨54, by decide⟩ : SignMask)
  | m11 : PositiveCase (⟨55, by decide⟩ : SignMask)
  | m12 : PositiveCase (⟨63, by decide⟩ : SignMask)

private theorem semanticFacts_of_positiveCase
    {mask : SignMask} (hcase : PositiveCase mask) :
    ∃ key : SourceIndexStateKey, ∃ firstRole secondRole : RowRole,
      SemanticFactsLanguage key firstRole secondRole rank mask := by
  cases hcase with
  | m00 =>
      simpa [rank, case_000000_rank, case_000000_mask] using
        case_000000_semanticFacts
  | m01 =>
      simpa [rank, case_000001_rank, case_000001_mask] using
        case_000001_semanticFacts
  | m02 =>
      simpa [rank, case_000002_rank, case_000002_mask] using
        case_000002_semanticFacts
  | m03 =>
      simpa [rank, case_000003_rank, case_000003_mask] using
        case_000003_semanticFacts
  | m04 =>
      simpa [rank, case_000004_rank, case_000004_mask] using
        case_000004_semanticFacts
  | m05 =>
      simpa [rank, case_000005_rank, case_000005_mask] using
        case_000005_semanticFacts
  | m06 =>
      simpa [rank, case_000006_rank, case_000006_mask] using
        case_000006_semanticFacts
  | m07 =>
      simpa [rank, case_000007_rank, case_000007_mask] using
        case_000007_semanticFacts
  | m08 =>
      simpa [rank, case_000008_rank, case_000008_mask] using
        case_000008_semanticFacts
  | m09 =>
      simpa [rank, case_000009_rank, case_000009_mask] using
        case_000009_semanticFacts
  | m10 =>
      simpa [rank, case_000010_rank, case_000010_mask] using
        case_000010_semanticFacts
  | m11 =>
      simpa [rank, case_000011_rank, case_000011_mask] using
        case_000011_semanticFacts
  | m12 =>
      simpa [rank, case_000012_rank, case_000012_mask] using
        case_000012_semanticFacts

abbrev Member (r : Nat) (mask : SignMask) : Prop :=
  r = rank ∧ PositiveCase mask

private theorem covered_of_semanticFacts
    {key : SourceIndexStateKey} {firstRole secondRole : RowRole}
    {mask : SignMask}
    (h : SemanticFactsLanguage key firstRole secondRole rank mask) :
    RowPropertyParametricCovered rank mask :=
  SourceIndexStateKey.covered_of_source_semantic h.1 h.2.1 h.2.2

theorem semanticCoverage :
    RowPropertyMemberSemanticCoverageOnIdentityRange Member rank (rank + 1) := by
  intro r _hlt mask _hlo _hhi _hM hmember
  rcases hmember with ⟨hrank, hcase⟩
  subst r
  rcases semanticFacts_of_positiveCase hcase with
    ⟨key, firstRole, secondRole, hsemantic⟩
  exact covered_of_semanticFacts hsemantic

theorem semanticRankSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridgeSemanticRank6000745Smoke
