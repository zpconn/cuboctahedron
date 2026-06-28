import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated 6Z.6K.8AP.16AP shared candidate facts smoke.

This module exports reusable source/row candidate facts for a small
multi-signature AP.16 smoke. It is diagnostic only.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke

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
  | c011
  | c012
deriving DecidableEq, Repr

def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
  | .c000 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c001 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c002 => {
      first := SourcePositionSpec.interior ⟨2, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c003 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c004 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c005 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c006 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c007 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c008 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c009 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmp 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c010 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c011 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c012 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }

def generatedKey : GeneratedCandidate -> SourceIndexStateKey
  | .c000 => {
      firstIndex := (generatedSpec .c000).first.index
      secondIndex := (generatedSpec .c000).second.index
      support := (generatedSpec .c000).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c001 => {
      firstIndex := (generatedSpec .c001).first.index
      secondIndex := (generatedSpec .c001).second.index
      support := (generatedSpec .c001).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c002 => {
      firstIndex := (generatedSpec .c002).first.index
      secondIndex := (generatedSpec .c002).second.index
      support := (generatedSpec .c002).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c003 => {
      firstIndex := (generatedSpec .c003).first.index
      secondIndex := (generatedSpec .c003).second.index
      support := (generatedSpec .c003).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c004 => {
      firstIndex := (generatedSpec .c004).first.index
      secondIndex := (generatedSpec .c004).second.index
      support := (generatedSpec .c004).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c005 => {
      firstIndex := (generatedSpec .c005).first.index
      secondIndex := (generatedSpec .c005).second.index
      support := (generatedSpec .c005).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c006 => {
      firstIndex := (generatedSpec .c006).first.index
      secondIndex := (generatedSpec .c006).second.index
      support := (generatedSpec .c006).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c007 => {
      firstIndex := (generatedSpec .c007).first.index
      secondIndex := (generatedSpec .c007).second.index
      support := (generatedSpec .c007).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
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
  | .c011 => {
      firstIndex := (generatedSpec .c011).first.index
      secondIndex := (generatedSpec .c011).second.index
      support := (generatedSpec .c011).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c012 => {
      firstIndex := (generatedSpec .c012).first.index
      secondIndex := (generatedSpec .c012).second.index
      support := (generatedSpec .c012).support
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
  | .c011 => {
      Applies := fun key rank mask =>
        key = generatedKey .c011 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c012 => {
      Applies := fun key rank mask =>
        key = generatedKey .c012 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }

def CandidateFacts (candidate : GeneratedCandidate) (rank : Nat) (mask : SignMask) : Prop :=
  (generatedSpec candidate).Predicate rank mask /\
    (generatedRowProducer candidate).Applies (generatedKey candidate) rank mask

/-- AP.16W shared candidate fact: rank `6000745`, mask `8`. -/
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
    CandidateFacts .c010 6000745 ⟨8, by decide⟩ := by
  simpa [CandidateFacts, case_000000_rank, case_000000_mask] using
    And.intro case_000000_sourcePredicate case_000000_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `13`. -/
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
private theorem case_000001_shape :
    OppOneMinusVarFirst case_000001_support case_000001_rank.val case_000001_mask := by
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
      OppPosRow (FirstLineAt case_000001_support case_000001_rank.val hlt case_000001_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000001_firstLine, OppPosRow]
  have case_000001_fixedSecond :
      FixedRow (SecondLineAt case_000001_support case_000001_rank.val hlt case_000001_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000001_secondLine, FixedRow]
  exact ⟨case_000001_sourceChecks, case_000001_rowFirst, case_000001_fixedSecond⟩

private theorem case_000001_checkedAtRank :
    case_000001_support.Checked
      (translationSeqAtRankMask case_000001_rank case_000001_mask)
      (translationBAtRankMask case_000001_rank case_000001_mask) :=
  oppOneMinusVarFirst_checkedOn case_000001_support case_000001_rank.val case_000001_rank.isLt
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
    (generatedSpec .c005).Predicate case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hshape := case_000001_shape hlt
  have hfirst : (generatedSpec .c005).first.Holds
      (translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000001_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c005).second.Holds
      (translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c005).support case_000001_rank.val hlt case_000001_mask := by
    change SourceChecks case_000001_support case_000001_rank.val hlt case_000001_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000001_rowsForKey :
    (generatedKey .c005).template.Rows (generatedKey .c005).support
      case_000001_rank.val case_000001_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c005).support case_000001_rank.val case_000001_mask
  rw [show (generatedKey .c005).support = case_000001_support by rfl]
  intro hlt
  exact (case_000001_shape hlt).2

private theorem case_000001_rowProducerApplies :
    (generatedRowProducer .c005).Applies (generatedKey .c005)
      case_000001_rank.val case_000001_mask := by
  exact ⟨rfl, case_000001_rowsForKey⟩

theorem case_000001_candidateFacts :
    CandidateFacts .c005 6000745 ⟨13, by decide⟩ := by
  simpa [CandidateFacts, case_000001_rank, case_000001_mask] using
    And.intro case_000001_sourcePredicate case_000001_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `16`. -/
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
private theorem case_000002_shape :
    EqEqPosVarSecond case_000002_support case_000002_rank.val case_000002_mask := by
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
  have case_000002_fixedFirst :
      FixedRow (FirstLineAt case_000002_support case_000002_rank.val hlt case_000002_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000002_firstLine, FixedRow]
  have case_000002_rowSecond :
      EqEqPosRow (SecondLineAt case_000002_support case_000002_rank.val hlt case_000002_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000002_secondLine, EqEqPosRow]
  exact ⟨case_000002_sourceChecks, case_000002_fixedFirst, case_000002_rowSecond⟩

private theorem case_000002_checkedAtRank :
    case_000002_support.Checked
      (translationSeqAtRankMask case_000002_rank case_000002_mask)
      (translationBAtRankMask case_000002_rank case_000002_mask) :=
  eqEqPosVarSecond_checkedOn case_000002_support case_000002_rank.val case_000002_rank.isLt
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
    (generatedSpec .c011).Predicate case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hshape := case_000002_shape hlt
  have hfirst : (generatedSpec .c011).first.Holds
      (translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000002_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c011).second.Holds
      (translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c011).support case_000002_rank.val hlt case_000002_mask := by
    change SourceChecks case_000002_support case_000002_rank.val hlt case_000002_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000002_rowsForKey :
    (generatedKey .c011).template.Rows (generatedKey .c011).support
      case_000002_rank.val case_000002_mask := by
  change EqEqPosVarSecondRows (generatedKey .c011).support case_000002_rank.val case_000002_mask
  rw [show (generatedKey .c011).support = case_000002_support by rfl]
  intro hlt
  exact (case_000002_shape hlt).2

private theorem case_000002_rowProducerApplies :
    (generatedRowProducer .c011).Applies (generatedKey .c011)
      case_000002_rank.val case_000002_mask := by
  exact ⟨rfl, case_000002_rowsForKey⟩

theorem case_000002_candidateFacts :
    CandidateFacts .c011 6000745 ⟨16, by decide⟩ := by
  simpa [CandidateFacts, case_000002_rank, case_000002_mask] using
    And.intro case_000002_sourcePredicate case_000002_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `22`. -/
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
private theorem case_000003_shape :
    EqEqPosVarFirst case_000003_support case_000003_rank.val case_000003_mask := by
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
      EqEqPosRow (FirstLineAt case_000003_support case_000003_rank.val hlt case_000003_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000003_firstLine, EqEqPosRow]
  have case_000003_fixedSecond :
      FixedRow (SecondLineAt case_000003_support case_000003_rank.val hlt case_000003_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000003_secondLine, FixedRow]
  exact ⟨case_000003_sourceChecks, case_000003_rowFirst, case_000003_fixedSecond⟩

private theorem case_000003_checkedAtRank :
    case_000003_support.Checked
      (translationSeqAtRankMask case_000003_rank case_000003_mask)
      (translationBAtRankMask case_000003_rank case_000003_mask) :=
  eqEqPosVarFirst_checkedOn case_000003_support case_000003_rank.val case_000003_rank.isLt
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
    (generatedSpec .c000).Predicate case_000003_rank.val case_000003_mask := by
  intro hlt
  have hrank : (⟨case_000003_rank.val, hlt⟩ : Fin numPairWords) = case_000003_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask =
        case_000003_seq := by
    simpa [hrank] using case_000003_seqAtRank
  have hshape := case_000003_shape hlt
  have hfirst : (generatedSpec .c000).first.Holds
      (translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000003_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c000).second.Holds
      (translationSeqAtRankMask ⟨case_000003_rank.val, hlt⟩ case_000003_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c000).support case_000003_rank.val hlt case_000003_mask := by
    change SourceChecks case_000003_support case_000003_rank.val hlt case_000003_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000003_rowsForKey :
    (generatedKey .c000).template.Rows (generatedKey .c000).support
      case_000003_rank.val case_000003_mask := by
  change EqEqPosVarFirstRows (generatedKey .c000).support case_000003_rank.val case_000003_mask
  rw [show (generatedKey .c000).support = case_000003_support by rfl]
  intro hlt
  exact (case_000003_shape hlt).2

private theorem case_000003_rowProducerApplies :
    (generatedRowProducer .c000).Applies (generatedKey .c000)
      case_000003_rank.val case_000003_mask := by
  exact ⟨rfl, case_000003_rowsForKey⟩

theorem case_000003_candidateFacts :
    CandidateFacts .c000 6000745 ⟨22, by decide⟩ := by
  simpa [CandidateFacts, case_000003_rank, case_000003_mask] using
    And.intro case_000003_sourcePredicate case_000003_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `28`. -/
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
private theorem case_000004_shape :
    EqEqPosVarSecond case_000004_support case_000004_rank.val case_000004_mask := by
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
  have case_000004_fixedFirst :
      FixedRow (FirstLineAt case_000004_support case_000004_rank.val hlt case_000004_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000004_firstLine, FixedRow]
  have case_000004_rowSecond :
      EqEqPosRow (SecondLineAt case_000004_support case_000004_rank.val hlt case_000004_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000004_secondLine, EqEqPosRow]
  exact ⟨case_000004_sourceChecks, case_000004_fixedFirst, case_000004_rowSecond⟩

private theorem case_000004_checkedAtRank :
    case_000004_support.Checked
      (translationSeqAtRankMask case_000004_rank case_000004_mask)
      (translationBAtRankMask case_000004_rank case_000004_mask) :=
  eqEqPosVarSecond_checkedOn case_000004_support case_000004_rank.val case_000004_rank.isLt
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
    (generatedSpec .c004).Predicate case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hshape := case_000004_shape hlt
  have hfirst : (generatedSpec .c004).first.Holds
      (translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000004_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c004).second.Holds
      (translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c004).support case_000004_rank.val hlt case_000004_mask := by
    change SourceChecks case_000004_support case_000004_rank.val hlt case_000004_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000004_rowsForKey :
    (generatedKey .c004).template.Rows (generatedKey .c004).support
      case_000004_rank.val case_000004_mask := by
  change EqEqPosVarSecondRows (generatedKey .c004).support case_000004_rank.val case_000004_mask
  rw [show (generatedKey .c004).support = case_000004_support by rfl]
  intro hlt
  exact (case_000004_shape hlt).2

private theorem case_000004_rowProducerApplies :
    (generatedRowProducer .c004).Applies (generatedKey .c004)
      case_000004_rank.val case_000004_mask := by
  exact ⟨rfl, case_000004_rowsForKey⟩

theorem case_000004_candidateFacts :
    CandidateFacts .c004 6000745 ⟨28, by decide⟩ := by
  simpa [CandidateFacts, case_000004_rank, case_000004_mask] using
    And.intro case_000004_sourcePredicate case_000004_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `29`. -/
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
private theorem case_000005_shape :
    OppMinusOneVarFirst case_000005_support case_000005_rank.val case_000005_mask := by
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
      OppNegRow (FirstLineAt case_000005_support case_000005_rank.val hlt case_000005_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000005_firstLine, OppNegRow]
  have case_000005_fixedSecond :
      FixedRow (SecondLineAt case_000005_support case_000005_rank.val hlt case_000005_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000005_secondLine, FixedRow]
  exact ⟨case_000005_sourceChecks, case_000005_rowFirst, case_000005_fixedSecond⟩

private theorem case_000005_checkedAtRank :
    case_000005_support.Checked
      (translationSeqAtRankMask case_000005_rank case_000005_mask)
      (translationBAtRankMask case_000005_rank case_000005_mask) :=
  oppMinusOneVarFirst_checkedOn case_000005_support case_000005_rank.val case_000005_rank.isLt
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
    (generatedSpec .c002).Predicate case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hshape := case_000005_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000005_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000005_rank.val hlt case_000005_mask := by
    change SourceChecks case_000005_support case_000005_rank.val hlt case_000005_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000005_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000005_rank.val case_000005_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c002).support case_000005_rank.val case_000005_mask
  rw [show (generatedKey .c002).support = case_000005_support by rfl]
  intro hlt
  exact (case_000005_shape hlt).2

private theorem case_000005_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000005_rank.val case_000005_mask := by
  exact ⟨rfl, case_000005_rowsForKey⟩

theorem case_000005_candidateFacts :
    CandidateFacts .c002 6000745 ⟨29, by decide⟩ := by
  simpa [CandidateFacts, case_000005_rank, case_000005_mask] using
    And.intro case_000005_sourcePredicate case_000005_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `30`. -/
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
private theorem case_000006_shape :
    OppOneMinusVarFirst case_000006_support case_000006_rank.val case_000006_mask := by
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
      OppPosRow (FirstLineAt case_000006_support case_000006_rank.val hlt case_000006_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000006_firstLine, OppPosRow]
  have case_000006_fixedSecond :
      FixedRow (SecondLineAt case_000006_support case_000006_rank.val hlt case_000006_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000006_secondLine, FixedRow]
  exact ⟨case_000006_sourceChecks, case_000006_rowFirst, case_000006_fixedSecond⟩

private theorem case_000006_checkedAtRank :
    case_000006_support.Checked
      (translationSeqAtRankMask case_000006_rank case_000006_mask)
      (translationBAtRankMask case_000006_rank case_000006_mask) :=
  oppOneMinusVarFirst_checkedOn case_000006_support case_000006_rank.val case_000006_rank.isLt
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
    (generatedSpec .c007).Predicate case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hshape := case_000006_shape hlt
  have hfirst : (generatedSpec .c007).first.Holds
      (translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000006_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c007).second.Holds
      (translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c007).support case_000006_rank.val hlt case_000006_mask := by
    change SourceChecks case_000006_support case_000006_rank.val hlt case_000006_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000006_rowsForKey :
    (generatedKey .c007).template.Rows (generatedKey .c007).support
      case_000006_rank.val case_000006_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c007).support case_000006_rank.val case_000006_mask
  rw [show (generatedKey .c007).support = case_000006_support by rfl]
  intro hlt
  exact (case_000006_shape hlt).2

private theorem case_000006_rowProducerApplies :
    (generatedRowProducer .c007).Applies (generatedKey .c007)
      case_000006_rank.val case_000006_mask := by
  exact ⟨rfl, case_000006_rowsForKey⟩

theorem case_000006_candidateFacts :
    CandidateFacts .c007 6000745 ⟨30, by decide⟩ := by
  simpa [CandidateFacts, case_000006_rank, case_000006_mask] using
    And.intro case_000006_sourcePredicate case_000006_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `31`. -/
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
private theorem case_000007_shape :
    OppMinusOneVarFirst case_000007_support case_000007_rank.val case_000007_mask := by
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
      OppNegRow (FirstLineAt case_000007_support case_000007_rank.val hlt case_000007_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000007_firstLine, OppNegRow]
  have case_000007_fixedSecond :
      FixedRow (SecondLineAt case_000007_support case_000007_rank.val hlt case_000007_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000007_secondLine, FixedRow]
  exact ⟨case_000007_sourceChecks, case_000007_rowFirst, case_000007_fixedSecond⟩

private theorem case_000007_checkedAtRank :
    case_000007_support.Checked
      (translationSeqAtRankMask case_000007_rank case_000007_mask)
      (translationBAtRankMask case_000007_rank case_000007_mask) :=
  oppMinusOneVarFirst_checkedOn case_000007_support case_000007_rank.val case_000007_rank.isLt
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
    (generatedSpec .c002).Predicate case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hshape := case_000007_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000007_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000007_rank.val hlt case_000007_mask := by
    change SourceChecks case_000007_support case_000007_rank.val hlt case_000007_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000007_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000007_rank.val case_000007_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c002).support case_000007_rank.val case_000007_mask
  rw [show (generatedKey .c002).support = case_000007_support by rfl]
  intro hlt
  exact (case_000007_shape hlt).2

private theorem case_000007_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000007_rank.val case_000007_mask := by
  exact ⟨rfl, case_000007_rowsForKey⟩

theorem case_000007_candidateFacts :
    CandidateFacts .c002 6000745 ⟨31, by decide⟩ := by
  simpa [CandidateFacts, case_000007_rank, case_000007_mask] using
    And.intro case_000007_sourcePredicate case_000007_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `45`. -/
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
private theorem case_000008_shape :
    EqEqPosVarSecond case_000008_support case_000008_rank.val case_000008_mask := by
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
  have case_000008_fixedFirst :
      FixedRow (FirstLineAt case_000008_support case_000008_rank.val hlt case_000008_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000008_firstLine, FixedRow]
  have case_000008_rowSecond :
      EqEqPosRow (SecondLineAt case_000008_support case_000008_rank.val hlt case_000008_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000008_secondLine, EqEqPosRow]
  exact ⟨case_000008_sourceChecks, case_000008_fixedFirst, case_000008_rowSecond⟩

private theorem case_000008_checkedAtRank :
    case_000008_support.Checked
      (translationSeqAtRankMask case_000008_rank case_000008_mask)
      (translationBAtRankMask case_000008_rank case_000008_mask) :=
  eqEqPosVarSecond_checkedOn case_000008_support case_000008_rank.val case_000008_rank.isLt
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
    (generatedSpec .c011).Predicate case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hshape := case_000008_shape hlt
  have hfirst : (generatedSpec .c011).first.Holds
      (translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000008_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c011).second.Holds
      (translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c011).support case_000008_rank.val hlt case_000008_mask := by
    change SourceChecks case_000008_support case_000008_rank.val hlt case_000008_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000008_rowsForKey :
    (generatedKey .c011).template.Rows (generatedKey .c011).support
      case_000008_rank.val case_000008_mask := by
  change EqEqPosVarSecondRows (generatedKey .c011).support case_000008_rank.val case_000008_mask
  rw [show (generatedKey .c011).support = case_000008_support by rfl]
  intro hlt
  exact (case_000008_shape hlt).2

private theorem case_000008_rowProducerApplies :
    (generatedRowProducer .c011).Applies (generatedKey .c011)
      case_000008_rank.val case_000008_mask := by
  exact ⟨rfl, case_000008_rowsForKey⟩

theorem case_000008_candidateFacts :
    CandidateFacts .c011 6000745 ⟨45, by decide⟩ := by
  simpa [CandidateFacts, case_000008_rank, case_000008_mask] using
    And.intro case_000008_sourcePredicate case_000008_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `47`. -/
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
    (generatedSpec .c011).Predicate case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hshape := case_000009_shape hlt
  have hfirst : (generatedSpec .c011).first.Holds
      (translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000009_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c011).second.Holds
      (translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c011).support case_000009_rank.val hlt case_000009_mask := by
    change SourceChecks case_000009_support case_000009_rank.val hlt case_000009_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000009_rowsForKey :
    (generatedKey .c011).template.Rows (generatedKey .c011).support
      case_000009_rank.val case_000009_mask := by
  change EqEqPosVarSecondRows (generatedKey .c011).support case_000009_rank.val case_000009_mask
  rw [show (generatedKey .c011).support = case_000009_support by rfl]
  intro hlt
  exact (case_000009_shape hlt).2

private theorem case_000009_rowProducerApplies :
    (generatedRowProducer .c011).Applies (generatedKey .c011)
      case_000009_rank.val case_000009_mask := by
  exact ⟨rfl, case_000009_rowsForKey⟩

theorem case_000009_candidateFacts :
    CandidateFacts .c011 6000745 ⟨47, by decide⟩ := by
  simpa [CandidateFacts, case_000009_rank, case_000009_mask] using
    And.intro case_000009_sourcePredicate case_000009_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `54`. -/
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
private theorem case_000010_shape :
    OppOneMinusVarSecond case_000010_support case_000010_rank.val case_000010_mask := by
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
  have case_000010_fixedFirst :
      FixedRow (FirstLineAt case_000010_support case_000010_rank.val hlt case_000010_mask)
        (1) (-1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000010_firstLine, FixedRow]
  have case_000010_rowSecond :
      OppPosRow (SecondLineAt case_000010_support case_000010_rank.val hlt case_000010_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000010_secondLine, OppPosRow]
  exact ⟨case_000010_sourceChecks, case_000010_fixedFirst, case_000010_rowSecond⟩

private theorem case_000010_checkedAtRank :
    case_000010_support.Checked
      (translationSeqAtRankMask case_000010_rank case_000010_mask)
      (translationBAtRankMask case_000010_rank case_000010_mask) :=
  oppOneMinusVarSecond_checkedOn case_000010_support case_000010_rank.val case_000010_rank.isLt
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
    (generatedSpec .c001).Predicate case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hshape := case_000010_shape hlt
  have hfirst : (generatedSpec .c001).first.Holds
      (translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000010_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c001).second.Holds
      (translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c001).support case_000010_rank.val hlt case_000010_mask := by
    change SourceChecks case_000010_support case_000010_rank.val hlt case_000010_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000010_rowsForKey :
    (generatedKey .c001).template.Rows (generatedKey .c001).support
      case_000010_rank.val case_000010_mask := by
  change OppOneMinusVarSecondRows (generatedKey .c001).support case_000010_rank.val case_000010_mask
  rw [show (generatedKey .c001).support = case_000010_support by rfl]
  intro hlt
  exact (case_000010_shape hlt).2

private theorem case_000010_rowProducerApplies :
    (generatedRowProducer .c001).Applies (generatedKey .c001)
      case_000010_rank.val case_000010_mask := by
  exact ⟨rfl, case_000010_rowsForKey⟩

theorem case_000010_candidateFacts :
    CandidateFacts .c001 6000745 ⟨54, by decide⟩ := by
  simpa [CandidateFacts, case_000010_rank, case_000010_mask] using
    And.intro case_000010_sourcePredicate case_000010_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `55`. -/
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
private theorem case_000011_shape :
    OppOneMinusVarFirst case_000011_support case_000011_rank.val case_000011_mask := by
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
  have case_000011_rowFirst :
      OppPosRow (FirstLineAt case_000011_support case_000011_rank.val hlt case_000011_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000011_firstLine, OppPosRow]
  have case_000011_fixedSecond :
      FixedRow (SecondLineAt case_000011_support case_000011_rank.val hlt case_000011_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000011_secondLine, FixedRow]
  exact ⟨case_000011_sourceChecks, case_000011_rowFirst, case_000011_fixedSecond⟩

private theorem case_000011_checkedAtRank :
    case_000011_support.Checked
      (translationSeqAtRankMask case_000011_rank case_000011_mask)
      (translationBAtRankMask case_000011_rank case_000011_mask) :=
  oppOneMinusVarFirst_checkedOn case_000011_support case_000011_rank.val case_000011_rank.isLt
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
    (generatedSpec .c009).Predicate case_000011_rank.val case_000011_mask := by
  intro hlt
  have hrank : (⟨case_000011_rank.val, hlt⟩ : Fin numPairWords) = case_000011_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask =
        case_000011_seq := by
    simpa [hrank] using case_000011_seqAtRank
  have hshape := case_000011_shape hlt
  have hfirst : (generatedSpec .c009).first.Holds
      (translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000011_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c009).second.Holds
      (translationSeqAtRankMask ⟨case_000011_rank.val, hlt⟩ case_000011_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c009).support case_000011_rank.val hlt case_000011_mask := by
    change SourceChecks case_000011_support case_000011_rank.val hlt case_000011_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000011_rowsForKey :
    (generatedKey .c009).template.Rows (generatedKey .c009).support
      case_000011_rank.val case_000011_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c009).support case_000011_rank.val case_000011_mask
  rw [show (generatedKey .c009).support = case_000011_support by rfl]
  intro hlt
  exact (case_000011_shape hlt).2

private theorem case_000011_rowProducerApplies :
    (generatedRowProducer .c009).Applies (generatedKey .c009)
      case_000011_rank.val case_000011_mask := by
  exact ⟨rfl, case_000011_rowsForKey⟩

theorem case_000011_candidateFacts :
    CandidateFacts .c009 6000745 ⟨55, by decide⟩ := by
  simpa [CandidateFacts, case_000011_rank, case_000011_mask] using
    And.intro case_000011_sourcePredicate case_000011_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000745`, mask `63`. -/
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
private theorem case_000012_shape :
    OppMinusOneVarFirst case_000012_support case_000012_rank.val case_000012_mask := by
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
      OppNegRow (FirstLineAt case_000012_support case_000012_rank.val hlt case_000012_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000012_firstLine, OppNegRow]
  have case_000012_fixedSecond :
      FixedRow (SecondLineAt case_000012_support case_000012_rank.val hlt case_000012_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000012_secondLine, FixedRow]
  exact ⟨case_000012_sourceChecks, case_000012_rowFirst, case_000012_fixedSecond⟩

private theorem case_000012_checkedAtRank :
    case_000012_support.Checked
      (translationSeqAtRankMask case_000012_rank case_000012_mask)
      (translationBAtRankMask case_000012_rank case_000012_mask) :=
  oppMinusOneVarFirst_checkedOn case_000012_support case_000012_rank.val case_000012_rank.isLt
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
    (generatedSpec .c002).Predicate case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hshape := case_000012_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000012_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000012_rank.val hlt case_000012_mask := by
    change SourceChecks case_000012_support case_000012_rank.val hlt case_000012_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000012_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000012_rank.val case_000012_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c002).support case_000012_rank.val case_000012_mask
  rw [show (generatedKey .c002).support = case_000012_support by rfl]
  intro hlt
  exact (case_000012_shape hlt).2

private theorem case_000012_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000012_rank.val case_000012_mask := by
  exact ⟨rfl, case_000012_rowsForKey⟩

theorem case_000012_candidateFacts :
    CandidateFacts .c002 6000745 ⟨63, by decide⟩ := by
  simpa [CandidateFacts, case_000012_rank, case_000012_mask] using
    And.intro case_000012_sourcePredicate case_000012_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `8`. -/
private def case_000013_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000013_mask : SignMask := ⟨8, by decide⟩
private def case_000013_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def case_000013_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zp
private def case_000013_b : Vec3 Rat := { x := (-4/9), y := (-4/9), z := (-100/9) }
private def case_000013_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000013_secondLine : StrictLin2 := { a := (-1/42), b := (-1/42), c := (-10/63) }

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
    EqEqPosVarSecond case_000013_support case_000013_rank.val case_000013_mask := by
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
  have case_000013_fixedFirst :
      FixedRow (FirstLineAt case_000013_support case_000013_rank.val hlt case_000013_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000013_firstLine, FixedRow]
  have case_000013_rowSecond :
      EqEqPosRow (SecondLineAt case_000013_support case_000013_rank.val hlt case_000013_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000013_secondLine, EqEqPosRow]
  exact ⟨case_000013_sourceChecks, case_000013_fixedFirst, case_000013_rowSecond⟩

private theorem case_000013_checkedAtRank :
    case_000013_support.Checked
      (translationSeqAtRankMask case_000013_rank case_000013_mask)
      (translationBAtRankMask case_000013_rank case_000013_mask) :=
  eqEqPosVarSecond_checkedOn case_000013_support case_000013_rank.val case_000013_rank.isLt
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
    (generatedSpec .c011).Predicate case_000013_rank.val case_000013_mask := by
  intro hlt
  have hrank : (⟨case_000013_rank.val, hlt⟩ : Fin numPairWords) = case_000013_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask =
        case_000013_seq := by
    simpa [hrank] using case_000013_seqAtRank
  have hshape := case_000013_shape hlt
  have hfirst : (generatedSpec .c011).first.Holds
      (translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000013_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c011).second.Holds
      (translationSeqAtRankMask ⟨case_000013_rank.val, hlt⟩ case_000013_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c011).support case_000013_rank.val hlt case_000013_mask := by
    change SourceChecks case_000013_support case_000013_rank.val hlt case_000013_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000013_rowsForKey :
    (generatedKey .c011).template.Rows (generatedKey .c011).support
      case_000013_rank.val case_000013_mask := by
  change EqEqPosVarSecondRows (generatedKey .c011).support case_000013_rank.val case_000013_mask
  rw [show (generatedKey .c011).support = case_000013_support by rfl]
  intro hlt
  exact (case_000013_shape hlt).2

private theorem case_000013_rowProducerApplies :
    (generatedRowProducer .c011).Applies (generatedKey .c011)
      case_000013_rank.val case_000013_mask := by
  exact ⟨rfl, case_000013_rowsForKey⟩

theorem case_000013_candidateFacts :
    CandidateFacts .c011 6000625 ⟨8, by decide⟩ := by
  simpa [CandidateFacts, case_000013_rank, case_000013_mask] using
    And.intro case_000013_sourcePredicate case_000013_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `9`. -/
private def case_000014_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000014_mask : SignMask := ⟨9, by decide⟩
private def case_000014_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000014_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zp
private def case_000014_b : Vec3 Rat := { x := (-4/9), y := (68/9), z := (-100/9) }
private def case_000014_firstLine : StrictLin2 := { a := -1, b := -1, c := -15 }
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
    (generatedSpec .c010).Predicate case_000014_rank.val case_000014_mask := by
  intro hlt
  have hrank : (⟨case_000014_rank.val, hlt⟩ : Fin numPairWords) = case_000014_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask =
        case_000014_seq := by
    simpa [hrank] using case_000014_seqAtRank
  have hshape := case_000014_shape hlt
  have hfirst : (generatedSpec .c010).first.Holds
      (translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000014_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c010).second.Holds
      (translationSeqAtRankMask ⟨case_000014_rank.val, hlt⟩ case_000014_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c010).support case_000014_rank.val hlt case_000014_mask := by
    change SourceChecks case_000014_support case_000014_rank.val hlt case_000014_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000014_rowsForKey :
    (generatedKey .c010).template.Rows (generatedKey .c010).support
      case_000014_rank.val case_000014_mask := by
  change EqEqPosVarFirstRows (generatedKey .c010).support case_000014_rank.val case_000014_mask
  rw [show (generatedKey .c010).support = case_000014_support by rfl]
  intro hlt
  exact (case_000014_shape hlt).2

private theorem case_000014_rowProducerApplies :
    (generatedRowProducer .c010).Applies (generatedKey .c010)
      case_000014_rank.val case_000014_mask := by
  exact ⟨rfl, case_000014_rowsForKey⟩

theorem case_000014_candidateFacts :
    CandidateFacts .c010 6000625 ⟨9, by decide⟩ := by
  simpa [CandidateFacts, case_000014_rank, case_000014_mask] using
    And.intro case_000014_sourcePredicate case_000014_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `13`. -/
private def case_000015_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000015_mask : SignMask := ⟨13, by decide⟩
private def case_000015_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000015_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zp
private def case_000015_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (-28/3) }
private def case_000015_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
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
private theorem case_000015_shape :
    EqEqPosVarFirst case_000015_support case_000015_rank.val case_000015_mask := by
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
  have case_000015_rowFirst :
      EqEqPosRow (FirstLineAt case_000015_support case_000015_rank.val hlt case_000015_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000015_firstLine, EqEqPosRow]
  have case_000015_fixedSecond :
      FixedRow (SecondLineAt case_000015_support case_000015_rank.val hlt case_000015_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000015_secondLine, FixedRow]
  exact ⟨case_000015_sourceChecks, case_000015_rowFirst, case_000015_fixedSecond⟩

private theorem case_000015_checkedAtRank :
    case_000015_support.Checked
      (translationSeqAtRankMask case_000015_rank case_000015_mask)
      (translationBAtRankMask case_000015_rank case_000015_mask) :=
  eqEqPosVarFirst_checkedOn case_000015_support case_000015_rank.val case_000015_rank.isLt
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
    (generatedSpec .c012).Predicate case_000015_rank.val case_000015_mask := by
  intro hlt
  have hrank : (⟨case_000015_rank.val, hlt⟩ : Fin numPairWords) = case_000015_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask =
        case_000015_seq := by
    simpa [hrank] using case_000015_seqAtRank
  have hshape := case_000015_shape hlt
  have hfirst : (generatedSpec .c012).first.Holds
      (translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000015_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c012).second.Holds
      (translationSeqAtRankMask ⟨case_000015_rank.val, hlt⟩ case_000015_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c012).support case_000015_rank.val hlt case_000015_mask := by
    change SourceChecks case_000015_support case_000015_rank.val hlt case_000015_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000015_rowsForKey :
    (generatedKey .c012).template.Rows (generatedKey .c012).support
      case_000015_rank.val case_000015_mask := by
  change EqEqPosVarFirstRows (generatedKey .c012).support case_000015_rank.val case_000015_mask
  rw [show (generatedKey .c012).support = case_000015_support by rfl]
  intro hlt
  exact (case_000015_shape hlt).2

private theorem case_000015_rowProducerApplies :
    (generatedRowProducer .c012).Applies (generatedKey .c012)
      case_000015_rank.val case_000015_mask := by
  exact ⟨rfl, case_000015_rowsForKey⟩

theorem case_000015_candidateFacts :
    CandidateFacts .c012 6000625 ⟨13, by decide⟩ := by
  simpa [CandidateFacts, case_000015_rank, case_000015_mask] using
    And.intro case_000015_sourcePredicate case_000015_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `20`. -/
private def case_000016_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000016_mask : SignMask := ⟨20, by decide⟩
private def case_000016_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000016_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zp
private def case_000016_b : Vec3 Rat := { x := (-116/9), y := (-116/9), z := (-20/9) }
private def case_000016_firstLine : StrictLin2 := { a := -1, b := -1, c := (-39/29) }
private def case_000016_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
    EqEqPosVarFirst case_000016_support case_000016_rank.val case_000016_mask := by
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
  have case_000016_rowFirst :
      EqEqPosRow (FirstLineAt case_000016_support case_000016_rank.val hlt case_000016_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000016_firstLine, EqEqPosRow]
  have case_000016_fixedSecond :
      FixedRow (SecondLineAt case_000016_support case_000016_rank.val hlt case_000016_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000016_secondLine, FixedRow]
  exact ⟨case_000016_sourceChecks, case_000016_rowFirst, case_000016_fixedSecond⟩

private theorem case_000016_checkedAtRank :
    case_000016_support.Checked
      (translationSeqAtRankMask case_000016_rank case_000016_mask)
      (translationBAtRankMask case_000016_rank case_000016_mask) :=
  eqEqPosVarFirst_checkedOn case_000016_support case_000016_rank.val case_000016_rank.isLt
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
    (generatedSpec .c010).Predicate case_000016_rank.val case_000016_mask := by
  intro hlt
  have hrank : (⟨case_000016_rank.val, hlt⟩ : Fin numPairWords) = case_000016_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask =
        case_000016_seq := by
    simpa [hrank] using case_000016_seqAtRank
  have hshape := case_000016_shape hlt
  have hfirst : (generatedSpec .c010).first.Holds
      (translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000016_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c010).second.Holds
      (translationSeqAtRankMask ⟨case_000016_rank.val, hlt⟩ case_000016_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c010).support case_000016_rank.val hlt case_000016_mask := by
    change SourceChecks case_000016_support case_000016_rank.val hlt case_000016_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000016_rowsForKey :
    (generatedKey .c010).template.Rows (generatedKey .c010).support
      case_000016_rank.val case_000016_mask := by
  change EqEqPosVarFirstRows (generatedKey .c010).support case_000016_rank.val case_000016_mask
  rw [show (generatedKey .c010).support = case_000016_support by rfl]
  intro hlt
  exact (case_000016_shape hlt).2

private theorem case_000016_rowProducerApplies :
    (generatedRowProducer .c010).Applies (generatedKey .c010)
      case_000016_rank.val case_000016_mask := by
  exact ⟨rfl, case_000016_rowsForKey⟩

theorem case_000016_candidateFacts :
    CandidateFacts .c010 6000625 ⟨20, by decide⟩ := by
  simpa [CandidateFacts, case_000016_rank, case_000016_mask] using
    And.intro case_000016_sourcePredicate case_000016_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `22`. -/
private def case_000017_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000017_mask : SignMask := ⟨22, by decide⟩
private def case_000017_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000017_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.ym
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.yp
  | ⟨13, _⟩ => Face.zm
private def case_000017_b : Vec3 Rat := { x := (-116/9), y := (-116/9), z := (52/9) }
private def case_000017_firstLine : StrictLin2 := { a := (-58/45), b := (-58/45), c := (-196/135) }
private def case_000017_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
    EqEqPosVarFirst case_000017_support case_000017_rank.val case_000017_mask := by
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
      EqEqPosRow (FirstLineAt case_000017_support case_000017_rank.val hlt case_000017_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000017_firstLine, EqEqPosRow]
  have case_000017_fixedSecond :
      FixedRow (SecondLineAt case_000017_support case_000017_rank.val hlt case_000017_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000017_secondLine, FixedRow]
  exact ⟨case_000017_sourceChecks, case_000017_rowFirst, case_000017_fixedSecond⟩

private theorem case_000017_checkedAtRank :
    case_000017_support.Checked
      (translationSeqAtRankMask case_000017_rank case_000017_mask)
      (translationBAtRankMask case_000017_rank case_000017_mask) :=
  eqEqPosVarFirst_checkedOn case_000017_support case_000017_rank.val case_000017_rank.isLt
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
    (generatedSpec .c006).Predicate case_000017_rank.val case_000017_mask := by
  intro hlt
  have hrank : (⟨case_000017_rank.val, hlt⟩ : Fin numPairWords) = case_000017_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask =
        case_000017_seq := by
    simpa [hrank] using case_000017_seqAtRank
  have hshape := case_000017_shape hlt
  have hfirst : (generatedSpec .c006).first.Holds
      (translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000017_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c006).second.Holds
      (translationSeqAtRankMask ⟨case_000017_rank.val, hlt⟩ case_000017_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c006).support case_000017_rank.val hlt case_000017_mask := by
    change SourceChecks case_000017_support case_000017_rank.val hlt case_000017_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000017_rowsForKey :
    (generatedKey .c006).template.Rows (generatedKey .c006).support
      case_000017_rank.val case_000017_mask := by
  change EqEqPosVarFirstRows (generatedKey .c006).support case_000017_rank.val case_000017_mask
  rw [show (generatedKey .c006).support = case_000017_support by rfl]
  intro hlt
  exact (case_000017_shape hlt).2

private theorem case_000017_rowProducerApplies :
    (generatedRowProducer .c006).Applies (generatedKey .c006)
      case_000017_rank.val case_000017_mask := by
  exact ⟨rfl, case_000017_rowsForKey⟩

theorem case_000017_candidateFacts :
    CandidateFacts .c006 6000625 ⟨22, by decide⟩ := by
  simpa [CandidateFacts, case_000017_rank, case_000017_mask] using
    And.intro case_000017_sourcePredicate case_000017_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `29`. -/
private def case_000018_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000018_mask : SignMask := ⟨29, by decide⟩
private def case_000018_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000018_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zp
private def case_000018_b : Vec3 Rat := { x := (-44/3), y := 4, z := -4 }
private def case_000018_firstLine : StrictLin2 := { a := -1, b := -1, c := -1 }
private def case_000018_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

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
    EqEqPosVarFirst case_000018_support case_000018_rank.val case_000018_mask := by
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
      EqEqPosRow (FirstLineAt case_000018_support case_000018_rank.val hlt case_000018_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000018_firstLine, EqEqPosRow]
  have case_000018_fixedSecond :
      FixedRow (SecondLineAt case_000018_support case_000018_rank.val hlt case_000018_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000018_secondLine, FixedRow]
  exact ⟨case_000018_sourceChecks, case_000018_rowFirst, case_000018_fixedSecond⟩

private theorem case_000018_checkedAtRank :
    case_000018_support.Checked
      (translationSeqAtRankMask case_000018_rank case_000018_mask)
      (translationBAtRankMask case_000018_rank case_000018_mask) :=
  eqEqPosVarFirst_checkedOn case_000018_support case_000018_rank.val case_000018_rank.isLt
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
    (generatedSpec .c012).Predicate case_000018_rank.val case_000018_mask := by
  intro hlt
  have hrank : (⟨case_000018_rank.val, hlt⟩ : Fin numPairWords) = case_000018_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask =
        case_000018_seq := by
    simpa [hrank] using case_000018_seqAtRank
  have hshape := case_000018_shape hlt
  have hfirst : (generatedSpec .c012).first.Holds
      (translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000018_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c012).second.Holds
      (translationSeqAtRankMask ⟨case_000018_rank.val, hlt⟩ case_000018_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c012).support case_000018_rank.val hlt case_000018_mask := by
    change SourceChecks case_000018_support case_000018_rank.val hlt case_000018_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000018_rowsForKey :
    (generatedKey .c012).template.Rows (generatedKey .c012).support
      case_000018_rank.val case_000018_mask := by
  change EqEqPosVarFirstRows (generatedKey .c012).support case_000018_rank.val case_000018_mask
  rw [show (generatedKey .c012).support = case_000018_support by rfl]
  intro hlt
  exact (case_000018_shape hlt).2

private theorem case_000018_rowProducerApplies :
    (generatedRowProducer .c012).Applies (generatedKey .c012)
      case_000018_rank.val case_000018_mask := by
  exact ⟨rfl, case_000018_rowsForKey⟩

theorem case_000018_candidateFacts :
    CandidateFacts .c012 6000625 ⟨29, by decide⟩ := by
  simpa [CandidateFacts, case_000018_rank, case_000018_mask] using
    And.intro case_000018_sourcePredicate case_000018_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `31`. -/
private def case_000019_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000019_mask : SignMask := ⟨31, by decide⟩
private def case_000019_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000019_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000019_b : Vec3 Rat := { x := (-44/3), y := 4, z := 4 }
private def case_000019_firstLine : StrictLin2 := { a := 1, b := -1, c := -1 }
private def case_000019_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000019_rankWord :
    rankPairWord? case_000019_word = some case_000019_rank := by
  decide

private theorem case_000019_unrank :
    unrankPairWord case_000019_rank = case_000019_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000019_word case_000019_rank).1
    case_000019_rankWord |>.symm

private theorem case_000019_seqChoice :
    translationChoiceSeq case_000019_word case_000019_mask = case_000019_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000019_seqAtRank :
    translationSeqAtRankMask case_000019_rank case_000019_mask = case_000019_seq := by
  rw [translationSeqAtRankMask, case_000019_unrank]
  exact case_000019_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000019_bAtRank :
    translationBAtRankMask case_000019_rank case_000019_mask = case_000019_b := by
  rw [translationBAtRankMask, case_000019_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000019_b, case_000019_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000019_firstLine_eq :
    case_000019_support.firstLine case_000019_seq case_000019_b = case_000019_firstLine := by
  norm_num [case_000019_firstLine, case_000019_support, case_000019_seq, case_000019_b,
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
private theorem case_000019_secondLine_eq :
    case_000019_support.secondLine case_000019_seq case_000019_b = case_000019_secondLine := by
  norm_num [case_000019_secondLine, case_000019_support, case_000019_seq, case_000019_b,
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
private theorem case_000019_shape :
    OppMinusOneVarFirst case_000019_support case_000019_rank.val case_000019_mask := by
  intro hlt
  have hrank : (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_seq := by
    simpa [hrank] using case_000019_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_b := by
    simpa [hrank] using case_000019_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000019_support case_000019_rank.val hlt
          case_000019_mask = case_000019_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000019_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000019_support case_000019_rank.val hlt
          case_000019_mask = case_000019_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000019_secondLine_eq]
  have case_000019_sourceChecks :
      SourceChecks case_000019_support case_000019_rank.val hlt case_000019_mask := by
    simp [SourceChecks, hseq, case_000019_support,
      checkTranslationConstraintSource, case_000019_seq, impactFace]
  have case_000019_rowFirst :
      OppNegRow (FirstLineAt case_000019_support case_000019_rank.val hlt case_000019_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000019_firstLine, OppNegRow]
  have case_000019_fixedSecond :
      FixedRow (SecondLineAt case_000019_support case_000019_rank.val hlt case_000019_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000019_secondLine, FixedRow]
  exact ⟨case_000019_sourceChecks, case_000019_rowFirst, case_000019_fixedSecond⟩

private theorem case_000019_checkedAtRank :
    case_000019_support.Checked
      (translationSeqAtRankMask case_000019_rank case_000019_mask)
      (translationBAtRankMask case_000019_rank case_000019_mask) :=
  oppMinusOneVarFirst_checkedOn case_000019_support case_000019_rank.val case_000019_rank.isLt
    case_000019_mask case_000019_shape

private theorem case_000019_supportWitness
    (hlt : case_000019_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask)
        (translationBAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask) := by
  have hrank : (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  exact ⟨case_000019_support, by simpa [hrank] using case_000019_checkedAtRank⟩

private theorem case_000019_sourcePredicate :
    (generatedSpec .c002).Predicate case_000019_rank.val case_000019_mask := by
  intro hlt
  have hrank : (⟨case_000019_rank.val, hlt⟩ : Fin numPairWords) = case_000019_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask =
        case_000019_seq := by
    simpa [hrank] using case_000019_seqAtRank
  have hshape := case_000019_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000019_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000019_rank.val, hlt⟩ case_000019_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000019_rank.val hlt case_000019_mask := by
    change SourceChecks case_000019_support case_000019_rank.val hlt case_000019_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000019_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000019_rank.val case_000019_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c002).support case_000019_rank.val case_000019_mask
  rw [show (generatedKey .c002).support = case_000019_support by rfl]
  intro hlt
  exact (case_000019_shape hlt).2

private theorem case_000019_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000019_rank.val case_000019_mask := by
  exact ⟨rfl, case_000019_rowsForKey⟩

theorem case_000019_candidateFacts :
    CandidateFacts .c002 6000625 ⟨31, by decide⟩ := by
  simpa [CandidateFacts, case_000019_rank, case_000019_mask] using
    And.intro case_000019_sourcePredicate case_000019_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `45`. -/
private def case_000020_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000020_mask : SignMask := ⟨45, by decide⟩
private def case_000020_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def case_000020_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zp
private def case_000020_b : Vec3 Rat := { x := -4, y := (44/3), z := -4 }
private def case_000020_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000020_secondLine : StrictLin2 := { a := (-27/230), b := (-27/230), c := (-3/23) }

private theorem case_000020_rankWord :
    rankPairWord? case_000020_word = some case_000020_rank := by
  decide

private theorem case_000020_unrank :
    unrankPairWord case_000020_rank = case_000020_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000020_word case_000020_rank).1
    case_000020_rankWord |>.symm

private theorem case_000020_seqChoice :
    translationChoiceSeq case_000020_word case_000020_mask = case_000020_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000020_seqAtRank :
    translationSeqAtRankMask case_000020_rank case_000020_mask = case_000020_seq := by
  rw [translationSeqAtRankMask, case_000020_unrank]
  exact case_000020_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000020_bAtRank :
    translationBAtRankMask case_000020_rank case_000020_mask = case_000020_b := by
  rw [translationBAtRankMask, case_000020_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000020_b, case_000020_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000020_firstLine_eq :
    case_000020_support.firstLine case_000020_seq case_000020_b = case_000020_firstLine := by
  norm_num [case_000020_firstLine, case_000020_support, case_000020_seq, case_000020_b,
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
private theorem case_000020_secondLine_eq :
    case_000020_support.secondLine case_000020_seq case_000020_b = case_000020_secondLine := by
  norm_num [case_000020_secondLine, case_000020_support, case_000020_seq, case_000020_b,
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
private theorem case_000020_shape :
    EqEqPosVarSecond case_000020_support case_000020_rank.val case_000020_mask := by
  intro hlt
  have hrank : (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_seq := by
    simpa [hrank] using case_000020_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_b := by
    simpa [hrank] using case_000020_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000020_support case_000020_rank.val hlt
          case_000020_mask = case_000020_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000020_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000020_support case_000020_rank.val hlt
          case_000020_mask = case_000020_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000020_secondLine_eq]
  have case_000020_sourceChecks :
      SourceChecks case_000020_support case_000020_rank.val hlt case_000020_mask := by
    simp [SourceChecks, hseq, case_000020_support,
      checkTranslationConstraintSource, case_000020_seq, impactFace]
  have case_000020_fixedFirst :
      FixedRow (FirstLineAt case_000020_support case_000020_rank.val hlt case_000020_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000020_firstLine, FixedRow]
  have case_000020_rowSecond :
      EqEqPosRow (SecondLineAt case_000020_support case_000020_rank.val hlt case_000020_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000020_secondLine, EqEqPosRow]
  exact ⟨case_000020_sourceChecks, case_000020_fixedFirst, case_000020_rowSecond⟩

private theorem case_000020_checkedAtRank :
    case_000020_support.Checked
      (translationSeqAtRankMask case_000020_rank case_000020_mask)
      (translationBAtRankMask case_000020_rank case_000020_mask) :=
  eqEqPosVarSecond_checkedOn case_000020_support case_000020_rank.val case_000020_rank.isLt
    case_000020_mask case_000020_shape

private theorem case_000020_supportWitness
    (hlt : case_000020_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask)
        (translationBAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask) := by
  have hrank : (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  exact ⟨case_000020_support, by simpa [hrank] using case_000020_checkedAtRank⟩

private theorem case_000020_sourcePredicate :
    (generatedSpec .c011).Predicate case_000020_rank.val case_000020_mask := by
  intro hlt
  have hrank : (⟨case_000020_rank.val, hlt⟩ : Fin numPairWords) = case_000020_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask =
        case_000020_seq := by
    simpa [hrank] using case_000020_seqAtRank
  have hshape := case_000020_shape hlt
  have hfirst : (generatedSpec .c011).first.Holds
      (translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000020_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c011).second.Holds
      (translationSeqAtRankMask ⟨case_000020_rank.val, hlt⟩ case_000020_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c011).support case_000020_rank.val hlt case_000020_mask := by
    change SourceChecks case_000020_support case_000020_rank.val hlt case_000020_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000020_rowsForKey :
    (generatedKey .c011).template.Rows (generatedKey .c011).support
      case_000020_rank.val case_000020_mask := by
  change EqEqPosVarSecondRows (generatedKey .c011).support case_000020_rank.val case_000020_mask
  rw [show (generatedKey .c011).support = case_000020_support by rfl]
  intro hlt
  exact (case_000020_shape hlt).2

private theorem case_000020_rowProducerApplies :
    (generatedRowProducer .c011).Applies (generatedKey .c011)
      case_000020_rank.val case_000020_mask := by
  exact ⟨rfl, case_000020_rowsForKey⟩

theorem case_000020_candidateFacts :
    CandidateFacts .c011 6000625 ⟨45, by decide⟩ := by
  simpa [CandidateFacts, case_000020_rank, case_000020_mask] using
    And.intro case_000020_sourcePredicate case_000020_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `47`. -/
private def case_000021_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000021_mask : SignMask := ⟨47, by decide⟩
private def case_000021_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def case_000021_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000021_b : Vec3 Rat := { x := -4, y := (44/3), z := 4 }
private def case_000021_firstLine : StrictLin2 := { a := -1, b := 1, c := 1 }
private def case_000021_secondLine : StrictLin2 := { a := (3/20), b := (-3/20), c := (-13/20) }

private theorem case_000021_rankWord :
    rankPairWord? case_000021_word = some case_000021_rank := by
  decide

private theorem case_000021_unrank :
    unrankPairWord case_000021_rank = case_000021_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000021_word case_000021_rank).1
    case_000021_rankWord |>.symm

private theorem case_000021_seqChoice :
    translationChoiceSeq case_000021_word case_000021_mask = case_000021_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000021_seqAtRank :
    translationSeqAtRankMask case_000021_rank case_000021_mask = case_000021_seq := by
  rw [translationSeqAtRankMask, case_000021_unrank]
  exact case_000021_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000021_bAtRank :
    translationBAtRankMask case_000021_rank case_000021_mask = case_000021_b := by
  rw [translationBAtRankMask, case_000021_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000021_b, case_000021_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000021_firstLine_eq :
    case_000021_support.firstLine case_000021_seq case_000021_b = case_000021_firstLine := by
  norm_num [case_000021_firstLine, case_000021_support, case_000021_seq, case_000021_b,
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
private theorem case_000021_secondLine_eq :
    case_000021_support.secondLine case_000021_seq case_000021_b = case_000021_secondLine := by
  norm_num [case_000021_secondLine, case_000021_support, case_000021_seq, case_000021_b,
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
private theorem case_000021_shape :
    OppMinusOneVarSecond case_000021_support case_000021_rank.val case_000021_mask := by
  intro hlt
  have hrank : (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_seq := by
    simpa [hrank] using case_000021_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_b := by
    simpa [hrank] using case_000021_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000021_support case_000021_rank.val hlt
          case_000021_mask = case_000021_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000021_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000021_support case_000021_rank.val hlt
          case_000021_mask = case_000021_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000021_secondLine_eq]
  have case_000021_sourceChecks :
      SourceChecks case_000021_support case_000021_rank.val hlt case_000021_mask := by
    simp [SourceChecks, hseq, case_000021_support,
      checkTranslationConstraintSource, case_000021_seq, impactFace]
  have case_000021_fixedFirst :
      FixedRow (FirstLineAt case_000021_support case_000021_rank.val hlt case_000021_mask)
        (-1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000021_firstLine, FixedRow]
  have case_000021_rowSecond :
      OppNegRow (SecondLineAt case_000021_support case_000021_rank.val hlt case_000021_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000021_secondLine, OppNegRow]
  exact ⟨case_000021_sourceChecks, case_000021_fixedFirst, case_000021_rowSecond⟩

private theorem case_000021_checkedAtRank :
    case_000021_support.Checked
      (translationSeqAtRankMask case_000021_rank case_000021_mask)
      (translationBAtRankMask case_000021_rank case_000021_mask) :=
  oppMinusOneVarSecond_checkedOn case_000021_support case_000021_rank.val case_000021_rank.isLt
    case_000021_mask case_000021_shape

private theorem case_000021_supportWitness
    (hlt : case_000021_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask)
        (translationBAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask) := by
  have hrank : (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  exact ⟨case_000021_support, by simpa [hrank] using case_000021_checkedAtRank⟩

private theorem case_000021_sourcePredicate :
    (generatedSpec .c003).Predicate case_000021_rank.val case_000021_mask := by
  intro hlt
  have hrank : (⟨case_000021_rank.val, hlt⟩ : Fin numPairWords) = case_000021_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask =
        case_000021_seq := by
    simpa [hrank] using case_000021_seqAtRank
  have hshape := case_000021_shape hlt
  have hfirst : (generatedSpec .c003).first.Holds
      (translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000021_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c003).second.Holds
      (translationSeqAtRankMask ⟨case_000021_rank.val, hlt⟩ case_000021_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c003).support case_000021_rank.val hlt case_000021_mask := by
    change SourceChecks case_000021_support case_000021_rank.val hlt case_000021_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000021_rowsForKey :
    (generatedKey .c003).template.Rows (generatedKey .c003).support
      case_000021_rank.val case_000021_mask := by
  change OppMinusOneVarSecondRows (generatedKey .c003).support case_000021_rank.val case_000021_mask
  rw [show (generatedKey .c003).support = case_000021_support by rfl]
  intro hlt
  exact (case_000021_shape hlt).2

private theorem case_000021_rowProducerApplies :
    (generatedRowProducer .c003).Applies (generatedKey .c003)
      case_000021_rank.val case_000021_mask := by
  exact ⟨rfl, case_000021_rowsForKey⟩

theorem case_000021_candidateFacts :
    CandidateFacts .c003 6000625 ⟨47, by decide⟩ := by
  simpa [CandidateFacts, case_000021_rank, case_000021_mask] using
    And.intro case_000021_sourcePredicate case_000021_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `55`. -/
private def case_000022_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000022_mask : SignMask := ⟨55, by decide⟩
private def case_000022_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000022_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000022_b : Vec3 Rat := { x := (-68/9), y := (4/9), z := (100/9) }
private def case_000022_firstLine : StrictLin2 := { a := -1, b := 1, c := (-31/17) }
private def case_000022_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000022_rankWord :
    rankPairWord? case_000022_word = some case_000022_rank := by
  decide

private theorem case_000022_unrank :
    unrankPairWord case_000022_rank = case_000022_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000022_word case_000022_rank).1
    case_000022_rankWord |>.symm

private theorem case_000022_seqChoice :
    translationChoiceSeq case_000022_word case_000022_mask = case_000022_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000022_seqAtRank :
    translationSeqAtRankMask case_000022_rank case_000022_mask = case_000022_seq := by
  rw [translationSeqAtRankMask, case_000022_unrank]
  exact case_000022_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000022_bAtRank :
    translationBAtRankMask case_000022_rank case_000022_mask = case_000022_b := by
  rw [translationBAtRankMask, case_000022_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000022_b, case_000022_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000022_firstLine_eq :
    case_000022_support.firstLine case_000022_seq case_000022_b = case_000022_firstLine := by
  norm_num [case_000022_firstLine, case_000022_support, case_000022_seq, case_000022_b,
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
private theorem case_000022_secondLine_eq :
    case_000022_support.secondLine case_000022_seq case_000022_b = case_000022_secondLine := by
  norm_num [case_000022_secondLine, case_000022_support, case_000022_seq, case_000022_b,
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
private theorem case_000022_shape :
    OppOneMinusVarFirst case_000022_support case_000022_rank.val case_000022_mask := by
  intro hlt
  have hrank : (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_seq := by
    simpa [hrank] using case_000022_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_b := by
    simpa [hrank] using case_000022_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000022_support case_000022_rank.val hlt
          case_000022_mask = case_000022_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000022_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000022_support case_000022_rank.val hlt
          case_000022_mask = case_000022_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000022_secondLine_eq]
  have case_000022_sourceChecks :
      SourceChecks case_000022_support case_000022_rank.val hlt case_000022_mask := by
    simp [SourceChecks, hseq, case_000022_support,
      checkTranslationConstraintSource, case_000022_seq, impactFace]
  have case_000022_rowFirst :
      OppPosRow (FirstLineAt case_000022_support case_000022_rank.val hlt case_000022_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000022_firstLine, OppPosRow]
  have case_000022_fixedSecond :
      FixedRow (SecondLineAt case_000022_support case_000022_rank.val hlt case_000022_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000022_secondLine, FixedRow]
  exact ⟨case_000022_sourceChecks, case_000022_rowFirst, case_000022_fixedSecond⟩

private theorem case_000022_checkedAtRank :
    case_000022_support.Checked
      (translationSeqAtRankMask case_000022_rank case_000022_mask)
      (translationBAtRankMask case_000022_rank case_000022_mask) :=
  oppOneMinusVarFirst_checkedOn case_000022_support case_000022_rank.val case_000022_rank.isLt
    case_000022_mask case_000022_shape

private theorem case_000022_supportWitness
    (hlt : case_000022_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask)
        (translationBAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask) := by
  have hrank : (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  exact ⟨case_000022_support, by simpa [hrank] using case_000022_checkedAtRank⟩

private theorem case_000022_sourcePredicate :
    (generatedSpec .c009).Predicate case_000022_rank.val case_000022_mask := by
  intro hlt
  have hrank : (⟨case_000022_rank.val, hlt⟩ : Fin numPairWords) = case_000022_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask =
        case_000022_seq := by
    simpa [hrank] using case_000022_seqAtRank
  have hshape := case_000022_shape hlt
  have hfirst : (generatedSpec .c009).first.Holds
      (translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000022_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c009).second.Holds
      (translationSeqAtRankMask ⟨case_000022_rank.val, hlt⟩ case_000022_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c009).support case_000022_rank.val hlt case_000022_mask := by
    change SourceChecks case_000022_support case_000022_rank.val hlt case_000022_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000022_rowsForKey :
    (generatedKey .c009).template.Rows (generatedKey .c009).support
      case_000022_rank.val case_000022_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c009).support case_000022_rank.val case_000022_mask
  rw [show (generatedKey .c009).support = case_000022_support by rfl]
  intro hlt
  exact (case_000022_shape hlt).2

private theorem case_000022_rowProducerApplies :
    (generatedRowProducer .c009).Applies (generatedKey .c009)
      case_000022_rank.val case_000022_mask := by
  exact ⟨rfl, case_000022_rowsForKey⟩

theorem case_000022_candidateFacts :
    CandidateFacts .c009 6000625 ⟨55, by decide⟩ := by
  simpa [CandidateFacts, case_000022_rank, case_000022_mask] using
    And.intro case_000022_sourcePredicate case_000022_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000625`, mask `63`. -/
private def case_000023_rank : Fin numPairWords := ⟨6000625, by decide⟩
private def case_000023_mask : SignMask := ⟨63, by decide⟩
private def case_000023_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.dm11, PairId.y, PairId.z, PairId.y, PairId.z], by decide⟩
private def case_000023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000023_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmmp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.yp
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.ym
  | ⟨13, _⟩ => Face.zm
private def case_000023_b : Vec3 Rat := { x := (-28/3), y := (28/3), z := (28/3) }
private def case_000023_firstLine : StrictLin2 := { a := 1, b := -1, c := -1 }
private def case_000023_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000023_rankWord :
    rankPairWord? case_000023_word = some case_000023_rank := by
  decide

private theorem case_000023_unrank :
    unrankPairWord case_000023_rank = case_000023_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000023_word case_000023_rank).1
    case_000023_rankWord |>.symm

private theorem case_000023_seqChoice :
    translationChoiceSeq case_000023_word case_000023_mask = case_000023_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000023_seqAtRank :
    translationSeqAtRankMask case_000023_rank case_000023_mask = case_000023_seq := by
  rw [translationSeqAtRankMask, case_000023_unrank]
  exact case_000023_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000023_bAtRank :
    translationBAtRankMask case_000023_rank case_000023_mask = case_000023_b := by
  rw [translationBAtRankMask, case_000023_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000023_b, case_000023_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000023_firstLine_eq :
    case_000023_support.firstLine case_000023_seq case_000023_b = case_000023_firstLine := by
  norm_num [case_000023_firstLine, case_000023_support, case_000023_seq, case_000023_b,
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
private theorem case_000023_secondLine_eq :
    case_000023_support.secondLine case_000023_seq case_000023_b = case_000023_secondLine := by
  norm_num [case_000023_secondLine, case_000023_support, case_000023_seq, case_000023_b,
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
private theorem case_000023_shape :
    OppMinusOneVarFirst case_000023_support case_000023_rank.val case_000023_mask := by
  intro hlt
  have hrank : (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_seq := by
    simpa [hrank] using case_000023_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_b := by
    simpa [hrank] using case_000023_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000023_support case_000023_rank.val hlt
          case_000023_mask = case_000023_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000023_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000023_support case_000023_rank.val hlt
          case_000023_mask = case_000023_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000023_secondLine_eq]
  have case_000023_sourceChecks :
      SourceChecks case_000023_support case_000023_rank.val hlt case_000023_mask := by
    simp [SourceChecks, hseq, case_000023_support,
      checkTranslationConstraintSource, case_000023_seq, impactFace]
  have case_000023_rowFirst :
      OppNegRow (FirstLineAt case_000023_support case_000023_rank.val hlt case_000023_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000023_firstLine, OppNegRow]
  have case_000023_fixedSecond :
      FixedRow (SecondLineAt case_000023_support case_000023_rank.val hlt case_000023_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000023_secondLine, FixedRow]
  exact ⟨case_000023_sourceChecks, case_000023_rowFirst, case_000023_fixedSecond⟩

private theorem case_000023_checkedAtRank :
    case_000023_support.Checked
      (translationSeqAtRankMask case_000023_rank case_000023_mask)
      (translationBAtRankMask case_000023_rank case_000023_mask) :=
  oppMinusOneVarFirst_checkedOn case_000023_support case_000023_rank.val case_000023_rank.isLt
    case_000023_mask case_000023_shape

private theorem case_000023_supportWitness
    (hlt : case_000023_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask)
        (translationBAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask) := by
  have hrank : (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  exact ⟨case_000023_support, by simpa [hrank] using case_000023_checkedAtRank⟩

private theorem case_000023_sourcePredicate :
    (generatedSpec .c002).Predicate case_000023_rank.val case_000023_mask := by
  intro hlt
  have hrank : (⟨case_000023_rank.val, hlt⟩ : Fin numPairWords) = case_000023_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask =
        case_000023_seq := by
    simpa [hrank] using case_000023_seqAtRank
  have hshape := case_000023_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000023_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000023_rank.val, hlt⟩ case_000023_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000023_rank.val hlt case_000023_mask := by
    change SourceChecks case_000023_support case_000023_rank.val hlt case_000023_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000023_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000023_rank.val case_000023_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c002).support case_000023_rank.val case_000023_mask
  rw [show (generatedKey .c002).support = case_000023_support by rfl]
  intro hlt
  exact (case_000023_shape hlt).2

private theorem case_000023_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000023_rank.val case_000023_mask := by
  exact ⟨rfl, case_000023_rowsForKey⟩

theorem case_000023_candidateFacts :
    CandidateFacts .c002 6000625 ⟨63, by decide⟩ := by
  simpa [CandidateFacts, case_000023_rank, case_000023_mask] using
    And.intro case_000023_sourcePredicate case_000023_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000480`, mask `14`. -/
private def case_000024_rank : Fin numPairWords := ⟨6000480, by decide⟩
private def case_000024_mask : SignMask := ⟨14, by decide⟩
private def case_000024_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.dm11], by decide⟩
private def case_000024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000024_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.ym
  | ⟨9, _⟩ => Face.yp
  | ⟨10, _⟩ => Face.zp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000024_b : Vec3 Rat := { x := (-100/9), y := (92/9), z := (-28/9) }
private def case_000024_firstLine : StrictLin2 := { a := (-25/9), b := (-25/9), c := (-19/3) }
private def case_000024_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000024_rankWord :
    rankPairWord? case_000024_word = some case_000024_rank := by
  decide

private theorem case_000024_unrank :
    unrankPairWord case_000024_rank = case_000024_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000024_word case_000024_rank).1
    case_000024_rankWord |>.symm

private theorem case_000024_seqChoice :
    translationChoiceSeq case_000024_word case_000024_mask = case_000024_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000024_seqAtRank :
    translationSeqAtRankMask case_000024_rank case_000024_mask = case_000024_seq := by
  rw [translationSeqAtRankMask, case_000024_unrank]
  exact case_000024_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000024_bAtRank :
    translationBAtRankMask case_000024_rank case_000024_mask = case_000024_b := by
  rw [translationBAtRankMask, case_000024_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000024_b, case_000024_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000024_firstLine_eq :
    case_000024_support.firstLine case_000024_seq case_000024_b = case_000024_firstLine := by
  norm_num [case_000024_firstLine, case_000024_support, case_000024_seq, case_000024_b,
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
private theorem case_000024_secondLine_eq :
    case_000024_support.secondLine case_000024_seq case_000024_b = case_000024_secondLine := by
  norm_num [case_000024_secondLine, case_000024_support, case_000024_seq, case_000024_b,
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
private theorem case_000024_shape :
    EqEqPosVarFirst case_000024_support case_000024_rank.val case_000024_mask := by
  intro hlt
  have hrank : (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_seq := by
    simpa [hrank] using case_000024_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_b := by
    simpa [hrank] using case_000024_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000024_support case_000024_rank.val hlt
          case_000024_mask = case_000024_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000024_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000024_support case_000024_rank.val hlt
          case_000024_mask = case_000024_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000024_secondLine_eq]
  have case_000024_sourceChecks :
      SourceChecks case_000024_support case_000024_rank.val hlt case_000024_mask := by
    simp [SourceChecks, hseq, case_000024_support,
      checkTranslationConstraintSource, case_000024_seq, impactFace]
  have case_000024_rowFirst :
      EqEqPosRow (FirstLineAt case_000024_support case_000024_rank.val hlt case_000024_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000024_firstLine, EqEqPosRow]
  have case_000024_fixedSecond :
      FixedRow (SecondLineAt case_000024_support case_000024_rank.val hlt case_000024_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000024_secondLine, FixedRow]
  exact ⟨case_000024_sourceChecks, case_000024_rowFirst, case_000024_fixedSecond⟩

private theorem case_000024_checkedAtRank :
    case_000024_support.Checked
      (translationSeqAtRankMask case_000024_rank case_000024_mask)
      (translationBAtRankMask case_000024_rank case_000024_mask) :=
  eqEqPosVarFirst_checkedOn case_000024_support case_000024_rank.val case_000024_rank.isLt
    case_000024_mask case_000024_shape

private theorem case_000024_supportWitness
    (hlt : case_000024_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask)
        (translationBAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask) := by
  have hrank : (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  exact ⟨case_000024_support, by simpa [hrank] using case_000024_checkedAtRank⟩

private theorem case_000024_sourcePredicate :
    (generatedSpec .c008).Predicate case_000024_rank.val case_000024_mask := by
  intro hlt
  have hrank : (⟨case_000024_rank.val, hlt⟩ : Fin numPairWords) = case_000024_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask =
        case_000024_seq := by
    simpa [hrank] using case_000024_seqAtRank
  have hshape := case_000024_shape hlt
  have hfirst : (generatedSpec .c008).first.Holds
      (translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000024_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c008).second.Holds
      (translationSeqAtRankMask ⟨case_000024_rank.val, hlt⟩ case_000024_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c008).support case_000024_rank.val hlt case_000024_mask := by
    change SourceChecks case_000024_support case_000024_rank.val hlt case_000024_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000024_rowsForKey :
    (generatedKey .c008).template.Rows (generatedKey .c008).support
      case_000024_rank.val case_000024_mask := by
  change EqEqPosVarFirstRows (generatedKey .c008).support case_000024_rank.val case_000024_mask
  rw [show (generatedKey .c008).support = case_000024_support by rfl]
  intro hlt
  exact (case_000024_shape hlt).2

private theorem case_000024_rowProducerApplies :
    (generatedRowProducer .c008).Applies (generatedKey .c008)
      case_000024_rank.val case_000024_mask := by
  exact ⟨rfl, case_000024_rowsForKey⟩

theorem case_000024_candidateFacts :
    CandidateFacts .c008 6000480 ⟨14, by decide⟩ := by
  simpa [CandidateFacts, case_000024_rank, case_000024_mask] using
    And.intro case_000024_sourcePredicate case_000024_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000480`, mask `17`. -/
private def case_000025_rank : Fin numPairWords := ⟨6000480, by decide⟩
private def case_000025_mask : SignMask := ⟨17, by decide⟩
private def case_000025_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.dm11], by decide⟩
private def case_000025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
private def case_000025_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tmmm
  | ⟨6, _⟩ => Face.tppp
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.yp
  | ⟨9, _⟩ => Face.ym
  | ⟨10, _⟩ => Face.zm
  | ⟨11, _⟩ => Face.zp
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000025_b : Vec3 Rat := { x := (-20/9), y := (-140/9), z := (-20/9) }
private def case_000025_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000025_secondLine : StrictLin2 := { a := (-1/10), b := (-1/10), c := (-13/3) }

private theorem case_000025_rankWord :
    rankPairWord? case_000025_word = some case_000025_rank := by
  decide

private theorem case_000025_unrank :
    unrankPairWord case_000025_rank = case_000025_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000025_word case_000025_rank).1
    case_000025_rankWord |>.symm

private theorem case_000025_seqChoice :
    translationChoiceSeq case_000025_word case_000025_mask = case_000025_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000025_seqAtRank :
    translationSeqAtRankMask case_000025_rank case_000025_mask = case_000025_seq := by
  rw [translationSeqAtRankMask, case_000025_unrank]
  exact case_000025_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000025_bAtRank :
    translationBAtRankMask case_000025_rank case_000025_mask = case_000025_b := by
  rw [translationBAtRankMask, case_000025_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000025_b, case_000025_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000025_firstLine_eq :
    case_000025_support.firstLine case_000025_seq case_000025_b = case_000025_firstLine := by
  norm_num [case_000025_firstLine, case_000025_support, case_000025_seq, case_000025_b,
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
private theorem case_000025_secondLine_eq :
    case_000025_support.secondLine case_000025_seq case_000025_b = case_000025_secondLine := by
  norm_num [case_000025_secondLine, case_000025_support, case_000025_seq, case_000025_b,
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
private theorem case_000025_shape :
    EqEqPosVarSecond case_000025_support case_000025_rank.val case_000025_mask := by
  intro hlt
  have hrank : (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_seq := by
    simpa [hrank] using case_000025_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_b := by
    simpa [hrank] using case_000025_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000025_support case_000025_rank.val hlt
          case_000025_mask = case_000025_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000025_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000025_support case_000025_rank.val hlt
          case_000025_mask = case_000025_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000025_secondLine_eq]
  have case_000025_sourceChecks :
      SourceChecks case_000025_support case_000025_rank.val hlt case_000025_mask := by
    simp [SourceChecks, hseq, case_000025_support,
      checkTranslationConstraintSource, case_000025_seq, impactFace]
  have case_000025_fixedFirst :
      FixedRow (FirstLineAt case_000025_support case_000025_rank.val hlt case_000025_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000025_firstLine, FixedRow]
  have case_000025_rowSecond :
      EqEqPosRow (SecondLineAt case_000025_support case_000025_rank.val hlt case_000025_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000025_secondLine, EqEqPosRow]
  exact ⟨case_000025_sourceChecks, case_000025_fixedFirst, case_000025_rowSecond⟩

private theorem case_000025_checkedAtRank :
    case_000025_support.Checked
      (translationSeqAtRankMask case_000025_rank case_000025_mask)
      (translationBAtRankMask case_000025_rank case_000025_mask) :=
  eqEqPosVarSecond_checkedOn case_000025_support case_000025_rank.val case_000025_rank.isLt
    case_000025_mask case_000025_shape

private theorem case_000025_supportWitness
    (hlt : case_000025_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask)
        (translationBAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask) := by
  have hrank : (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  exact ⟨case_000025_support, by simpa [hrank] using case_000025_checkedAtRank⟩

private theorem case_000025_sourcePredicate :
    (generatedSpec .c011).Predicate case_000025_rank.val case_000025_mask := by
  intro hlt
  have hrank : (⟨case_000025_rank.val, hlt⟩ : Fin numPairWords) = case_000025_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask =
        case_000025_seq := by
    simpa [hrank] using case_000025_seqAtRank
  have hshape := case_000025_shape hlt
  have hfirst : (generatedSpec .c011).first.Holds
      (translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000025_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c011).second.Holds
      (translationSeqAtRankMask ⟨case_000025_rank.val, hlt⟩ case_000025_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c011).support case_000025_rank.val hlt case_000025_mask := by
    change SourceChecks case_000025_support case_000025_rank.val hlt case_000025_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000025_rowsForKey :
    (generatedKey .c011).template.Rows (generatedKey .c011).support
      case_000025_rank.val case_000025_mask := by
  change EqEqPosVarSecondRows (generatedKey .c011).support case_000025_rank.val case_000025_mask
  rw [show (generatedKey .c011).support = case_000025_support by rfl]
  intro hlt
  exact (case_000025_shape hlt).2

private theorem case_000025_rowProducerApplies :
    (generatedRowProducer .c011).Applies (generatedKey .c011)
      case_000025_rank.val case_000025_mask := by
  exact ⟨rfl, case_000025_rowsForKey⟩

theorem case_000025_candidateFacts :
    CandidateFacts .c011 6000480 ⟨17, by decide⟩ := by
  simpa [CandidateFacts, case_000025_rank, case_000025_mask] using
    And.intro case_000025_sourcePredicate case_000025_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000480`, mask `23`. -/
private def case_000026_rank : Fin numPairWords := ⟨6000480, by decide⟩
private def case_000026_mask : SignMask := ⟨23, by decide⟩
private def case_000026_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.dm11], by decide⟩
private def case_000026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000026_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.yp
  | ⟨9, _⟩ => Face.ym
  | ⟨10, _⟩ => Face.zp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.tppm
  | ⟨13, _⟩ => Face.tmpp
private def case_000026_b : Vec3 Rat := { x := (-164/9), y := (-92/9), z := (4/9) }
private def case_000026_firstLine : StrictLin2 := { a := (-82/63), b := (-82/63), c := (-256/189) }
private def case_000026_secondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

private theorem case_000026_rankWord :
    rankPairWord? case_000026_word = some case_000026_rank := by
  decide

private theorem case_000026_unrank :
    unrankPairWord case_000026_rank = case_000026_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000026_word case_000026_rank).1
    case_000026_rankWord |>.symm

private theorem case_000026_seqChoice :
    translationChoiceSeq case_000026_word case_000026_mask = case_000026_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000026_seqAtRank :
    translationSeqAtRankMask case_000026_rank case_000026_mask = case_000026_seq := by
  rw [translationSeqAtRankMask, case_000026_unrank]
  exact case_000026_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000026_bAtRank :
    translationBAtRankMask case_000026_rank case_000026_mask = case_000026_b := by
  rw [translationBAtRankMask, case_000026_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000026_b, case_000026_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000026_firstLine_eq :
    case_000026_support.firstLine case_000026_seq case_000026_b = case_000026_firstLine := by
  norm_num [case_000026_firstLine, case_000026_support, case_000026_seq, case_000026_b,
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
private theorem case_000026_secondLine_eq :
    case_000026_support.secondLine case_000026_seq case_000026_b = case_000026_secondLine := by
  norm_num [case_000026_secondLine, case_000026_support, case_000026_seq, case_000026_b,
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
private theorem case_000026_shape :
    EqEqPosVarFirst case_000026_support case_000026_rank.val case_000026_mask := by
  intro hlt
  have hrank : (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_seq := by
    simpa [hrank] using case_000026_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_b := by
    simpa [hrank] using case_000026_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000026_support case_000026_rank.val hlt
          case_000026_mask = case_000026_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000026_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000026_support case_000026_rank.val hlt
          case_000026_mask = case_000026_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000026_secondLine_eq]
  have case_000026_sourceChecks :
      SourceChecks case_000026_support case_000026_rank.val hlt case_000026_mask := by
    simp [SourceChecks, hseq, case_000026_support,
      checkTranslationConstraintSource, case_000026_seq, impactFace]
  have case_000026_rowFirst :
      EqEqPosRow (FirstLineAt case_000026_support case_000026_rank.val hlt case_000026_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000026_firstLine, EqEqPosRow]
  have case_000026_fixedSecond :
      FixedRow (SecondLineAt case_000026_support case_000026_rank.val hlt case_000026_mask)
        (1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000026_secondLine, FixedRow]
  exact ⟨case_000026_sourceChecks, case_000026_rowFirst, case_000026_fixedSecond⟩

private theorem case_000026_checkedAtRank :
    case_000026_support.Checked
      (translationSeqAtRankMask case_000026_rank case_000026_mask)
      (translationBAtRankMask case_000026_rank case_000026_mask) :=
  eqEqPosVarFirst_checkedOn case_000026_support case_000026_rank.val case_000026_rank.isLt
    case_000026_mask case_000026_shape

private theorem case_000026_supportWitness
    (hlt : case_000026_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask)
        (translationBAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask) := by
  have hrank : (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  exact ⟨case_000026_support, by simpa [hrank] using case_000026_checkedAtRank⟩

private theorem case_000026_sourcePredicate :
    (generatedSpec .c006).Predicate case_000026_rank.val case_000026_mask := by
  intro hlt
  have hrank : (⟨case_000026_rank.val, hlt⟩ : Fin numPairWords) = case_000026_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask =
        case_000026_seq := by
    simpa [hrank] using case_000026_seqAtRank
  have hshape := case_000026_shape hlt
  have hfirst : (generatedSpec .c006).first.Holds
      (translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000026_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c006).second.Holds
      (translationSeqAtRankMask ⟨case_000026_rank.val, hlt⟩ case_000026_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c006).support case_000026_rank.val hlt case_000026_mask := by
    change SourceChecks case_000026_support case_000026_rank.val hlt case_000026_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000026_rowsForKey :
    (generatedKey .c006).template.Rows (generatedKey .c006).support
      case_000026_rank.val case_000026_mask := by
  change EqEqPosVarFirstRows (generatedKey .c006).support case_000026_rank.val case_000026_mask
  rw [show (generatedKey .c006).support = case_000026_support by rfl]
  intro hlt
  exact (case_000026_shape hlt).2

private theorem case_000026_rowProducerApplies :
    (generatedRowProducer .c006).Applies (generatedKey .c006)
      case_000026_rank.val case_000026_mask := by
  exact ⟨rfl, case_000026_rowsForKey⟩

theorem case_000026_candidateFacts :
    CandidateFacts .c006 6000480 ⟨23, by decide⟩ := by
  simpa [CandidateFacts, case_000026_rank, case_000026_mask] using
    And.intro case_000026_sourcePredicate case_000026_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000480`, mask `31`. -/
private def case_000027_rank : Fin numPairWords := ⟨6000480, by decide⟩
private def case_000027_mask : SignMask := ⟨31, by decide⟩
private def case_000027_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.dm11], by decide⟩
private def case_000027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000027_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tpmm
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.yp
  | ⟨9, _⟩ => Face.ym
  | ⟨10, _⟩ => Face.zp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tmpp
private def case_000027_b : Vec3 Rat := { x := -20, y := (-4/3), z := (-4/3) }
private def case_000027_firstLine : StrictLin2 := { a := 1, b := -1, c := -1 }
private def case_000027_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000027_rankWord :
    rankPairWord? case_000027_word = some case_000027_rank := by
  decide

private theorem case_000027_unrank :
    unrankPairWord case_000027_rank = case_000027_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000027_word case_000027_rank).1
    case_000027_rankWord |>.symm

private theorem case_000027_seqChoice :
    translationChoiceSeq case_000027_word case_000027_mask = case_000027_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000027_seqAtRank :
    translationSeqAtRankMask case_000027_rank case_000027_mask = case_000027_seq := by
  rw [translationSeqAtRankMask, case_000027_unrank]
  exact case_000027_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000027_bAtRank :
    translationBAtRankMask case_000027_rank case_000027_mask = case_000027_b := by
  rw [translationBAtRankMask, case_000027_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000027_b, case_000027_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000027_firstLine_eq :
    case_000027_support.firstLine case_000027_seq case_000027_b = case_000027_firstLine := by
  norm_num [case_000027_firstLine, case_000027_support, case_000027_seq, case_000027_b,
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
private theorem case_000027_secondLine_eq :
    case_000027_support.secondLine case_000027_seq case_000027_b = case_000027_secondLine := by
  norm_num [case_000027_secondLine, case_000027_support, case_000027_seq, case_000027_b,
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
private theorem case_000027_shape :
    OppMinusOneVarFirst case_000027_support case_000027_rank.val case_000027_mask := by
  intro hlt
  have hrank : (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_seq := by
    simpa [hrank] using case_000027_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_b := by
    simpa [hrank] using case_000027_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000027_support case_000027_rank.val hlt
          case_000027_mask = case_000027_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000027_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000027_support case_000027_rank.val hlt
          case_000027_mask = case_000027_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000027_secondLine_eq]
  have case_000027_sourceChecks :
      SourceChecks case_000027_support case_000027_rank.val hlt case_000027_mask := by
    simp [SourceChecks, hseq, case_000027_support,
      checkTranslationConstraintSource, case_000027_seq, impactFace]
  have case_000027_rowFirst :
      OppNegRow (FirstLineAt case_000027_support case_000027_rank.val hlt case_000027_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000027_firstLine, OppNegRow]
  have case_000027_fixedSecond :
      FixedRow (SecondLineAt case_000027_support case_000027_rank.val hlt case_000027_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000027_secondLine, FixedRow]
  exact ⟨case_000027_sourceChecks, case_000027_rowFirst, case_000027_fixedSecond⟩

private theorem case_000027_checkedAtRank :
    case_000027_support.Checked
      (translationSeqAtRankMask case_000027_rank case_000027_mask)
      (translationBAtRankMask case_000027_rank case_000027_mask) :=
  oppMinusOneVarFirst_checkedOn case_000027_support case_000027_rank.val case_000027_rank.isLt
    case_000027_mask case_000027_shape

private theorem case_000027_supportWitness
    (hlt : case_000027_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask)
        (translationBAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask) := by
  have hrank : (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  exact ⟨case_000027_support, by simpa [hrank] using case_000027_checkedAtRank⟩

private theorem case_000027_sourcePredicate :
    (generatedSpec .c002).Predicate case_000027_rank.val case_000027_mask := by
  intro hlt
  have hrank : (⟨case_000027_rank.val, hlt⟩ : Fin numPairWords) = case_000027_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask =
        case_000027_seq := by
    simpa [hrank] using case_000027_seqAtRank
  have hshape := case_000027_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000027_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000027_rank.val, hlt⟩ case_000027_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000027_rank.val hlt case_000027_mask := by
    change SourceChecks case_000027_support case_000027_rank.val hlt case_000027_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000027_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000027_rank.val case_000027_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c002).support case_000027_rank.val case_000027_mask
  rw [show (generatedKey .c002).support = case_000027_support by rfl]
  intro hlt
  exact (case_000027_shape hlt).2

private theorem case_000027_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000027_rank.val case_000027_mask := by
  exact ⟨rfl, case_000027_rowsForKey⟩

theorem case_000027_candidateFacts :
    CandidateFacts .c002 6000480 ⟨31, by decide⟩ := by
  simpa [CandidateFacts, case_000027_rank, case_000027_mask] using
    And.intro case_000027_sourcePredicate case_000027_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000480`, mask `46`. -/
private def case_000028_rank : Fin numPairWords := ⟨6000480, by decide⟩
private def case_000028_mask : SignMask := ⟨46, by decide⟩
private def case_000028_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.dm11], by decide⟩
private def case_000028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000028_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tmpm
  | ⟨3, _⟩ => Face.tpmp
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.ym
  | ⟨9, _⟩ => Face.yp
  | ⟨10, _⟩ => Face.zp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000028_b : Vec3 Rat := { x := (-52/9), y := (140/9), z := (20/9) }
private def case_000028_firstLine : StrictLin2 := { a := (-13/17), b := (13/17), c := (-49/51) }
private def case_000028_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

private theorem case_000028_rankWord :
    rankPairWord? case_000028_word = some case_000028_rank := by
  decide

private theorem case_000028_unrank :
    unrankPairWord case_000028_rank = case_000028_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000028_word case_000028_rank).1
    case_000028_rankWord |>.symm

private theorem case_000028_seqChoice :
    translationChoiceSeq case_000028_word case_000028_mask = case_000028_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000028_seqAtRank :
    translationSeqAtRankMask case_000028_rank case_000028_mask = case_000028_seq := by
  rw [translationSeqAtRankMask, case_000028_unrank]
  exact case_000028_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000028_bAtRank :
    translationBAtRankMask case_000028_rank case_000028_mask = case_000028_b := by
  rw [translationBAtRankMask, case_000028_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000028_b, case_000028_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000028_firstLine_eq :
    case_000028_support.firstLine case_000028_seq case_000028_b = case_000028_firstLine := by
  norm_num [case_000028_firstLine, case_000028_support, case_000028_seq, case_000028_b,
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
private theorem case_000028_secondLine_eq :
    case_000028_support.secondLine case_000028_seq case_000028_b = case_000028_secondLine := by
  norm_num [case_000028_secondLine, case_000028_support, case_000028_seq, case_000028_b,
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
private theorem case_000028_shape :
    OppOneMinusVarFirst case_000028_support case_000028_rank.val case_000028_mask := by
  intro hlt
  have hrank : (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_seq := by
    simpa [hrank] using case_000028_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_b := by
    simpa [hrank] using case_000028_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000028_support case_000028_rank.val hlt
          case_000028_mask = case_000028_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000028_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000028_support case_000028_rank.val hlt
          case_000028_mask = case_000028_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000028_secondLine_eq]
  have case_000028_sourceChecks :
      SourceChecks case_000028_support case_000028_rank.val hlt case_000028_mask := by
    simp [SourceChecks, hseq, case_000028_support,
      checkTranslationConstraintSource, case_000028_seq, impactFace]
  have case_000028_rowFirst :
      OppPosRow (FirstLineAt case_000028_support case_000028_rank.val hlt case_000028_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000028_firstLine, OppPosRow]
  have case_000028_fixedSecond :
      FixedRow (SecondLineAt case_000028_support case_000028_rank.val hlt case_000028_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000028_secondLine, FixedRow]
  exact ⟨case_000028_sourceChecks, case_000028_rowFirst, case_000028_fixedSecond⟩

private theorem case_000028_checkedAtRank :
    case_000028_support.Checked
      (translationSeqAtRankMask case_000028_rank case_000028_mask)
      (translationBAtRankMask case_000028_rank case_000028_mask) :=
  oppOneMinusVarFirst_checkedOn case_000028_support case_000028_rank.val case_000028_rank.isLt
    case_000028_mask case_000028_shape

private theorem case_000028_supportWitness
    (hlt : case_000028_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask)
        (translationBAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask) := by
  have hrank : (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  exact ⟨case_000028_support, by simpa [hrank] using case_000028_checkedAtRank⟩

private theorem case_000028_sourcePredicate :
    (generatedSpec .c005).Predicate case_000028_rank.val case_000028_mask := by
  intro hlt
  have hrank : (⟨case_000028_rank.val, hlt⟩ : Fin numPairWords) = case_000028_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask =
        case_000028_seq := by
    simpa [hrank] using case_000028_seqAtRank
  have hshape := case_000028_shape hlt
  have hfirst : (generatedSpec .c005).first.Holds
      (translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000028_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c005).second.Holds
      (translationSeqAtRankMask ⟨case_000028_rank.val, hlt⟩ case_000028_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c005).support case_000028_rank.val hlt case_000028_mask := by
    change SourceChecks case_000028_support case_000028_rank.val hlt case_000028_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000028_rowsForKey :
    (generatedKey .c005).template.Rows (generatedKey .c005).support
      case_000028_rank.val case_000028_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c005).support case_000028_rank.val case_000028_mask
  rw [show (generatedKey .c005).support = case_000028_support by rfl]
  intro hlt
  exact (case_000028_shape hlt).2

private theorem case_000028_rowProducerApplies :
    (generatedRowProducer .c005).Applies (generatedKey .c005)
      case_000028_rank.val case_000028_mask := by
  exact ⟨rfl, case_000028_rowsForKey⟩

theorem case_000028_candidateFacts :
    CandidateFacts .c005 6000480 ⟨46, by decide⟩ := by
  simpa [CandidateFacts, case_000028_rank, case_000028_mask] using
    And.intro case_000028_sourcePredicate case_000028_rowProducerApplies

/-- AP.16W shared candidate fact: rank `6000480`, mask `62`. -/
private def case_000029_rank : Fin numPairWords := ⟨6000480, by decide⟩
private def case_000029_mask : SignMask := ⟨62, by decide⟩
private def case_000029_word : PairWord := ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111, PairId.d111, PairId.d11m, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.dm11], by decide⟩
private def case_000029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000029_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.tpmp
  | ⟨3, _⟩ => Face.tmpm
  | ⟨4, _⟩ => Face.tmpp
  | ⟨5, _⟩ => Face.tppp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.ym
  | ⟨9, _⟩ => Face.yp
  | ⟨10, _⟩ => Face.zp
  | ⟨11, _⟩ => Face.zm
  | ⟨12, _⟩ => Face.tmmp
  | ⟨13, _⟩ => Face.tpmm
private def case_000029_b : Vec3 Rat := { x := (-100/9), y := (92/9), z := (68/9) }
private def case_000029_firstLine : StrictLin2 := { a := (25/19), b := (-25/19), c := (-49/19) }
private def case_000029_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

private theorem case_000029_rankWord :
    rankPairWord? case_000029_word = some case_000029_rank := by
  decide

private theorem case_000029_unrank :
    unrankPairWord case_000029_rank = case_000029_word := by
  exact (rankPairWord?_eq_some_iff_unrank case_000029_word case_000029_rank).1
    case_000029_rankWord |>.symm

private theorem case_000029_seqChoice :
    translationChoiceSeq case_000029_word case_000029_mask = case_000029_seq := by
  funext i
  fin_cases i <;> rfl

private theorem case_000029_seqAtRank :
    translationSeqAtRankMask case_000029_rank case_000029_mask = case_000029_seq := by
  rw [translationSeqAtRankMask, case_000029_unrank]
  exact case_000029_seqChoice

set_option maxHeartbeats 1200000 in
private theorem case_000029_bAtRank :
    translationBAtRankMask case_000029_rank case_000029_mask = case_000029_b := by
  rw [translationBAtRankMask, case_000029_seqAtRank]
  apply Vec3.ext <;>
    norm_num [case_000029_b, case_000029_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem case_000029_firstLine_eq :
    case_000029_support.firstLine case_000029_seq case_000029_b = case_000029_firstLine := by
  norm_num [case_000029_firstLine, case_000029_support, case_000029_seq, case_000029_b,
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
private theorem case_000029_secondLine_eq :
    case_000029_support.secondLine case_000029_seq case_000029_b = case_000029_secondLine := by
  norm_num [case_000029_secondLine, case_000029_support, case_000029_seq, case_000029_b,
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
private theorem case_000029_shape :
    OppMinusOneVarFirst case_000029_support case_000029_rank.val case_000029_mask := by
  intro hlt
  have hrank : (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_seq := by
    simpa [hrank] using case_000029_seqAtRank
  have hb :
      translationBAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_b := by
    simpa [hrank] using case_000029_bAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt case_000029_support case_000029_rank.val hlt
          case_000029_mask = case_000029_firstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, case_000029_firstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt case_000029_support case_000029_rank.val hlt
          case_000029_mask = case_000029_secondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, case_000029_secondLine_eq]
  have case_000029_sourceChecks :
      SourceChecks case_000029_support case_000029_rank.val hlt case_000029_mask := by
    simp [SourceChecks, hseq, case_000029_support,
      checkTranslationConstraintSource, case_000029_seq, impactFace]
  have case_000029_rowFirst :
      OppNegRow (FirstLineAt case_000029_support case_000029_rank.val hlt case_000029_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000029_firstLine, OppNegRow]
  have case_000029_fixedSecond :
      FixedRow (SecondLineAt case_000029_support case_000029_rank.val hlt case_000029_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000029_secondLine, FixedRow]
  exact ⟨case_000029_sourceChecks, case_000029_rowFirst, case_000029_fixedSecond⟩

private theorem case_000029_checkedAtRank :
    case_000029_support.Checked
      (translationSeqAtRankMask case_000029_rank case_000029_mask)
      (translationBAtRankMask case_000029_rank case_000029_mask) :=
  oppMinusOneVarFirst_checkedOn case_000029_support case_000029_rank.val case_000029_rank.isLt
    case_000029_mask case_000029_shape

private theorem case_000029_supportWitness
    (hlt : case_000029_rank.val < numPairWords) :
    exists support : TwoSourceFarkasSupport,
      support.Checked
        (translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask)
        (translationBAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask) := by
  have hrank : (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  exact ⟨case_000029_support, by simpa [hrank] using case_000029_checkedAtRank⟩

private theorem case_000029_sourcePredicate :
    (generatedSpec .c002).Predicate case_000029_rank.val case_000029_mask := by
  intro hlt
  have hrank : (⟨case_000029_rank.val, hlt⟩ : Fin numPairWords) = case_000029_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask =
        case_000029_seq := by
    simpa [hrank] using case_000029_seqAtRank
  have hshape := case_000029_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000029_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000029_rank.val, hlt⟩ case_000029_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000029_rank.val hlt case_000029_mask := by
    change SourceChecks case_000029_support case_000029_rank.val hlt case_000029_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000029_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000029_rank.val case_000029_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c002).support case_000029_rank.val case_000029_mask
  rw [show (generatedKey .c002).support = case_000029_support by rfl]
  intro hlt
  exact (case_000029_shape hlt).2

private theorem case_000029_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000029_rank.val case_000029_mask := by
  exact ⟨rfl, case_000029_rowsForKey⟩

theorem case_000029_candidateFacts :
    CandidateFacts .c002 6000480 ⟨62, by decide⟩ := by
  simpa [CandidateFacts, case_000029_rank, case_000029_mask] using
    And.intro case_000029_sourcePredicate case_000029_rowProducerApplies

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedTop5GlobalCandidateFactsSmoke
