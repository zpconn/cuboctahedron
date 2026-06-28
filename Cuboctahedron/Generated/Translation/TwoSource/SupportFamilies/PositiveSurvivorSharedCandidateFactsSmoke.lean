import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated AP.16W shared candidate facts smoke.

This module exports reusable source/row candidate facts for a small
multi-signature AP.16 smoke. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unnecessarySeqFocus false
set_option linter.unreachableTactic false

inductive GeneratedCandidate
  | c000
  | c001
  | c002
  | c003
  | c004
  | c005
  | c006
  | c007
  | c008
  | c009
  | c010
deriving DecidableEq, Repr

def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
  | .c000 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c001 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c002 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c003 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c004 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c005 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c006 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpp 8
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c007 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c008 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c009 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmp 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c010 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }

def generatedKey : GeneratedCandidate -> SourceIndexStateKey
  | .c000 => {
      firstIndex := (generatedSpec .c000).first.index
      secondIndex := (generatedSpec .c000).second.index
      support := (generatedSpec .c000).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c001 => {
      firstIndex := (generatedSpec .c001).first.index
      secondIndex := (generatedSpec .c001).second.index
      support := (generatedSpec .c001).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c002 => {
      firstIndex := (generatedSpec .c002).first.index
      secondIndex := (generatedSpec .c002).second.index
      support := (generatedSpec .c002).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c003 => {
      firstIndex := (generatedSpec .c003).first.index
      secondIndex := (generatedSpec .c003).second.index
      support := (generatedSpec .c003).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c004 => {
      firstIndex := (generatedSpec .c004).first.index
      secondIndex := (generatedSpec .c004).second.index
      support := (generatedSpec .c004).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c005 => {
      firstIndex := (generatedSpec .c005).first.index
      secondIndex := (generatedSpec .c005).second.index
      support := (generatedSpec .c005).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c006 => {
      firstIndex := (generatedSpec .c006).first.index
      secondIndex := (generatedSpec .c006).second.index
      support := (generatedSpec .c006).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c007 => {
      firstIndex := (generatedSpec .c007).first.index
      secondIndex := (generatedSpec .c007).second.index
      support := (generatedSpec .c007).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c008 => {
      firstIndex := (generatedSpec .c008).first.index
      secondIndex := (generatedSpec .c008).second.index
      support := (generatedSpec .c008).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c009 => {
      firstIndex := (generatedSpec .c009).first.index
      secondIndex := (generatedSpec .c009).second.index
      support := (generatedSpec .c009).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c010 => {
      firstIndex := (generatedSpec .c010).first.index
      secondIndex := (generatedSpec .c010).second.index
      support := (generatedSpec .c010).support
      template := SourceIndexTemplate.eqEqPosVarFirst }

def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
  | .c000 => {
      Applies := fun key rank mask =>
        key = generatedKey .c000 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c001 => {
      Applies := fun key rank mask =>
        key = generatedKey .c001 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c002 => {
      Applies := fun key rank mask =>
        key = generatedKey .c002 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c003 => {
      Applies := fun key rank mask =>
        key = generatedKey .c003 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c004 => {
      Applies := fun key rank mask =>
        key = generatedKey .c004 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c005 => {
      Applies := fun key rank mask =>
        key = generatedKey .c005 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c006 => {
      Applies := fun key rank mask =>
        key = generatedKey .c006 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c007 => {
      Applies := fun key rank mask =>
        key = generatedKey .c007 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c008 => {
      Applies := fun key rank mask =>
        key = generatedKey .c008 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c009 => {
      Applies := fun key rank mask =>
        key = generatedKey .c009 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c010 => {
      Applies := fun key rank mask =>
        key = generatedKey .c010 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }

def CandidateFacts (candidate : GeneratedCandidate) (rank : Nat) (mask : SignMask) : Prop :=
  (generatedSpec candidate).Predicate rank mask /\
    (generatedRowProducer candidate).Applies (generatedKey candidate) rank mask

/-- AP.16W shared candidate fact: rank `100805`, mask `4`. -/
private def case_000000_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000000_mask : SignMask := ⟨4, by decide⟩
private def case_000000_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000000_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000000_b : Vec3 Rat := { x := (-124/27), y := (-460/27), z := (-124/27) }
private def case_000000_firstLine : StrictLin2 := { a := -1, b := -1, c := (-261/31) }
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
private theorem case_000000_shape :
    EqEqPosVarFirst case_000000_support case_000000_rank.val case_000000_mask := by
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
  have case_000000_sourceChecks :
      SourceChecks case_000000_support case_000000_rank.val hlt case_000000_mask := by
    simp [SourceChecks, hseq, case_000000_support,
      checkTranslationConstraintSource, case_000000_seq, impactFace]
  have case_000000_rowFirst :
      EqEqPosRow (FirstLineAt case_000000_support case_000000_rank.val hlt case_000000_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000000_firstLine, EqEqPosRow]
  have case_000000_fixedSecond :
      FixedRow (SecondLineAt case_000000_support case_000000_rank.val hlt case_000000_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000000_secondLine, FixedRow]
  exact ⟨case_000000_sourceChecks, case_000000_rowFirst, case_000000_fixedSecond⟩

private theorem case_000000_checkedAtRank :
    case_000000_support.Checked
      (translationSeqAtRankMask case_000000_rank case_000000_mask)
      (translationBAtRankMask case_000000_rank case_000000_mask) :=
  eqEqPosVarFirst_checkedOn case_000000_support case_000000_rank.val case_000000_rank.isLt
    case_000000_mask case_000000_shape

private theorem case_000000_supportWitness
    (hlt : case_000000_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask)
        (translationBAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask) := by
  have hrank : (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  exact ⟨case_000000_support, by simpa [hrank] using case_000000_checkedAtRank⟩

private theorem case_000000_sourcePredicate :
    (generatedSpec .c010).Predicate case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank : (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hshape := case_000000_shape hlt
  have hfirst : (generatedSpec .c010).first.Holds
      (translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000000_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c010).second.Holds
      (translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c010).support case_000000_rank.val hlt case_000000_mask := by
    change SourceChecks case_000000_support case_000000_rank.val hlt case_000000_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000000_rowsForKey :
    (generatedKey .c010).template.Rows (generatedKey .c010).support
      case_000000_rank.val case_000000_mask := by
  change EqEqPosVarFirstRows (generatedKey .c010).support case_000000_rank.val case_000000_mask
  rw [show (generatedKey .c010).support = case_000000_support by rfl]
  intro hlt
  exact (case_000000_shape hlt).2

private theorem case_000000_rowProducerApplies :
    (generatedRowProducer .c010).Applies (generatedKey .c010)
      case_000000_rank.val case_000000_mask := by
  exact ⟨rfl, case_000000_rowsForKey⟩

theorem case_000000_candidateFacts :
    CandidateFacts .c010 100805 ⟨4, by decide⟩ := by
  simpa [CandidateFacts, case_000000_rank, case_000000_mask] using
    And.intro case_000000_sourcePredicate case_000000_rowProducerApplies

/-- AP.16W shared candidate fact: rank `100805`, mask `6`. -/
private def case_000001_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000001_mask : SignMask := ⟨6, by decide⟩
private def case_000001_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000001_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
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
private def case_000001_b : Vec3 Rat := { x := (-316/27), y := (-364/27), z := (-100/27) }
private def case_000001_firstLine : StrictLin2 := { a := -1, b := -1, c := (-153/79) }
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
private theorem case_000001_shape :
    EqEqPosVarFirst case_000001_support case_000001_rank.val case_000001_mask := by
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
  have case_000001_sourceChecks :
      SourceChecks case_000001_support case_000001_rank.val hlt case_000001_mask := by
    simp [SourceChecks, hseq, case_000001_support,
      checkTranslationConstraintSource, case_000001_seq, impactFace]
  have case_000001_rowFirst :
      EqEqPosRow (FirstLineAt case_000001_support case_000001_rank.val hlt case_000001_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000001_firstLine, EqEqPosRow]
  have case_000001_fixedSecond :
      FixedRow (SecondLineAt case_000001_support case_000001_rank.val hlt case_000001_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000001_secondLine, FixedRow]
  exact ⟨case_000001_sourceChecks, case_000001_rowFirst, case_000001_fixedSecond⟩

private theorem case_000001_checkedAtRank :
    case_000001_support.Checked
      (translationSeqAtRankMask case_000001_rank case_000001_mask)
      (translationBAtRankMask case_000001_rank case_000001_mask) :=
  eqEqPosVarFirst_checkedOn case_000001_support case_000001_rank.val case_000001_rank.isLt
    case_000001_mask case_000001_shape

private theorem case_000001_supportWitness
    (hlt : case_000001_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask)
        (translationBAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask) := by
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  exact ⟨case_000001_support, by simpa [hrank] using case_000001_checkedAtRank⟩

private theorem case_000001_sourcePredicate :
    (generatedSpec .c010).Predicate case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hshape := case_000001_shape hlt
  have hfirst : (generatedSpec .c010).first.Holds
      (translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000001_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c010).second.Holds
      (translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c010).support case_000001_rank.val hlt case_000001_mask := by
    change SourceChecks case_000001_support case_000001_rank.val hlt case_000001_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000001_rowsForKey :
    (generatedKey .c010).template.Rows (generatedKey .c010).support
      case_000001_rank.val case_000001_mask := by
  change EqEqPosVarFirstRows (generatedKey .c010).support case_000001_rank.val case_000001_mask
  rw [show (generatedKey .c010).support = case_000001_support by rfl]
  intro hlt
  exact (case_000001_shape hlt).2

private theorem case_000001_rowProducerApplies :
    (generatedRowProducer .c010).Applies (generatedKey .c010)
      case_000001_rank.val case_000001_mask := by
  exact ⟨rfl, case_000001_rowsForKey⟩

theorem case_000001_candidateFacts :
    CandidateFacts .c010 100805 ⟨6, by decide⟩ := by
  simpa [CandidateFacts, case_000001_rank, case_000001_mask] using
    And.intro case_000001_sourcePredicate case_000001_rowProducerApplies

/-- AP.16W shared candidate fact: rank `100805`, mask `11`. -/
private def case_000002_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000002_mask : SignMask := ⟨11, by decide⟩
private def case_000002_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000002_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000002_b : Vec3 Rat := { x := (-52/9), y := (68/9), z := (-76/9) }
private def case_000002_firstLine : StrictLin2 := { a := (-13/15), b := (-13/15), c := (-17/15) }
private def case_000002_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
private theorem case_000002_shape :
    EqEqPosVarFirst case_000002_support case_000002_rank.val case_000002_mask := by
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
  have case_000002_sourceChecks :
      SourceChecks case_000002_support case_000002_rank.val hlt case_000002_mask := by
    simp [SourceChecks, hseq, case_000002_support,
      checkTranslationConstraintSource, case_000002_seq, impactFace]
  have case_000002_rowFirst :
      EqEqPosRow (FirstLineAt case_000002_support case_000002_rank.val hlt case_000002_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000002_firstLine, EqEqPosRow]
  have case_000002_fixedSecond :
      FixedRow (SecondLineAt case_000002_support case_000002_rank.val hlt case_000002_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000002_secondLine, FixedRow]
  exact ⟨case_000002_sourceChecks, case_000002_rowFirst, case_000002_fixedSecond⟩

private theorem case_000002_checkedAtRank :
    case_000002_support.Checked
      (translationSeqAtRankMask case_000002_rank case_000002_mask)
      (translationBAtRankMask case_000002_rank case_000002_mask) :=
  eqEqPosVarFirst_checkedOn case_000002_support case_000002_rank.val case_000002_rank.isLt
    case_000002_mask case_000002_shape

private theorem case_000002_supportWitness
    (hlt : case_000002_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask)
        (translationBAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask) := by
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  exact ⟨case_000002_support, by simpa [hrank] using case_000002_checkedAtRank⟩

private theorem case_000002_sourcePredicate :
    (generatedSpec .c007).Predicate case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hshape := case_000002_shape hlt
  have hfirst : (generatedSpec .c007).first.Holds
      (translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000002_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c007).second.Holds
      (translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c007).support case_000002_rank.val hlt case_000002_mask := by
    change SourceChecks case_000002_support case_000002_rank.val hlt case_000002_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000002_rowsForKey :
    (generatedKey .c007).template.Rows (generatedKey .c007).support
      case_000002_rank.val case_000002_mask := by
  change EqEqPosVarFirstRows (generatedKey .c007).support case_000002_rank.val case_000002_mask
  rw [show (generatedKey .c007).support = case_000002_support by rfl]
  intro hlt
  exact (case_000002_shape hlt).2

private theorem case_000002_rowProducerApplies :
    (generatedRowProducer .c007).Applies (generatedKey .c007)
      case_000002_rank.val case_000002_mask := by
  exact ⟨rfl, case_000002_rowsForKey⟩

theorem case_000002_candidateFacts :
    CandidateFacts .c007 100805 ⟨11, by decide⟩ := by
  simpa [CandidateFacts, case_000002_rank, case_000002_mask] using
    And.intro case_000002_sourcePredicate case_000002_rowProducerApplies

/-- AP.16W shared candidate fact: rank `100805`, mask `22`. -/
private def case_000003_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000003_mask : SignMask := ⟨22, by decide⟩
private def case_000003_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000003_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
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
private def case_000003_b : Vec3 Rat := { x := (-44/3), y := (-28/3), z := 4 }
private def case_000003_firstLine : StrictLin2 := { a := (11/15), b := (11/15), c := (-13/5) }
private def case_000003_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

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
private theorem case_000003_shape :
    EqEqNegVarFirst case_000003_support case_000003_rank.val case_000003_mask := by
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
  have case_000003_sourceChecks :
      SourceChecks case_000003_support case_000003_rank.val hlt case_000003_mask := by
    simp [SourceChecks, hseq, case_000003_support,
      checkTranslationConstraintSource, case_000003_seq, impactFace]
  have case_000003_rowFirst :
      EqEqNegRow (FirstLineAt case_000003_support case_000003_rank.val hlt case_000003_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000003_firstLine, EqEqNegRow]
  have case_000003_fixedSecond :
      FixedRow (SecondLineAt case_000003_support case_000003_rank.val hlt case_000003_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000003_secondLine, FixedRow]
  exact ⟨case_000003_sourceChecks, case_000003_rowFirst, case_000003_fixedSecond⟩

private theorem case_000003_checkedAtRank :
    case_000003_support.Checked
      (translationSeqAtRankMask case_000003_rank case_000003_mask)
      (translationBAtRankMask case_000003_rank case_000003_mask) :=
  eqEqNegVarFirst_checkedOn case_000003_support case_000003_rank.val case_000003_rank.isLt
    case_000003_mask case_000003_shape

private theorem case_000003_supportWitness
    (hlt : case_000003_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask)
        (translationBAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask) := by
  have hrank : (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  exact ⟨case_000003_support, by simpa [hrank] using case_000003_checkedAtRank⟩

private theorem case_000003_sourcePredicate :
    (generatedSpec .c003).Predicate case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank : (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hshape := case_000003_shape hlt
  have hfirst : (generatedSpec .c003).first.Holds
      (translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000003_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c003).second.Holds
      (translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c003).support case_000003_rank.val hlt case_000003_mask := by
    change SourceChecks case_000003_support case_000003_rank.val hlt case_000003_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000003_rowsForKey :
    (generatedKey .c003).template.Rows (generatedKey .c003).support
      case_000003_rank.val case_000003_mask := by
  change EqEqNegVarFirstRows (generatedKey .c003).support case_000003_rank.val case_000003_mask
  rw [show (generatedKey .c003).support = case_000003_support by rfl]
  intro hlt
  exact (case_000003_shape hlt).2

private theorem case_000003_rowProducerApplies :
    (generatedRowProducer .c003).Applies (generatedKey .c003)
      case_000003_rank.val case_000003_mask := by
  exact ⟨rfl, case_000003_rowsForKey⟩

theorem case_000003_candidateFacts :
    CandidateFacts .c003 100805 ⟨22, by decide⟩ := by
  simpa [CandidateFacts, case_000003_rank, case_000003_mask] using
    And.intro case_000003_sourcePredicate case_000003_rowProducerApplies

/-- AP.16W shared candidate fact: rank `100805`, mask `30`. -/
private def case_000004_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000004_mask : SignMask := ⟨30, by decide⟩
private def case_000004_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000004_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000004_b : Vec3 Rat := { x := (-148/9), y := (-4/9), z := (20/9) }
private def case_000004_firstLine : StrictLin2 := { a := (-37/33), b := (-37/33), c := (-15/11) }
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
private theorem case_000004_shape :
    EqEqPosVarFirst case_000004_support case_000004_rank.val case_000004_mask := by
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
  have case_000004_sourceChecks :
      SourceChecks case_000004_support case_000004_rank.val hlt case_000004_mask := by
    simp [SourceChecks, hseq, case_000004_support,
      checkTranslationConstraintSource, case_000004_seq, impactFace]
  have case_000004_rowFirst :
      EqEqPosRow (FirstLineAt case_000004_support case_000004_rank.val hlt case_000004_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000004_firstLine, EqEqPosRow]
  have case_000004_fixedSecond :
      FixedRow (SecondLineAt case_000004_support case_000004_rank.val hlt case_000004_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000004_secondLine, FixedRow]
  exact ⟨case_000004_sourceChecks, case_000004_rowFirst, case_000004_fixedSecond⟩

private theorem case_000004_checkedAtRank :
    case_000004_support.Checked
      (translationSeqAtRankMask case_000004_rank case_000004_mask)
      (translationBAtRankMask case_000004_rank case_000004_mask) :=
  eqEqPosVarFirst_checkedOn case_000004_support case_000004_rank.val case_000004_rank.isLt
    case_000004_mask case_000004_shape

private theorem case_000004_supportWitness
    (hlt : case_000004_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask)
        (translationBAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask) := by
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  exact ⟨case_000004_support, by simpa [hrank] using case_000004_checkedAtRank⟩

private theorem case_000004_sourcePredicate :
    (generatedSpec .c008).Predicate case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hshape := case_000004_shape hlt
  have hfirst : (generatedSpec .c008).first.Holds
      (translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000004_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c008).second.Holds
      (translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c008).support case_000004_rank.val hlt case_000004_mask := by
    change SourceChecks case_000004_support case_000004_rank.val hlt case_000004_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000004_rowsForKey :
    (generatedKey .c008).template.Rows (generatedKey .c008).support
      case_000004_rank.val case_000004_mask := by
  change EqEqPosVarFirstRows (generatedKey .c008).support case_000004_rank.val case_000004_mask
  rw [show (generatedKey .c008).support = case_000004_support by rfl]
  intro hlt
  exact (case_000004_shape hlt).2

private theorem case_000004_rowProducerApplies :
    (generatedRowProducer .c008).Applies (generatedKey .c008)
      case_000004_rank.val case_000004_mask := by
  exact ⟨rfl, case_000004_rowsForKey⟩

theorem case_000004_candidateFacts :
    CandidateFacts .c008 100805 ⟨30, by decide⟩ := by
  simpa [CandidateFacts, case_000004_rank, case_000004_mask] using
    And.intro case_000004_sourcePredicate case_000004_rowProducerApplies

/-- AP.16W shared candidate fact: rank `100805`, mask `31`. -/
private def case_000005_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000005_mask : SignMask := ⟨31, by decide⟩
private def case_000005_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000005_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000005_b : Vec3 Rat := { x := (-148/9), y := (68/9), z := (20/9) }
private def case_000005_firstLine : StrictLin2 := { a := (-37/15), b := (-37/15), c := (-27/5) }
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
private theorem case_000005_shape :
    EqEqPosVarFirst case_000005_support case_000005_rank.val case_000005_mask := by
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
  have case_000005_sourceChecks :
      SourceChecks case_000005_support case_000005_rank.val hlt case_000005_mask := by
    simp [SourceChecks, hseq, case_000005_support,
      checkTranslationConstraintSource, case_000005_seq, impactFace]
  have case_000005_rowFirst :
      EqEqPosRow (FirstLineAt case_000005_support case_000005_rank.val hlt case_000005_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000005_firstLine, EqEqPosRow]
  have case_000005_fixedSecond :
      FixedRow (SecondLineAt case_000005_support case_000005_rank.val hlt case_000005_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000005_secondLine, FixedRow]
  exact ⟨case_000005_sourceChecks, case_000005_rowFirst, case_000005_fixedSecond⟩

private theorem case_000005_checkedAtRank :
    case_000005_support.Checked
      (translationSeqAtRankMask case_000005_rank case_000005_mask)
      (translationBAtRankMask case_000005_rank case_000005_mask) :=
  eqEqPosVarFirst_checkedOn case_000005_support case_000005_rank.val case_000005_rank.isLt
    case_000005_mask case_000005_shape

private theorem case_000005_supportWitness
    (hlt : case_000005_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask)
        (translationBAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask) := by
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  exact ⟨case_000005_support, by simpa [hrank] using case_000005_checkedAtRank⟩

private theorem case_000005_sourcePredicate :
    (generatedSpec .c008).Predicate case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hshape := case_000005_shape hlt
  have hfirst : (generatedSpec .c008).first.Holds
      (translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000005_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c008).second.Holds
      (translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c008).support case_000005_rank.val hlt case_000005_mask := by
    change SourceChecks case_000005_support case_000005_rank.val hlt case_000005_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000005_rowsForKey :
    (generatedKey .c008).template.Rows (generatedKey .c008).support
      case_000005_rank.val case_000005_mask := by
  change EqEqPosVarFirstRows (generatedKey .c008).support case_000005_rank.val case_000005_mask
  rw [show (generatedKey .c008).support = case_000005_support by rfl]
  intro hlt
  exact (case_000005_shape hlt).2

private theorem case_000005_rowProducerApplies :
    (generatedRowProducer .c008).Applies (generatedKey .c008)
      case_000005_rank.val case_000005_mask := by
  exact ⟨rfl, case_000005_rowsForKey⟩

theorem case_000005_candidateFacts :
    CandidateFacts .c008 100805 ⟨31, by decide⟩ := by
  simpa [CandidateFacts, case_000005_rank, case_000005_mask] using
    And.intro case_000005_sourcePredicate case_000005_rowProducerApplies

/-- AP.16W shared candidate fact: rank `100805`, mask `59`. -/
private def case_000006_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000006_mask : SignMask := ⟨59, by decide⟩
private def case_000006_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000006_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000006_b : Vec3 Rat := { x := (-92/27), y := (460/27), z := (124/27) }
private def case_000006_firstLine : StrictLin2 := { a := 1, b := -1, c := (-145/23) }
private def case_000006_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

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
private theorem case_000006_shape :
    OppMinusOneVarFirst case_000006_support case_000006_rank.val case_000006_mask := by
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
  have case_000006_sourceChecks :
      SourceChecks case_000006_support case_000006_rank.val hlt case_000006_mask := by
    simp [SourceChecks, hseq, case_000006_support,
      checkTranslationConstraintSource, case_000006_seq, impactFace]
  have case_000006_rowFirst :
      OppNegRow (FirstLineAt case_000006_support case_000006_rank.val hlt case_000006_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000006_firstLine, OppNegRow]
  have case_000006_fixedSecond :
      FixedRow (SecondLineAt case_000006_support case_000006_rank.val hlt case_000006_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000006_secondLine, FixedRow]
  exact ⟨case_000006_sourceChecks, case_000006_rowFirst, case_000006_fixedSecond⟩

private theorem case_000006_checkedAtRank :
    case_000006_support.Checked
      (translationSeqAtRankMask case_000006_rank case_000006_mask)
      (translationBAtRankMask case_000006_rank case_000006_mask) :=
  oppMinusOneVarFirst_checkedOn case_000006_support case_000006_rank.val case_000006_rank.isLt
    case_000006_mask case_000006_shape

private theorem case_000006_supportWitness
    (hlt : case_000006_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask)
        (translationBAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask) := by
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  exact ⟨case_000006_support, by simpa [hrank] using case_000006_checkedAtRank⟩

private theorem case_000006_sourcePredicate :
    (generatedSpec .c004).Predicate case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hshape := case_000006_shape hlt
  have hfirst : (generatedSpec .c004).first.Holds
      (translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000006_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c004).second.Holds
      (translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c004).support case_000006_rank.val hlt case_000006_mask := by
    change SourceChecks case_000006_support case_000006_rank.val hlt case_000006_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000006_rowsForKey :
    (generatedKey .c004).template.Rows (generatedKey .c004).support
      case_000006_rank.val case_000006_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c004).support case_000006_rank.val case_000006_mask
  rw [show (generatedKey .c004).support = case_000006_support by rfl]
  intro hlt
  exact (case_000006_shape hlt).2

private theorem case_000006_rowProducerApplies :
    (generatedRowProducer .c004).Applies (generatedKey .c004)
      case_000006_rank.val case_000006_mask := by
  exact ⟨rfl, case_000006_rowsForKey⟩

theorem case_000006_candidateFacts :
    CandidateFacts .c004 100805 ⟨59, by decide⟩ := by
  simpa [CandidateFacts, case_000006_rank, case_000006_mask] using
    And.intro case_000006_sourcePredicate case_000006_rowProducerApplies

/-- AP.16W shared candidate fact: rank `100805`, mask `63`. -/
private def case_000007_rank : Fin numPairWords := ⟨100805, by decide⟩
private def case_000007_mask : SignMask := ⟨63, by decide⟩
private def case_000007_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d11m, PairId.dm11], by decide⟩
private def case_000007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def case_000007_seq : Step14 -> Face
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
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000007_b : Vec3 Rat := { x := (-100/9), y := (116/9), z := (68/9) }
private def case_000007_firstLine : StrictLin2 := { a := 1, b := 1, c := (-67/25) }
private def case_000007_secondLine : StrictLin2 := { a := -1, b := -1, c := 1 }

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
private theorem case_000007_shape :
    EqEqNegVarFirst case_000007_support case_000007_rank.val case_000007_mask := by
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
  have case_000007_sourceChecks :
      SourceChecks case_000007_support case_000007_rank.val hlt case_000007_mask := by
    simp [SourceChecks, hseq, case_000007_support,
      checkTranslationConstraintSource, case_000007_seq, impactFace]
  have case_000007_rowFirst :
      EqEqNegRow (FirstLineAt case_000007_support case_000007_rank.val hlt case_000007_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000007_firstLine, EqEqNegRow]
  have case_000007_fixedSecond :
      FixedRow (SecondLineAt case_000007_support case_000007_rank.val hlt case_000007_mask)
        (-1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000007_secondLine, FixedRow]
  exact ⟨case_000007_sourceChecks, case_000007_rowFirst, case_000007_fixedSecond⟩

private theorem case_000007_checkedAtRank :
    case_000007_support.Checked
      (translationSeqAtRankMask case_000007_rank case_000007_mask)
      (translationBAtRankMask case_000007_rank case_000007_mask) :=
  eqEqNegVarFirst_checkedOn case_000007_support case_000007_rank.val case_000007_rank.isLt
    case_000007_mask case_000007_shape

private theorem case_000007_supportWitness
    (hlt : case_000007_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask)
        (translationBAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask) := by
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  exact ⟨case_000007_support, by simpa [hrank] using case_000007_checkedAtRank⟩

private theorem case_000007_sourcePredicate :
    (generatedSpec .c006).Predicate case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hshape := case_000007_shape hlt
  have hfirst : (generatedSpec .c006).first.Holds
      (translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000007_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c006).second.Holds
      (translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c006).support case_000007_rank.val hlt case_000007_mask := by
    change SourceChecks case_000007_support case_000007_rank.val hlt case_000007_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000007_rowsForKey :
    (generatedKey .c006).template.Rows (generatedKey .c006).support
      case_000007_rank.val case_000007_mask := by
  change EqEqNegVarFirstRows (generatedKey .c006).support case_000007_rank.val case_000007_mask
  rw [show (generatedKey .c006).support = case_000007_support by rfl]
  intro hlt
  exact (case_000007_shape hlt).2

private theorem case_000007_rowProducerApplies :
    (generatedRowProducer .c006).Applies (generatedKey .c006)
      case_000007_rank.val case_000007_mask := by
  exact ⟨rfl, case_000007_rowsForKey⟩

theorem case_000007_candidateFacts :
    CandidateFacts .c006 100805 ⟨63, by decide⟩ := by
  simpa [CandidateFacts, case_000007_rank, case_000007_mask] using
    And.intro case_000007_sourcePredicate case_000007_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `9`. -/
private def case_000008_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000008_mask : SignMask := ⟨9, by decide⟩
private def case_000008_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000008_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000008_b : Vec3 Rat := { x := -4, y := 4, z := (-44/3) }
private def case_000008_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
private def case_000008_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
private theorem case_000008_shape :
    EqEqPosVarFirst case_000008_support case_000008_rank.val case_000008_mask := by
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
  have case_000008_sourceChecks :
      SourceChecks case_000008_support case_000008_rank.val hlt case_000008_mask := by
    simp [SourceChecks, hseq, case_000008_support,
      checkTranslationConstraintSource, case_000008_seq, impactFace]
  have case_000008_rowFirst :
      EqEqPosRow (FirstLineAt case_000008_support case_000008_rank.val hlt case_000008_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000008_firstLine, EqEqPosRow]
  have case_000008_fixedSecond :
      FixedRow (SecondLineAt case_000008_support case_000008_rank.val hlt case_000008_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000008_secondLine, FixedRow]
  exact ⟨case_000008_sourceChecks, case_000008_rowFirst, case_000008_fixedSecond⟩

private theorem case_000008_checkedAtRank :
    case_000008_support.Checked
      (translationSeqAtRankMask case_000008_rank case_000008_mask)
      (translationBAtRankMask case_000008_rank case_000008_mask) :=
  eqEqPosVarFirst_checkedOn case_000008_support case_000008_rank.val case_000008_rank.isLt
    case_000008_mask case_000008_shape

private theorem case_000008_supportWitness
    (hlt : case_000008_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask)
        (translationBAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask) := by
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  exact ⟨case_000008_support, by simpa [hrank] using case_000008_checkedAtRank⟩

private theorem case_000008_sourcePredicate :
    (generatedSpec .c010).Predicate case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hshape := case_000008_shape hlt
  have hfirst : (generatedSpec .c010).first.Holds
      (translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000008_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c010).second.Holds
      (translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c010).support case_000008_rank.val hlt case_000008_mask := by
    change SourceChecks case_000008_support case_000008_rank.val hlt case_000008_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000008_rowsForKey :
    (generatedKey .c010).template.Rows (generatedKey .c010).support
      case_000008_rank.val case_000008_mask := by
  change EqEqPosVarFirstRows (generatedKey .c010).support case_000008_rank.val case_000008_mask
  rw [show (generatedKey .c010).support = case_000008_support by rfl]
  intro hlt
  exact (case_000008_shape hlt).2

private theorem case_000008_rowProducerApplies :
    (generatedRowProducer .c010).Applies (generatedKey .c010)
      case_000008_rank.val case_000008_mask := by
  exact ⟨rfl, case_000008_rowsForKey⟩

theorem case_000008_candidateFacts :
    CandidateFacts .c010 129 ⟨9, by decide⟩ := by
  simpa [CandidateFacts, case_000008_rank, case_000008_mask] using
    And.intro case_000008_sourcePredicate case_000008_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `13`. -/
private def case_000009_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000009_mask : SignMask := ⟨13, by decide⟩
private def case_000009_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000009_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000009_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000009_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000009_secondLine : StrictLin2 := { a := (-3/28), b := (-3/28), c := (-3/14) }

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
private theorem case_000009_shape :
    EqEqPosVarSecond case_000009_support case_000009_rank.val case_000009_mask := by
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
  have case_000009_sourceChecks :
      SourceChecks case_000009_support case_000009_rank.val hlt case_000009_mask := by
    simp [SourceChecks, hseq, case_000009_support,
      checkTranslationConstraintSource, case_000009_seq, impactFace]
  have case_000009_fixedFirst :
      FixedRow (FirstLineAt case_000009_support case_000009_rank.val hlt case_000009_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000009_firstLine, FixedRow]
  have case_000009_rowSecond :
      EqEqPosRow (SecondLineAt case_000009_support case_000009_rank.val hlt case_000009_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000009_secondLine, EqEqPosRow]
  exact ⟨case_000009_sourceChecks, case_000009_fixedFirst, case_000009_rowSecond⟩

private theorem case_000009_checkedAtRank :
    case_000009_support.Checked
      (translationSeqAtRankMask case_000009_rank case_000009_mask)
      (translationBAtRankMask case_000009_rank case_000009_mask) :=
  eqEqPosVarSecond_checkedOn case_000009_support case_000009_rank.val case_000009_rank.isLt
    case_000009_mask case_000009_shape

private theorem case_000009_supportWitness
    (hlt : case_000009_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask)
        (translationBAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask) := by
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  exact ⟨case_000009_support, by simpa [hrank] using case_000009_checkedAtRank⟩

private theorem case_000009_sourcePredicate :
    (generatedSpec .c002).Predicate case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hshape := case_000009_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000009_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000009_rank.val hlt case_000009_mask := by
    change SourceChecks case_000009_support case_000009_rank.val hlt case_000009_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000009_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000009_rank.val case_000009_mask := by
  change EqEqPosVarSecondRows (generatedKey .c002).support case_000009_rank.val case_000009_mask
  rw [show (generatedKey .c002).support = case_000009_support by rfl]
  intro hlt
  exact (case_000009_shape hlt).2

private theorem case_000009_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000009_rank.val case_000009_mask := by
  exact ⟨rfl, case_000009_rowsForKey⟩

theorem case_000009_candidateFacts :
    CandidateFacts .c002 129 ⟨13, by decide⟩ := by
  simpa [CandidateFacts, case_000009_rank, case_000009_mask] using
    And.intro case_000009_sourcePredicate case_000009_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `18`. -/
private def case_000010_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000010_mask : SignMask := ⟨18, by decide⟩
private def case_000010_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000010_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000010_b : Vec3 Rat := { x := -4, y := (-44/3), z := 4 }
private def case_000010_firstLine : StrictLin2 := { a := -1, b := -1, c := (-13/3) }
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
private theorem case_000010_shape :
    EqEqPosVarFirst case_000010_support case_000010_rank.val case_000010_mask := by
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
  have case_000010_sourceChecks :
      SourceChecks case_000010_support case_000010_rank.val hlt case_000010_mask := by
    simp [SourceChecks, hseq, case_000010_support,
      checkTranslationConstraintSource, case_000010_seq, impactFace]
  have case_000010_rowFirst :
      EqEqPosRow (FirstLineAt case_000010_support case_000010_rank.val hlt case_000010_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000010_firstLine, EqEqPosRow]
  have case_000010_fixedSecond :
      FixedRow (SecondLineAt case_000010_support case_000010_rank.val hlt case_000010_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000010_secondLine, FixedRow]
  exact ⟨case_000010_sourceChecks, case_000010_rowFirst, case_000010_fixedSecond⟩

private theorem case_000010_checkedAtRank :
    case_000010_support.Checked
      (translationSeqAtRankMask case_000010_rank case_000010_mask)
      (translationBAtRankMask case_000010_rank case_000010_mask) :=
  eqEqPosVarFirst_checkedOn case_000010_support case_000010_rank.val case_000010_rank.isLt
    case_000010_mask case_000010_shape

private theorem case_000010_supportWitness
    (hlt : case_000010_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask)
        (translationBAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask) := by
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  exact ⟨case_000010_support, by simpa [hrank] using case_000010_checkedAtRank⟩

private theorem case_000010_sourcePredicate :
    (generatedSpec .c010).Predicate case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hshape := case_000010_shape hlt
  have hfirst : (generatedSpec .c010).first.Holds
      (translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000010_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c010).second.Holds
      (translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c010).support case_000010_rank.val hlt case_000010_mask := by
    change SourceChecks case_000010_support case_000010_rank.val hlt case_000010_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000010_rowsForKey :
    (generatedKey .c010).template.Rows (generatedKey .c010).support
      case_000010_rank.val case_000010_mask := by
  change EqEqPosVarFirstRows (generatedKey .c010).support case_000010_rank.val case_000010_mask
  rw [show (generatedKey .c010).support = case_000010_support by rfl]
  intro hlt
  exact (case_000010_shape hlt).2

private theorem case_000010_rowProducerApplies :
    (generatedRowProducer .c010).Applies (generatedKey .c010)
      case_000010_rank.val case_000010_mask := by
  exact ⟨rfl, case_000010_rowsForKey⟩

theorem case_000010_candidateFacts :
    CandidateFacts .c010 129 ⟨18, by decide⟩ := by
  simpa [CandidateFacts, case_000010_rank, case_000010_mask] using
    And.intro case_000010_sourcePredicate case_000010_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `22`. -/
private def case_000011_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000011_mask : SignMask := ⟨22, by decide⟩
private def case_000011_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000011_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000011_b : Vec3 Rat := { x := (-28/3), y := (-28/3), z := (28/3) }
private def case_000011_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000011_secondLine : StrictLin2 := { a := (-3/14), b := (-3/14), c := (-5/7) }

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
private theorem case_000011_shape :
    EqEqPosVarSecond case_000011_support case_000011_rank.val case_000011_mask := by
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
  have case_000011_sourceChecks :
      SourceChecks case_000011_support case_000011_rank.val hlt case_000011_mask := by
    simp [SourceChecks, hseq, case_000011_support,
      checkTranslationConstraintSource, case_000011_seq, impactFace]
  have case_000011_fixedFirst :
      FixedRow (FirstLineAt case_000011_support case_000011_rank.val hlt case_000011_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000011_firstLine, FixedRow]
  have case_000011_rowSecond :
      EqEqPosRow (SecondLineAt case_000011_support case_000011_rank.val hlt case_000011_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000011_secondLine, EqEqPosRow]
  exact ⟨case_000011_sourceChecks, case_000011_fixedFirst, case_000011_rowSecond⟩

private theorem case_000011_checkedAtRank :
    case_000011_support.Checked
      (translationSeqAtRankMask case_000011_rank case_000011_mask)
      (translationBAtRankMask case_000011_rank case_000011_mask) :=
  eqEqPosVarSecond_checkedOn case_000011_support case_000011_rank.val case_000011_rank.isLt
    case_000011_mask case_000011_shape

private theorem case_000011_supportWitness
    (hlt : case_000011_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask)
        (translationBAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask) := by
  have hrank : (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  exact ⟨case_000011_support, by simpa [hrank] using case_000011_checkedAtRank⟩

private theorem case_000011_sourcePredicate :
    (generatedSpec .c000).Predicate case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank : (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hshape := case_000011_shape hlt
  have hfirst : (generatedSpec .c000).first.Holds
      (translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000011_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c000).second.Holds
      (translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c000).support case_000011_rank.val hlt case_000011_mask := by
    change SourceChecks case_000011_support case_000011_rank.val hlt case_000011_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000011_rowsForKey :
    (generatedKey .c000).template.Rows (generatedKey .c000).support
      case_000011_rank.val case_000011_mask := by
  change EqEqPosVarSecondRows (generatedKey .c000).support case_000011_rank.val case_000011_mask
  rw [show (generatedKey .c000).support = case_000011_support by rfl]
  intro hlt
  exact (case_000011_shape hlt).2

private theorem case_000011_rowProducerApplies :
    (generatedRowProducer .c000).Applies (generatedKey .c000)
      case_000011_rank.val case_000011_mask := by
  exact ⟨rfl, case_000011_rowsForKey⟩

theorem case_000011_candidateFacts :
    CandidateFacts .c000 129 ⟨22, by decide⟩ := by
  simpa [CandidateFacts, case_000011_rank, case_000011_mask] using
    And.intro case_000011_sourcePredicate case_000011_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `24`. -/
private def case_000012_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000012_mask : SignMask := ⟨24, by decide⟩
private def case_000012_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000012_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000012_b : Vec3 Rat := { x := (-52/9), y := (-116/9), z := (-116/9) }
private def case_000012_firstLine : StrictLin2 := { a := -1, b := -1, c := (-103/13) }
private def case_000012_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
private theorem case_000012_shape :
    EqEqPosVarFirst case_000012_support case_000012_rank.val case_000012_mask := by
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
  have case_000012_sourceChecks :
      SourceChecks case_000012_support case_000012_rank.val hlt case_000012_mask := by
    simp [SourceChecks, hseq, case_000012_support,
      checkTranslationConstraintSource, case_000012_seq, impactFace]
  have case_000012_rowFirst :
      EqEqPosRow (FirstLineAt case_000012_support case_000012_rank.val hlt case_000012_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000012_firstLine, EqEqPosRow]
  have case_000012_fixedSecond :
      FixedRow (SecondLineAt case_000012_support case_000012_rank.val hlt case_000012_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000012_secondLine, FixedRow]
  exact ⟨case_000012_sourceChecks, case_000012_rowFirst, case_000012_fixedSecond⟩

private theorem case_000012_checkedAtRank :
    case_000012_support.Checked
      (translationSeqAtRankMask case_000012_rank case_000012_mask)
      (translationBAtRankMask case_000012_rank case_000012_mask) :=
  eqEqPosVarFirst_checkedOn case_000012_support case_000012_rank.val case_000012_rank.isLt
    case_000012_mask case_000012_shape

private theorem case_000012_supportWitness
    (hlt : case_000012_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask)
        (translationBAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask) := by
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  exact ⟨case_000012_support, by simpa [hrank] using case_000012_checkedAtRank⟩

private theorem case_000012_sourcePredicate :
    (generatedSpec .c010).Predicate case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hshape := case_000012_shape hlt
  have hfirst : (generatedSpec .c010).first.Holds
      (translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000012_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c010).second.Holds
      (translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c010).support case_000012_rank.val hlt case_000012_mask := by
    change SourceChecks case_000012_support case_000012_rank.val hlt case_000012_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000012_rowsForKey :
    (generatedKey .c010).template.Rows (generatedKey .c010).support
      case_000012_rank.val case_000012_mask := by
  change EqEqPosVarFirstRows (generatedKey .c010).support case_000012_rank.val case_000012_mask
  rw [show (generatedKey .c010).support = case_000012_support by rfl]
  intro hlt
  exact (case_000012_shape hlt).2

private theorem case_000012_rowProducerApplies :
    (generatedRowProducer .c010).Applies (generatedKey .c010)
      case_000012_rank.val case_000012_mask := by
  exact ⟨rfl, case_000012_rowsForKey⟩

theorem case_000012_candidateFacts :
    CandidateFacts .c010 129 ⟨24, by decide⟩ := by
  simpa [CandidateFacts, case_000012_rank, case_000012_mask] using
    And.intro case_000012_sourcePredicate case_000012_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `29`. -/
private def case_000013_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000013_mask : SignMask := ⟨29, by decide⟩
private def case_000013_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000013_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000013_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (-68/9) }
private def case_000013_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-89/9) }
private def case_000013_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
private theorem case_000013_shape :
    EqEqPosVarFirst case_000013_support case_000013_rank.val case_000013_mask := by
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
  have case_000013_sourceChecks :
      SourceChecks case_000013_support case_000013_rank.val hlt case_000013_mask := by
    simp [SourceChecks, hseq, case_000013_support,
      checkTranslationConstraintSource, case_000013_seq, impactFace]
  have case_000013_rowFirst :
      EqEqPosRow (FirstLineAt case_000013_support case_000013_rank.val hlt case_000013_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000013_firstLine, EqEqPosRow]
  have case_000013_fixedSecond :
      FixedRow (SecondLineAt case_000013_support case_000013_rank.val hlt case_000013_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000013_secondLine, FixedRow]
  exact ⟨case_000013_sourceChecks, case_000013_rowFirst, case_000013_fixedSecond⟩

private theorem case_000013_checkedAtRank :
    case_000013_support.Checked
      (translationSeqAtRankMask case_000013_rank case_000013_mask)
      (translationBAtRankMask case_000013_rank case_000013_mask) :=
  eqEqPosVarFirst_checkedOn case_000013_support case_000013_rank.val case_000013_rank.isLt
    case_000013_mask case_000013_shape

private theorem case_000013_supportWitness
    (hlt : case_000013_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask)
        (translationBAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask) := by
  have hrank : (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  exact ⟨case_000013_support, by simpa [hrank] using case_000013_checkedAtRank⟩

private theorem case_000013_sourcePredicate :
    (generatedSpec .c001).Predicate case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank : (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hshape := case_000013_shape hlt
  have hfirst : (generatedSpec .c001).first.Holds
      (translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000013_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c001).second.Holds
      (translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c001).support case_000013_rank.val hlt case_000013_mask := by
    change SourceChecks case_000013_support case_000013_rank.val hlt case_000013_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000013_rowsForKey :
    (generatedKey .c001).template.Rows (generatedKey .c001).support
      case_000013_rank.val case_000013_mask := by
  change EqEqPosVarFirstRows (generatedKey .c001).support case_000013_rank.val case_000013_mask
  rw [show (generatedKey .c001).support = case_000013_support by rfl]
  intro hlt
  exact (case_000013_shape hlt).2

private theorem case_000013_rowProducerApplies :
    (generatedRowProducer .c001).Applies (generatedKey .c001)
      case_000013_rank.val case_000013_mask := by
  exact ⟨rfl, case_000013_rowsForKey⟩

theorem case_000013_candidateFacts :
    CandidateFacts .c001 129 ⟨29, by decide⟩ := by
  simpa [CandidateFacts, case_000013_rank, case_000013_mask] using
    And.intro case_000013_sourcePredicate case_000013_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `30`. -/
private def case_000014_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000014_mask : SignMask := ⟨30, by decide⟩
private def case_000014_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000014_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000014_b : Vec3 Rat := { x := (-100/9), y := (-68/9), z := (4/9) }
private def case_000014_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-89/9) }
private def case_000014_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
private theorem case_000014_shape :
    EqEqPosVarFirst case_000014_support case_000014_rank.val case_000014_mask := by
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
  have case_000014_sourceChecks :
      SourceChecks case_000014_support case_000014_rank.val hlt case_000014_mask := by
    simp [SourceChecks, hseq, case_000014_support,
      checkTranslationConstraintSource, case_000014_seq, impactFace]
  have case_000014_rowFirst :
      EqEqPosRow (FirstLineAt case_000014_support case_000014_rank.val hlt case_000014_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000014_firstLine, EqEqPosRow]
  have case_000014_fixedSecond :
      FixedRow (SecondLineAt case_000014_support case_000014_rank.val hlt case_000014_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000014_secondLine, FixedRow]
  exact ⟨case_000014_sourceChecks, case_000014_rowFirst, case_000014_fixedSecond⟩

private theorem case_000014_checkedAtRank :
    case_000014_support.Checked
      (translationSeqAtRankMask case_000014_rank case_000014_mask)
      (translationBAtRankMask case_000014_rank case_000014_mask) :=
  eqEqPosVarFirst_checkedOn case_000014_support case_000014_rank.val case_000014_rank.isLt
    case_000014_mask case_000014_shape

private theorem case_000014_supportWitness
    (hlt : case_000014_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask)
        (translationBAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask) := by
  have hrank : (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  exact ⟨case_000014_support, by simpa [hrank] using case_000014_checkedAtRank⟩

private theorem case_000014_sourcePredicate :
    (generatedSpec .c001).Predicate case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank : (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hshape := case_000014_shape hlt
  have hfirst : (generatedSpec .c001).first.Holds
      (translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000014_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c001).second.Holds
      (translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c001).support case_000014_rank.val hlt case_000014_mask := by
    change SourceChecks case_000014_support case_000014_rank.val hlt case_000014_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000014_rowsForKey :
    (generatedKey .c001).template.Rows (generatedKey .c001).support
      case_000014_rank.val case_000014_mask := by
  change EqEqPosVarFirstRows (generatedKey .c001).support case_000014_rank.val case_000014_mask
  rw [show (generatedKey .c001).support = case_000014_support by rfl]
  intro hlt
  exact (case_000014_shape hlt).2

private theorem case_000014_rowProducerApplies :
    (generatedRowProducer .c001).Applies (generatedKey .c001)
      case_000014_rank.val case_000014_mask := by
  exact ⟨rfl, case_000014_rowsForKey⟩

theorem case_000014_candidateFacts :
    CandidateFacts .c001 129 ⟨30, by decide⟩ := by
  simpa [CandidateFacts, case_000014_rank, case_000014_mask] using
    And.intro case_000014_sourcePredicate case_000014_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `31`. -/
private def case_000015_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000015_mask : SignMask := ⟨31, by decide⟩
private def case_000015_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def case_000015_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tpmm
  | ⟨13, _⟩ => Face.tmpp
private def case_000015_b : Vec3 Rat := { x := (-100/9), y := (4/9), z := (4/9) }
private def case_000015_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000015_secondLine : StrictLin2 := { a := (-25/138), b := (-25/138), c := (-136/207) }

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
private theorem case_000015_shape :
    EqEqPosVarSecond case_000015_support case_000015_rank.val case_000015_mask := by
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
  have case_000015_sourceChecks :
      SourceChecks case_000015_support case_000015_rank.val hlt case_000015_mask := by
    simp [SourceChecks, hseq, case_000015_support,
      checkTranslationConstraintSource, case_000015_seq, impactFace]
  have case_000015_fixedFirst :
      FixedRow (FirstLineAt case_000015_support case_000015_rank.val hlt case_000015_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000015_firstLine, FixedRow]
  have case_000015_rowSecond :
      EqEqPosRow (SecondLineAt case_000015_support case_000015_rank.val hlt case_000015_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000015_secondLine, EqEqPosRow]
  exact ⟨case_000015_sourceChecks, case_000015_fixedFirst, case_000015_rowSecond⟩

private theorem case_000015_checkedAtRank :
    case_000015_support.Checked
      (translationSeqAtRankMask case_000015_rank case_000015_mask)
      (translationBAtRankMask case_000015_rank case_000015_mask) :=
  eqEqPosVarSecond_checkedOn case_000015_support case_000015_rank.val case_000015_rank.isLt
    case_000015_mask case_000015_shape

private theorem case_000015_supportWitness
    (hlt : case_000015_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask)
        (translationBAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask) := by
  have hrank : (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  exact ⟨case_000015_support, by simpa [hrank] using case_000015_checkedAtRank⟩

private theorem case_000015_sourcePredicate :
    (generatedSpec .c000).Predicate case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank : (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hshape := case_000015_shape hlt
  have hfirst : (generatedSpec .c000).first.Holds
      (translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000015_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c000).second.Holds
      (translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c000).support case_000015_rank.val hlt case_000015_mask := by
    change SourceChecks case_000015_support case_000015_rank.val hlt case_000015_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000015_rowsForKey :
    (generatedKey .c000).template.Rows (generatedKey .c000).support
      case_000015_rank.val case_000015_mask := by
  change EqEqPosVarSecondRows (generatedKey .c000).support case_000015_rank.val case_000015_mask
  rw [show (generatedKey .c000).support = case_000015_support by rfl]
  intro hlt
  exact (case_000015_shape hlt).2

private theorem case_000015_rowProducerApplies :
    (generatedRowProducer .c000).Applies (generatedKey .c000)
      case_000015_rank.val case_000015_mask := by
  exact ⟨rfl, case_000015_rowsForKey⟩

theorem case_000015_candidateFacts :
    CandidateFacts .c000 129 ⟨31, by decide⟩ := by
  simpa [CandidateFacts, case_000015_rank, case_000015_mask] using
    And.intro case_000015_sourcePredicate case_000015_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `39`. -/
private def case_000016_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000016_mask : SignMask := ⟨39, by decide⟩
private def case_000016_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def case_000016_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000016_b : Vec3 Rat := { x := (-20/9), y := (116/9), z := (116/9) }
private def case_000016_firstLine : StrictLin2 := { a := 1, b := -1, c := 1 }
private def case_000016_secondLine : StrictLin2 := { a := (-9/116), b := (9/116), c := (-9/58) }

private theorem case_000016_rankWord :
    rankPairWord? case_000016_word = some case_000016_rank := by
  decide

private theorem case_000016_unrank :
    unrankPairWord case_000016_rank = case_000016_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000016_word case_000016_rank).1
    case_000016_rankWord |>.symm

private theorem case_000016_seqChoice :
    translationChoiceSeq case_000016_word case_000016_mask = case_000016_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000016_seqAtRank :
    translationSeqAtRankMask case_000016_rank case_000016_mask = case_000016_seq := by
  rw [translationSeqAtRankMask, case_000016_unrank]
  exact case_000016_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000016_bAtRank :
    translationBAtRankMask case_000016_rank case_000016_mask = case_000016_b := by
  rw [translationBAtRankMask, case_000016_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000016_b, case_000016_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000016_firstLine_eq :
    case_000016_support.firstLine case_000016_seq case_000016_b = case_000016_firstLine := by
  norm_num [case_000016_firstLine, case_000016_support, case_000016_seq, case_000016_b,
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
private theorem case_000016_secondLine_eq :
    case_000016_support.secondLine case_000016_seq case_000016_b = case_000016_secondLine := by
  norm_num [case_000016_secondLine, case_000016_support, case_000016_seq, case_000016_b,
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
private theorem case_000016_shape :
    OppOneMinusVarSecond case_000016_support case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank : (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_b := by
    simpa [hrank] using case_000016_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000016_support case_000016_rank.val hlt
          case_000016_mask = case_000016_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000016_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000016_support case_000016_rank.val hlt
          case_000016_mask = case_000016_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000016_secondLine_eq]
  have case_000016_sourceChecks :
      SourceChecks case_000016_support case_000016_rank.val hlt case_000016_mask := by
    simp [SourceChecks, hseq, case_000016_support,
      checkTranslationConstraintSource, case_000016_seq, impactFace]
  have case_000016_fixedFirst :
      FixedRow (FirstLineAt case_000016_support case_000016_rank.val hlt case_000016_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000016_firstLine, FixedRow]
  have case_000016_rowSecond :
      OppPosRow (SecondLineAt case_000016_support case_000016_rank.val hlt case_000016_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000016_secondLine, OppPosRow]
  exact ⟨case_000016_sourceChecks, case_000016_fixedFirst, case_000016_rowSecond⟩

private theorem case_000016_checkedAtRank :
    case_000016_support.Checked
      (translationSeqAtRankMask case_000016_rank case_000016_mask)
      (translationBAtRankMask case_000016_rank case_000016_mask) :=
  oppOneMinusVarSecond_checkedOn case_000016_support case_000016_rank.val case_000016_rank.isLt
    case_000016_mask case_000016_shape

private theorem case_000016_supportWitness
    (hlt : case_000016_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask)
        (translationBAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask) := by
  have hrank : (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  exact ⟨case_000016_support, by simpa [hrank] using case_000016_checkedAtRank⟩

private theorem case_000016_sourcePredicate :
    (generatedSpec .c005).Predicate case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank : (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  have hshape := case_000016_shape hlt
  have hfirst : (generatedSpec .c005).first.Holds
      (translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000016_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c005).second.Holds
      (translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c005).support case_000016_rank.val hlt case_000016_mask := by
    change SourceChecks case_000016_support case_000016_rank.val hlt case_000016_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000016_rowsForKey :
    (generatedKey .c005).template.Rows (generatedKey .c005).support
      case_000016_rank.val case_000016_mask := by
  change OppOneMinusVarSecondRows (generatedKey .c005).support case_000016_rank.val case_000016_mask
  rw [show (generatedKey .c005).support = case_000016_support by rfl]
  intro hlt
  exact (case_000016_shape hlt).2

private theorem case_000016_rowProducerApplies :
    (generatedRowProducer .c005).Applies (generatedKey .c005)
      case_000016_rank.val case_000016_mask := by
  exact ⟨rfl, case_000016_rowsForKey⟩

theorem case_000016_candidateFacts :
    CandidateFacts .c005 129 ⟨39, by decide⟩ := by
  simpa [CandidateFacts, case_000016_rank, case_000016_mask] using
    And.intro case_000016_sourcePredicate case_000016_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `45`. -/
private def case_000017_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000017_mask : SignMask := ⟨45, by decide⟩
private def case_000017_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000017_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpm
  | ⟨10, _⟩ => Face.tpmp
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000017_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000017_firstLine : StrictLin2 := { a := 1, b := -1, c := (-25/3) }
private def case_000017_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000017_rankWord :
    rankPairWord? case_000017_word = some case_000017_rank := by
  decide

private theorem case_000017_unrank :
    unrankPairWord case_000017_rank = case_000017_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000017_word case_000017_rank).1
    case_000017_rankWord |>.symm

private theorem case_000017_seqChoice :
    translationChoiceSeq case_000017_word case_000017_mask = case_000017_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000017_seqAtRank :
    translationSeqAtRankMask case_000017_rank case_000017_mask = case_000017_seq := by
  rw [translationSeqAtRankMask, case_000017_unrank]
  exact case_000017_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000017_bAtRank :
    translationBAtRankMask case_000017_rank case_000017_mask = case_000017_b := by
  rw [translationBAtRankMask, case_000017_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000017_b, case_000017_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000017_firstLine_eq :
    case_000017_support.firstLine case_000017_seq case_000017_b = case_000017_firstLine := by
  norm_num [case_000017_firstLine, case_000017_support, case_000017_seq, case_000017_b,
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
private theorem case_000017_secondLine_eq :
    case_000017_support.secondLine case_000017_seq case_000017_b = case_000017_secondLine := by
  norm_num [case_000017_secondLine, case_000017_support, case_000017_seq, case_000017_b,
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
private theorem case_000017_shape :
    OppMinusOneVarFirst case_000017_support case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank : (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_b := by
    simpa [hrank] using case_000017_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000017_support case_000017_rank.val hlt
          case_000017_mask = case_000017_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000017_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000017_support case_000017_rank.val hlt
          case_000017_mask = case_000017_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000017_secondLine_eq]
  have case_000017_sourceChecks :
      SourceChecks case_000017_support case_000017_rank.val hlt case_000017_mask := by
    simp [SourceChecks, hseq, case_000017_support,
      checkTranslationConstraintSource, case_000017_seq, impactFace]
  have case_000017_rowFirst :
      OppNegRow (FirstLineAt case_000017_support case_000017_rank.val hlt case_000017_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000017_firstLine, OppNegRow]
  have case_000017_fixedSecond :
      FixedRow (SecondLineAt case_000017_support case_000017_rank.val hlt case_000017_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000017_secondLine, FixedRow]
  exact ⟨case_000017_sourceChecks, case_000017_rowFirst, case_000017_fixedSecond⟩

private theorem case_000017_checkedAtRank :
    case_000017_support.Checked
      (translationSeqAtRankMask case_000017_rank case_000017_mask)
      (translationBAtRankMask case_000017_rank case_000017_mask) :=
  oppMinusOneVarFirst_checkedOn case_000017_support case_000017_rank.val case_000017_rank.isLt
    case_000017_mask case_000017_shape

private theorem case_000017_supportWitness
    (hlt : case_000017_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask)
        (translationBAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask) := by
  have hrank : (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  exact ⟨case_000017_support, by simpa [hrank] using case_000017_checkedAtRank⟩

private theorem case_000017_sourcePredicate :
    (generatedSpec .c004).Predicate case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank : (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  have hshape := case_000017_shape hlt
  have hfirst : (generatedSpec .c004).first.Holds
      (translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000017_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c004).second.Holds
      (translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c004).support case_000017_rank.val hlt case_000017_mask := by
    change SourceChecks case_000017_support case_000017_rank.val hlt case_000017_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000017_rowsForKey :
    (generatedKey .c004).template.Rows (generatedKey .c004).support
      case_000017_rank.val case_000017_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c004).support case_000017_rank.val case_000017_mask
  rw [show (generatedKey .c004).support = case_000017_support by rfl]
  intro hlt
  exact (case_000017_shape hlt).2

private theorem case_000017_rowProducerApplies :
    (generatedRowProducer .c004).Applies (generatedKey .c004)
      case_000017_rank.val case_000017_mask := by
  exact ⟨rfl, case_000017_rowsForKey⟩

theorem case_000017_candidateFacts :
    CandidateFacts .c004 129 ⟨45, by decide⟩ := by
  simpa [CandidateFacts, case_000017_rank, case_000017_mask] using
    And.intro case_000017_sourcePredicate case_000017_rowProducerApplies

/-- AP.16W shared candidate fact: rank `129`, mask `54`. -/
private def case_000018_rank : Fin numPairWords := ⟨129, by decide⟩
private def case_000018_mask : SignMask := ⟨54, by decide⟩
private def case_000018_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11], by decide⟩
private def case_000018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000018_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tmmm
  | ⟨12, _⟩ => Face.tmpp
  | ⟨13, _⟩ => Face.tpmm
private def case_000018_b : Vec3 Rat := { x := -4, y := -4, z := (44/3) }
private def case_000018_firstLine : StrictLin2 := { a := -1, b := 1, c := (-25/3) }
private def case_000018_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000018_rankWord :
    rankPairWord? case_000018_word = some case_000018_rank := by
  decide

private theorem case_000018_unrank :
    unrankPairWord case_000018_rank = case_000018_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000018_word case_000018_rank).1
    case_000018_rankWord |>.symm

private theorem case_000018_seqChoice :
    translationChoiceSeq case_000018_word case_000018_mask = case_000018_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000018_seqAtRank :
    translationSeqAtRankMask case_000018_rank case_000018_mask = case_000018_seq := by
  rw [translationSeqAtRankMask, case_000018_unrank]
  exact case_000018_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000018_bAtRank :
    translationBAtRankMask case_000018_rank case_000018_mask = case_000018_b := by
  rw [translationBAtRankMask, case_000018_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000018_b, case_000018_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000018_firstLine_eq :
    case_000018_support.firstLine case_000018_seq case_000018_b = case_000018_firstLine := by
  norm_num [case_000018_firstLine, case_000018_support, case_000018_seq, case_000018_b,
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
private theorem case_000018_secondLine_eq :
    case_000018_support.secondLine case_000018_seq case_000018_b = case_000018_secondLine := by
  norm_num [case_000018_secondLine, case_000018_support, case_000018_seq, case_000018_b,
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
private theorem case_000018_shape :
    OppOneMinusVarFirst case_000018_support case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank : (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_b := by
    simpa [hrank] using case_000018_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000018_support case_000018_rank.val hlt
          case_000018_mask = case_000018_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000018_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000018_support case_000018_rank.val hlt
          case_000018_mask = case_000018_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000018_secondLine_eq]
  have case_000018_sourceChecks :
      SourceChecks case_000018_support case_000018_rank.val hlt case_000018_mask := by
    simp [SourceChecks, hseq, case_000018_support,
      checkTranslationConstraintSource, case_000018_seq, impactFace]
  have case_000018_rowFirst :
      OppPosRow (FirstLineAt case_000018_support case_000018_rank.val hlt case_000018_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000018_firstLine, OppPosRow]
  have case_000018_fixedSecond :
      FixedRow (SecondLineAt case_000018_support case_000018_rank.val hlt case_000018_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000018_secondLine, FixedRow]
  exact ⟨case_000018_sourceChecks, case_000018_rowFirst, case_000018_fixedSecond⟩

private theorem case_000018_checkedAtRank :
    case_000018_support.Checked
      (translationSeqAtRankMask case_000018_rank case_000018_mask)
      (translationBAtRankMask case_000018_rank case_000018_mask) :=
  oppOneMinusVarFirst_checkedOn case_000018_support case_000018_rank.val case_000018_rank.isLt
    case_000018_mask case_000018_shape

private theorem case_000018_supportWitness
    (hlt : case_000018_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask)
        (translationBAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask) := by
  have hrank : (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  exact ⟨case_000018_support, by simpa [hrank] using case_000018_checkedAtRank⟩

private theorem case_000018_sourcePredicate :
    (generatedSpec .c009).Predicate case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank : (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  have hshape := case_000018_shape hlt
  have hfirst : (generatedSpec .c009).first.Holds
      (translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000018_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c009).second.Holds
      (translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c009).support case_000018_rank.val hlt case_000018_mask := by
    change SourceChecks case_000018_support case_000018_rank.val hlt case_000018_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000018_rowsForKey :
    (generatedKey .c009).template.Rows (generatedKey .c009).support
      case_000018_rank.val case_000018_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c009).support case_000018_rank.val case_000018_mask
  rw [show (generatedKey .c009).support = case_000018_support by rfl]
  intro hlt
  exact (case_000018_shape hlt).2

private theorem case_000018_rowProducerApplies :
    (generatedRowProducer .c009).Applies (generatedKey .c009)
      case_000018_rank.val case_000018_mask := by
  exact ⟨rfl, case_000018_rowsForKey⟩

theorem case_000018_candidateFacts :
    CandidateFacts .c009 129 ⟨54, by decide⟩ := by
  simpa [CandidateFacts, case_000018_rank, case_000018_mask] using
    And.intro case_000018_sourcePredicate case_000018_rowProducerApplies

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedCandidateFactsSmoke
