import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.BadMaskCover
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksSmoke

/-!
Generated AP.16T precomputed positive-survivor signature smoke.

This diagnostic module extends AP.16S from one positive mask to every
positive mask in the singleton survivor signature.  It leaves the
GoodDirection-to-positive-mask theorem explicit and emits no facts for
masks that fail GoodDirection.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896PositivePrecomputedSignatureSmoke

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

private inductive GeneratedCandidate
  | c000
  | c001
  | c002
  | c003
  | c004
  | c005
  | c006
  | c007
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
  | .c000 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c001 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c002 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c003 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmp 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c004 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c005 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c006 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c007 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }

private def generatedKey : GeneratedCandidate -> SourceIndexStateKey
  | .c000 => {
      firstIndex := (generatedSpec .c000).first.index
      secondIndex := (generatedSpec .c000).second.index
      support := (generatedSpec .c000).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c001 => {
      firstIndex := (generatedSpec .c001).first.index
      secondIndex := (generatedSpec .c001).second.index
      support := (generatedSpec .c001).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c002 => {
      firstIndex := (generatedSpec .c002).first.index
      secondIndex := (generatedSpec .c002).second.index
      support := (generatedSpec .c002).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c003 => {
      firstIndex := (generatedSpec .c003).first.index
      secondIndex := (generatedSpec .c003).second.index
      support := (generatedSpec .c003).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c004 => {
      firstIndex := (generatedSpec .c004).first.index
      secondIndex := (generatedSpec .c004).second.index
      support := (generatedSpec .c004).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c005 => {
      firstIndex := (generatedSpec .c005).first.index
      secondIndex := (generatedSpec .c005).second.index
      support := (generatedSpec .c005).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c006 => {
      firstIndex := (generatedSpec .c006).first.index
      secondIndex := (generatedSpec .c006).second.index
      support := (generatedSpec .c006).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c007 => {
      firstIndex := (generatedSpec .c007).first.index
      secondIndex := (generatedSpec .c007).second.index
      support := (generatedSpec .c007).support
      template := SourceIndexTemplate.eqEqPosVarFirst }

private def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
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

private def generatedCandidateOfNat : Nat -> GeneratedCandidate
  | 9 => .c000
  | 13 => .c001
  | 16 => .c002
  | 18 => .c000
  | 22 => .c003
  | 24 => .c000
  | 28 => .c001
  | 30 => .c004
  | 31 => .c005
  | 45 => .c006
  | 47 => .c007
  | 54 => .c000
  | 55 => .c000
  | _ => .c000

private def generatedCandidateOfMask (mask : SignMask) : GeneratedCandidate :=
  generatedCandidateOfNat mask.val

private def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 9 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 28 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
    mask.val = 55

private def generatedSignatureFacts (mask : SignMask) : Prop :=
  (generatedSpec (generatedCandidateOfMask mask)).Predicate 896 mask /\
    (generatedRowProducer (generatedCandidateOfMask mask)).Applies
      (generatedKey (generatedCandidateOfMask mask)) 896 mask

/-- AP.16T positive mask `9`. -/
private def case_000000_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000000_mask : SignMask := ⟨9, by decide⟩
private def case_000000_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000000_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def case_000000_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-116/9) }
private def case_000000_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000000_secondLine : StrictLin2 := { a := (-39/58), b := (-39/58), c := (-48/29) }

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
    EqEqPosVarSecond case_000000_support case_000000_rank.val case_000000_mask := by
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
  have case_000000_fixedFirst :
      FixedRow (FirstLineAt case_000000_support case_000000_rank.val hlt case_000000_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000000_firstLine, FixedRow]
  have case_000000_rowSecond :
      EqEqPosRow (SecondLineAt case_000000_support case_000000_rank.val hlt case_000000_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000000_secondLine, EqEqPosRow]
  exact ⟨case_000000_sourceChecks, case_000000_fixedFirst, case_000000_rowSecond⟩

private theorem case_000000_checkedAtRank :
    case_000000_support.Checked
      (translationSeqAtRankMask case_000000_rank case_000000_mask)
      (translationBAtRankMask case_000000_rank case_000000_mask) :=
  eqEqPosVarSecond_checkedOn case_000000_support case_000000_rank.val case_000000_rank.isLt
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
    (generatedSpec .c000).Predicate case_000000_rank.val case_000000_mask := by
  intro hlt
  have hrank : (⟨case_000000_rank.val, hlt⟩ : Fin numPairWords) = case_000000_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask =
        case_000000_seq := by
    simpa [hrank] using case_000000_seqAtRank
  have hshape := case_000000_shape hlt
  have hfirst : (generatedSpec .c000).first.Holds
      (translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000000_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c000).second.Holds
      (translationSeqAtRankMask ⟨case_000000_rank.val, hlt⟩ case_000000_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c000).support case_000000_rank.val hlt case_000000_mask := by
    change SourceChecks case_000000_support case_000000_rank.val hlt case_000000_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000000_rowsForKey :
    (generatedKey .c000).template.Rows (generatedKey .c000).support
      case_000000_rank.val case_000000_mask := by
  change EqEqPosVarSecondRows (generatedKey .c000).support case_000000_rank.val case_000000_mask
  rw [show (generatedKey .c000).support = case_000000_support by rfl]
  intro hlt
  exact (case_000000_shape hlt).2

private theorem case_000000_rowProducerApplies :
    (generatedRowProducer .c000).Applies (generatedKey .c000)
      case_000000_rank.val case_000000_mask := by
  exact ⟨rfl, case_000000_rowsForKey⟩

private theorem case_000000_signatureFacts :
    generatedSignatureFacts case_000000_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000000_rank, case_000000_mask] using
      And.intro case_000000_sourcePredicate case_000000_rowProducerApplies

/-- AP.16T positive mask `13`. -/
private def case_000001_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000001_mask : SignMask := ⟨13, by decide⟩
private def case_000001_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000001_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000001_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (-68/9) }
private def case_000001_firstLine : StrictLin2 := { a := (-25/67), b := (25/67), c := (-57/67) }
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
    (generatedSpec .c001).Predicate case_000001_rank.val case_000001_mask := by
  intro hlt
  have hrank : (⟨case_000001_rank.val, hlt⟩ : Fin numPairWords) = case_000001_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask =
        case_000001_seq := by
    simpa [hrank] using case_000001_seqAtRank
  have hshape := case_000001_shape hlt
  have hfirst : (generatedSpec .c001).first.Holds
      (translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000001_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c001).second.Holds
      (translationSeqAtRankMask ⟨case_000001_rank.val, hlt⟩ case_000001_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c001).support case_000001_rank.val hlt case_000001_mask := by
    change SourceChecks case_000001_support case_000001_rank.val hlt case_000001_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000001_rowsForKey :
    (generatedKey .c001).template.Rows (generatedKey .c001).support
      case_000001_rank.val case_000001_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c001).support case_000001_rank.val case_000001_mask
  rw [show (generatedKey .c001).support = case_000001_support by rfl]
  intro hlt
  exact (case_000001_shape hlt).2

private theorem case_000001_rowProducerApplies :
    (generatedRowProducer .c001).Applies (generatedKey .c001)
      case_000001_rank.val case_000001_mask := by
  exact ⟨rfl, case_000001_rowsForKey⟩

private theorem case_000001_signatureFacts :
    generatedSignatureFacts case_000001_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000001_rank, case_000001_mask] using
      And.intro case_000001_sourcePredicate case_000001_rowProducerApplies

/-- AP.16T positive mask `16`. -/
private def case_000002_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000002_mask : SignMask := ⟨16, by decide⟩
private def case_000002_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000002_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000002_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (-52/9) }
private def case_000002_firstLine : StrictLin2 := { a := -1, b := -1, c := -19 }
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
    (generatedSpec .c002).Predicate case_000002_rank.val case_000002_mask := by
  intro hlt
  have hrank : (⟨case_000002_rank.val, hlt⟩ : Fin numPairWords) = case_000002_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask =
        case_000002_seq := by
    simpa [hrank] using case_000002_seqAtRank
  have hshape := case_000002_shape hlt
  have hfirst : (generatedSpec .c002).first.Holds
      (translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000002_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c002).second.Holds
      (translationSeqAtRankMask ⟨case_000002_rank.val, hlt⟩ case_000002_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c002).support case_000002_rank.val hlt case_000002_mask := by
    change SourceChecks case_000002_support case_000002_rank.val hlt case_000002_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000002_rowsForKey :
    (generatedKey .c002).template.Rows (generatedKey .c002).support
      case_000002_rank.val case_000002_mask := by
  change EqEqPosVarFirstRows (generatedKey .c002).support case_000002_rank.val case_000002_mask
  rw [show (generatedKey .c002).support = case_000002_support by rfl]
  intro hlt
  exact (case_000002_shape hlt).2

private theorem case_000002_rowProducerApplies :
    (generatedRowProducer .c002).Applies (generatedKey .c002)
      case_000002_rank.val case_000002_mask := by
  exact ⟨rfl, case_000002_rowsForKey⟩

private theorem case_000002_signatureFacts :
    generatedSignatureFacts case_000002_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000002_rank, case_000002_mask] using
      And.intro case_000002_sourcePredicate case_000002_rowProducerApplies

/-- AP.16T positive mask `18`. -/
private def case_000003_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000003_mask : SignMask := ⟨18, by decide⟩
private def case_000003_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000003_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000003_b : Vec3 Rat := { x := (-20/9), y := (-148/9), z := (20/9) }
private def case_000003_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000003_secondLine : StrictLin2 := { a := (-5/222), b := (-5/222), c := (-8/333) }

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
    EqEqPosVarSecond case_000003_support case_000003_rank.val case_000003_mask := by
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
  have case_000003_fixedFirst :
      FixedRow (FirstLineAt case_000003_support case_000003_rank.val hlt case_000003_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000003_firstLine, FixedRow]
  have case_000003_rowSecond :
      EqEqPosRow (SecondLineAt case_000003_support case_000003_rank.val hlt case_000003_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000003_secondLine, EqEqPosRow]
  exact ⟨case_000003_sourceChecks, case_000003_fixedFirst, case_000003_rowSecond⟩

private theorem case_000003_checkedAtRank :
    case_000003_support.Checked
      (translationSeqAtRankMask case_000003_rank case_000003_mask)
      (translationBAtRankMask case_000003_rank case_000003_mask) :=
  eqEqPosVarSecond_checkedOn case_000003_support case_000003_rank.val case_000003_rank.isLt
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
  change EqEqPosVarSecondRows (generatedKey .c000).support case_000003_rank.val case_000003_mask
  rw [show (generatedKey .c000).support = case_000003_support by rfl]
  intro hlt
  exact (case_000003_shape hlt).2

private theorem case_000003_rowProducerApplies :
    (generatedRowProducer .c000).Applies (generatedKey .c000)
      case_000003_rank.val case_000003_mask := by
  exact ⟨rfl, case_000003_rowsForKey⟩

private theorem case_000003_signatureFacts :
    generatedSignatureFacts case_000003_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000003_rank, case_000003_mask] using
      And.intro case_000003_sourcePredicate case_000003_rowProducerApplies

/-- AP.16T positive mask `22`. -/
private def case_000004_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000004_mask : SignMask := ⟨22, by decide⟩
private def case_000004_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000004_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000004_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (68/9) }
private def case_000004_firstLine : StrictLin2 := { a := -1, b := 1, c := (-67/17) }
private def case_000004_secondLine : StrictLin2 := { a := 1, b := -1, c := 1 }

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
    OppOneMinusVarFirst case_000004_support case_000004_rank.val case_000004_mask := by
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
      OppPosRow (FirstLineAt case_000004_support case_000004_rank.val hlt case_000004_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000004_firstLine, OppPosRow]
  have case_000004_fixedSecond :
      FixedRow (SecondLineAt case_000004_support case_000004_rank.val hlt case_000004_mask)
        (1) (-1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000004_secondLine, FixedRow]
  exact ⟨case_000004_sourceChecks, case_000004_rowFirst, case_000004_fixedSecond⟩

private theorem case_000004_checkedAtRank :
    case_000004_support.Checked
      (translationSeqAtRankMask case_000004_rank case_000004_mask)
      (translationBAtRankMask case_000004_rank case_000004_mask) :=
  oppOneMinusVarFirst_checkedOn case_000004_support case_000004_rank.val case_000004_rank.isLt
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
    (generatedSpec .c003).Predicate case_000004_rank.val case_000004_mask := by
  intro hlt
  have hrank : (⟨case_000004_rank.val, hlt⟩ : Fin numPairWords) = case_000004_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask =
        case_000004_seq := by
    simpa [hrank] using case_000004_seqAtRank
  have hshape := case_000004_shape hlt
  have hfirst : (generatedSpec .c003).first.Holds
      (translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000004_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c003).second.Holds
      (translationSeqAtRankMask ⟨case_000004_rank.val, hlt⟩ case_000004_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c003).support case_000004_rank.val hlt case_000004_mask := by
    change SourceChecks case_000004_support case_000004_rank.val hlt case_000004_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000004_rowsForKey :
    (generatedKey .c003).template.Rows (generatedKey .c003).support
      case_000004_rank.val case_000004_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c003).support case_000004_rank.val case_000004_mask
  rw [show (generatedKey .c003).support = case_000004_support by rfl]
  intro hlt
  exact (case_000004_shape hlt).2

private theorem case_000004_rowProducerApplies :
    (generatedRowProducer .c003).Applies (generatedKey .c003)
      case_000004_rank.val case_000004_mask := by
  exact ⟨rfl, case_000004_rowsForKey⟩

private theorem case_000004_signatureFacts :
    generatedSignatureFacts case_000004_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000004_rank, case_000004_mask] using
      And.intro case_000004_sourcePredicate case_000004_rowProducerApplies

/-- AP.16T positive mask `24`. -/
private def case_000005_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000005_mask : SignMask := ⟨24, by decide⟩
private def case_000005_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000005_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def case_000005_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-100/9) }
private def case_000005_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000005_secondLine : StrictLin2 := { a := (-51/1474), b := (-51/1474), c := (-135/737) }

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
    EqEqPosVarSecond case_000005_support case_000005_rank.val case_000005_mask := by
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
  have case_000005_fixedFirst :
      FixedRow (FirstLineAt case_000005_support case_000005_rank.val hlt case_000005_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000005_firstLine, FixedRow]
  have case_000005_rowSecond :
      EqEqPosRow (SecondLineAt case_000005_support case_000005_rank.val hlt case_000005_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000005_secondLine, EqEqPosRow]
  exact ⟨case_000005_sourceChecks, case_000005_fixedFirst, case_000005_rowSecond⟩

private theorem case_000005_checkedAtRank :
    case_000005_support.Checked
      (translationSeqAtRankMask case_000005_rank case_000005_mask)
      (translationBAtRankMask case_000005_rank case_000005_mask) :=
  eqEqPosVarSecond_checkedOn case_000005_support case_000005_rank.val case_000005_rank.isLt
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
    (generatedSpec .c000).Predicate case_000005_rank.val case_000005_mask := by
  intro hlt
  have hrank : (⟨case_000005_rank.val, hlt⟩ : Fin numPairWords) = case_000005_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask =
        case_000005_seq := by
    simpa [hrank] using case_000005_seqAtRank
  have hshape := case_000005_shape hlt
  have hfirst : (generatedSpec .c000).first.Holds
      (translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000005_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c000).second.Holds
      (translationSeqAtRankMask ⟨case_000005_rank.val, hlt⟩ case_000005_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c000).support case_000005_rank.val hlt case_000005_mask := by
    change SourceChecks case_000005_support case_000005_rank.val hlt case_000005_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000005_rowsForKey :
    (generatedKey .c000).template.Rows (generatedKey .c000).support
      case_000005_rank.val case_000005_mask := by
  change EqEqPosVarSecondRows (generatedKey .c000).support case_000005_rank.val case_000005_mask
  rw [show (generatedKey .c000).support = case_000005_support by rfl]
  intro hlt
  exact (case_000005_shape hlt).2

private theorem case_000005_rowProducerApplies :
    (generatedRowProducer .c000).Applies (generatedKey .c000)
      case_000005_rank.val case_000005_mask := by
  exact ⟨rfl, case_000005_rowsForKey⟩

private theorem case_000005_signatureFacts :
    generatedSignatureFacts case_000005_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000005_rank, case_000005_mask] using
      And.intro case_000005_sourcePredicate case_000005_rowProducerApplies

/-- AP.16T positive mask `28`. -/
private def case_000006_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000006_mask : SignMask := ⟨28, by decide⟩
private def case_000006_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def case_000006_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000006_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (-52/9) }
private def case_000006_firstLine : StrictLin2 := { a := -1, b := 1, c := -1 }
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
    (generatedSpec .c001).Predicate case_000006_rank.val case_000006_mask := by
  intro hlt
  have hrank : (⟨case_000006_rank.val, hlt⟩ : Fin numPairWords) = case_000006_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask =
        case_000006_seq := by
    simpa [hrank] using case_000006_seqAtRank
  have hshape := case_000006_shape hlt
  have hfirst : (generatedSpec .c001).first.Holds
      (translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000006_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c001).second.Holds
      (translationSeqAtRankMask ⟨case_000006_rank.val, hlt⟩ case_000006_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c001).support case_000006_rank.val hlt case_000006_mask := by
    change SourceChecks case_000006_support case_000006_rank.val hlt case_000006_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000006_rowsForKey :
    (generatedKey .c001).template.Rows (generatedKey .c001).support
      case_000006_rank.val case_000006_mask := by
  change OppOneMinusVarFirstRows (generatedKey .c001).support case_000006_rank.val case_000006_mask
  rw [show (generatedKey .c001).support = case_000006_support by rfl]
  intro hlt
  exact (case_000006_shape hlt).2

private theorem case_000006_rowProducerApplies :
    (generatedRowProducer .c001).Applies (generatedKey .c001)
      case_000006_rank.val case_000006_mask := by
  exact ⟨rfl, case_000006_rowsForKey⟩

private theorem case_000006_signatureFacts :
    generatedSignatureFacts case_000006_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000006_rank, case_000006_mask] using
      And.intro case_000006_sourcePredicate case_000006_rowProducerApplies

/-- AP.16T positive mask `30`. -/
private def case_000007_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000007_mask : SignMask := ⟨30, by decide⟩
private def case_000007_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000007_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000007_b : Vec3 Rat := { x := (-116/9), y := (-52/9), z := (20/9) }
private def case_000007_firstLine : StrictLin2 := { a := (29/11), b := (-29/11), c := (-109/11) }
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
    (generatedSpec .c004).Predicate case_000007_rank.val case_000007_mask := by
  intro hlt
  have hrank : (⟨case_000007_rank.val, hlt⟩ : Fin numPairWords) = case_000007_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask =
        case_000007_seq := by
    simpa [hrank] using case_000007_seqAtRank
  have hshape := case_000007_shape hlt
  have hfirst : (generatedSpec .c004).first.Holds
      (translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000007_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c004).second.Holds
      (translationSeqAtRankMask ⟨case_000007_rank.val, hlt⟩ case_000007_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c004).support case_000007_rank.val hlt case_000007_mask := by
    change SourceChecks case_000007_support case_000007_rank.val hlt case_000007_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000007_rowsForKey :
    (generatedKey .c004).template.Rows (generatedKey .c004).support
      case_000007_rank.val case_000007_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c004).support case_000007_rank.val case_000007_mask
  rw [show (generatedKey .c004).support = case_000007_support by rfl]
  intro hlt
  exact (case_000007_shape hlt).2

private theorem case_000007_rowProducerApplies :
    (generatedRowProducer .c004).Applies (generatedKey .c004)
      case_000007_rank.val case_000007_mask := by
  exact ⟨rfl, case_000007_rowsForKey⟩

private theorem case_000007_signatureFacts :
    generatedSignatureFacts case_000007_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000007_rank, case_000007_mask] using
      And.intro case_000007_sourcePredicate case_000007_rowProducerApplies

/-- AP.16T positive mask `31`. -/
private def case_000008_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000008_mask : SignMask := ⟨31, by decide⟩
private def case_000008_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000008_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000008_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (20/9) }
private def case_000008_firstLine : StrictLin2 := { a := (-29/19), b := (-29/19), c := (-295/57) }
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
    (generatedSpec .c005).Predicate case_000008_rank.val case_000008_mask := by
  intro hlt
  have hrank : (⟨case_000008_rank.val, hlt⟩ : Fin numPairWords) = case_000008_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask =
        case_000008_seq := by
    simpa [hrank] using case_000008_seqAtRank
  have hshape := case_000008_shape hlt
  have hfirst : (generatedSpec .c005).first.Holds
      (translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000008_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c005).second.Holds
      (translationSeqAtRankMask ⟨case_000008_rank.val, hlt⟩ case_000008_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c005).support case_000008_rank.val hlt case_000008_mask := by
    change SourceChecks case_000008_support case_000008_rank.val hlt case_000008_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000008_rowsForKey :
    (generatedKey .c005).template.Rows (generatedKey .c005).support
      case_000008_rank.val case_000008_mask := by
  change EqEqPosVarFirstRows (generatedKey .c005).support case_000008_rank.val case_000008_mask
  rw [show (generatedKey .c005).support = case_000008_support by rfl]
  intro hlt
  exact (case_000008_shape hlt).2

private theorem case_000008_rowProducerApplies :
    (generatedRowProducer .c005).Applies (generatedKey .c005)
      case_000008_rank.val case_000008_mask := by
  exact ⟨rfl, case_000008_rowsForKey⟩

private theorem case_000008_signatureFacts :
    generatedSignatureFacts case_000008_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000008_rank, case_000008_mask] using
      And.intro case_000008_sourcePredicate case_000008_rowProducerApplies

/-- AP.16T positive mask `45`. -/
private def case_000009_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000009_mask : SignMask := ⟨45, by decide⟩
private def case_000009_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def case_000009_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000009_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (-20/9) }
private def case_000009_firstLine : StrictLin2 := { a := 1, b := -1, c := (-71/13) }
private def case_000009_secondLine : StrictLin2 := { a := -1, b := 1, c := 1 }

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
    OppMinusOneVarFirst case_000009_support case_000009_rank.val case_000009_mask := by
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
  have case_000009_rowFirst :
      OppNegRow (FirstLineAt case_000009_support case_000009_rank.val hlt case_000009_mask) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000009_firstLine, OppNegRow]
  have case_000009_fixedSecond :
      FixedRow (SecondLineAt case_000009_support case_000009_rank.val hlt case_000009_mask)
        (-1) (1) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000009_secondLine, FixedRow]
  exact ⟨case_000009_sourceChecks, case_000009_rowFirst, case_000009_fixedSecond⟩

private theorem case_000009_checkedAtRank :
    case_000009_support.Checked
      (translationSeqAtRankMask case_000009_rank case_000009_mask)
      (translationBAtRankMask case_000009_rank case_000009_mask) :=
  oppMinusOneVarFirst_checkedOn case_000009_support case_000009_rank.val case_000009_rank.isLt
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
    (generatedSpec .c006).Predicate case_000009_rank.val case_000009_mask := by
  intro hlt
  have hrank : (⟨case_000009_rank.val, hlt⟩ : Fin numPairWords) = case_000009_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask =
        case_000009_seq := by
    simpa [hrank] using case_000009_seqAtRank
  have hshape := case_000009_shape hlt
  have hfirst : (generatedSpec .c006).first.Holds
      (translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000009_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c006).second.Holds
      (translationSeqAtRankMask ⟨case_000009_rank.val, hlt⟩ case_000009_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c006).support case_000009_rank.val hlt case_000009_mask := by
    change SourceChecks case_000009_support case_000009_rank.val hlt case_000009_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000009_rowsForKey :
    (generatedKey .c006).template.Rows (generatedKey .c006).support
      case_000009_rank.val case_000009_mask := by
  change OppMinusOneVarFirstRows (generatedKey .c006).support case_000009_rank.val case_000009_mask
  rw [show (generatedKey .c006).support = case_000009_support by rfl]
  intro hlt
  exact (case_000009_shape hlt).2

private theorem case_000009_rowProducerApplies :
    (generatedRowProducer .c006).Applies (generatedKey .c006)
      case_000009_rank.val case_000009_mask := by
  exact ⟨rfl, case_000009_rowsForKey⟩

private theorem case_000009_signatureFacts :
    generatedSignatureFacts case_000009_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000009_rank, case_000009_mask] using
      And.intro case_000009_sourcePredicate case_000009_rowProducerApplies

/-- AP.16T positive mask `47`. -/
private def case_000010_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000010_mask : SignMask := ⟨47, by decide⟩
private def case_000010_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def case_000010_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def case_000010_b : Vec3 Rat := { x := (-52/9), y := (148/9), z := (52/9) }
private def case_000010_firstLine : StrictLin2 := { a := (-26/63), b := (-26/63), c := (-16/21) }
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
    (generatedSpec .c007).Predicate case_000010_rank.val case_000010_mask := by
  intro hlt
  have hrank : (⟨case_000010_rank.val, hlt⟩ : Fin numPairWords) = case_000010_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask =
        case_000010_seq := by
    simpa [hrank] using case_000010_seqAtRank
  have hshape := case_000010_shape hlt
  have hfirst : (generatedSpec .c007).first.Holds
      (translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000010_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c007).second.Holds
      (translationSeqAtRankMask ⟨case_000010_rank.val, hlt⟩ case_000010_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c007).support case_000010_rank.val hlt case_000010_mask := by
    change SourceChecks case_000010_support case_000010_rank.val hlt case_000010_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000010_rowsForKey :
    (generatedKey .c007).template.Rows (generatedKey .c007).support
      case_000010_rank.val case_000010_mask := by
  change EqEqPosVarFirstRows (generatedKey .c007).support case_000010_rank.val case_000010_mask
  rw [show (generatedKey .c007).support = case_000010_support by rfl]
  intro hlt
  exact (case_000010_shape hlt).2

private theorem case_000010_rowProducerApplies :
    (generatedRowProducer .c007).Applies (generatedKey .c007)
      case_000010_rank.val case_000010_mask := by
  exact ⟨rfl, case_000010_rowsForKey⟩

private theorem case_000010_signatureFacts :
    generatedSignatureFacts case_000010_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000010_rank, case_000010_mask] using
      And.intro case_000010_sourcePredicate case_000010_rowProducerApplies

/-- AP.16T positive mask `54`. -/
private def case_000011_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000011_mask : SignMask := ⟨54, by decide⟩
private def case_000011_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000011_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000011_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (116/9) }
private def case_000011_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000011_secondLine : StrictLin2 := { a := (-15/154), b := (-15/154), c := (-48/77) }

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

private theorem case_000011_signatureFacts :
    generatedSignatureFacts case_000011_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000011_rank, case_000011_mask] using
      And.intro case_000011_sourcePredicate case_000011_rowProducerApplies

/-- AP.16T positive mask `55`. -/
private def case_000012_rank : Fin numPairWords := ⟨896, by decide⟩
private def case_000012_mask : SignMask := ⟨55, by decide⟩
private def case_000012_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def case_000012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def case_000012_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def case_000012_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (116/9) }
private def case_000012_firstLine : StrictLin2 := { a := 1, b := 1, c := 1 }
private def case_000012_secondLine : StrictLin2 := { a := (-15/754), b := (-15/754), c := (-9/29) }

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
    EqEqPosVarSecond case_000012_support case_000012_rank.val case_000012_mask := by
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
  have case_000012_fixedFirst :
      FixedRow (FirstLineAt case_000012_support case_000012_rank.val hlt case_000012_mask)
        (1) (1) := by
    rw [FirstLineAt, hfirst]
    norm_num [case_000012_firstLine, FixedRow]
  have case_000012_rowSecond :
      EqEqPosRow (SecondLineAt case_000012_support case_000012_rank.val hlt case_000012_mask) := by
    rw [SecondLineAt, hsecond]
    norm_num [case_000012_secondLine, EqEqPosRow]
  exact ⟨case_000012_sourceChecks, case_000012_fixedFirst, case_000012_rowSecond⟩

private theorem case_000012_checkedAtRank :
    case_000012_support.Checked
      (translationSeqAtRankMask case_000012_rank case_000012_mask)
      (translationBAtRankMask case_000012_rank case_000012_mask) :=
  eqEqPosVarSecond_checkedOn case_000012_support case_000012_rank.val case_000012_rank.isLt
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
    (generatedSpec .c000).Predicate case_000012_rank.val case_000012_mask := by
  intro hlt
  have hrank : (⟨case_000012_rank.val, hlt⟩ : Fin numPairWords) = case_000012_rank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask =
        case_000012_seq := by
    simpa [hrank] using case_000012_seqAtRank
  have hshape := case_000012_shape hlt
  have hfirst : (generatedSpec .c000).first.Holds
      (translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds, hseq, case_000012_seq, impactFace] <;> decide
  have hsecond : (generatedSpec .c000).second.Holds
      (translationSeqAtRankMask ⟨case_000012_rank.val, hlt⟩ case_000012_mask) := by
    simp [generatedSpec, SourcePositionSpec.Holds]
  have hsourceChecks :
      SourceChecks (generatedSpec .c000).support case_000012_rank.val hlt case_000012_mask := by
    change SourceChecks case_000012_support case_000012_rank.val hlt case_000012_mask
    exact hshape.1
  exact ⟨hfirst, hsecond, hsourceChecks⟩

private theorem case_000012_rowsForKey :
    (generatedKey .c000).template.Rows (generatedKey .c000).support
      case_000012_rank.val case_000012_mask := by
  change EqEqPosVarSecondRows (generatedKey .c000).support case_000012_rank.val case_000012_mask
  rw [show (generatedKey .c000).support = case_000012_support by rfl]
  intro hlt
  exact (case_000012_shape hlt).2

private theorem case_000012_rowProducerApplies :
    (generatedRowProducer .c000).Applies (generatedKey .c000)
      case_000012_rank.val case_000012_mask := by
  exact ⟨rfl, case_000012_rowsForKey⟩

private theorem case_000012_signatureFacts :
    generatedSignatureFacts case_000012_mask := by
  simpa [generatedSignatureFacts, generatedCandidateOfMask,
    generatedCandidateOfNat, case_000012_rank, case_000012_mask] using
      And.intro case_000012_sourcePredicate case_000012_rowProducerApplies

private def rank_000000896_mask_00_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_00_badDirection_mask : SignMask := ⟨0, by decide⟩
private def rank_000000896_mask_00_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_00_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_00_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (-68/9) }
private def rank_000000896_mask_00_badDirection_denom : Rat := (-4/9)

private theorem rank_000000896_mask_00_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_00_badDirection_word = some rank_000000896_mask_00_badDirection_rank := by
  decide

private theorem rank_000000896_mask_00_badDirection_unrank :
    unrankPairWord rank_000000896_mask_00_badDirection_rank = rank_000000896_mask_00_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_00_badDirection_word rank_000000896_mask_00_badDirection_rank).1
    rank_000000896_mask_00_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_00_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_00_badDirection_word rank_000000896_mask_00_badDirection_mask = rank_000000896_mask_00_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_00_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_00_badDirection_rank rank_000000896_mask_00_badDirection_mask = rank_000000896_mask_00_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_00_badDirection_unrank]
  exact rank_000000896_mask_00_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_00_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_00_badDirection_rank rank_000000896_mask_00_badDirection_mask = rank_000000896_mask_00_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_00_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_00_badDirection_b, rank_000000896_mask_00_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_00_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_00_badDirection_rank rank_000000896_mask_00_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_00_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_00_badDirection_seqAtRank, rank_000000896_mask_00_badDirection_bAtRank]
  norm_num [rank_000000896_mask_00_badDirection_denom, rank_000000896_mask_00_badDirection_seq, rank_000000896_mask_00_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_00_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_00_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_00_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_00_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_00_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_00_badDirection_denom]

private def rank_000000896_mask_01_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_01_badDirection_mask : SignMask := ⟨1, by decide⟩
private def rank_000000896_mask_01_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_01_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_01_badDirection_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (-68/9) }
private def rank_000000896_mask_01_badDirection_denom : Rat := (-76/9)

private theorem rank_000000896_mask_01_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_01_badDirection_word = some rank_000000896_mask_01_badDirection_rank := by
  decide

private theorem rank_000000896_mask_01_badDirection_unrank :
    unrankPairWord rank_000000896_mask_01_badDirection_rank = rank_000000896_mask_01_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_01_badDirection_word rank_000000896_mask_01_badDirection_rank).1
    rank_000000896_mask_01_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_01_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_01_badDirection_word rank_000000896_mask_01_badDirection_mask = rank_000000896_mask_01_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_01_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_01_badDirection_rank rank_000000896_mask_01_badDirection_mask = rank_000000896_mask_01_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_01_badDirection_unrank]
  exact rank_000000896_mask_01_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_01_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_01_badDirection_rank rank_000000896_mask_01_badDirection_mask = rank_000000896_mask_01_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_01_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_01_badDirection_b, rank_000000896_mask_01_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_01_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_01_badDirection_rank rank_000000896_mask_01_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_01_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_01_badDirection_seqAtRank, rank_000000896_mask_01_badDirection_bAtRank]
  norm_num [rank_000000896_mask_01_badDirection_denom, rank_000000896_mask_01_badDirection_seq, rank_000000896_mask_01_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_01_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_01_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_01_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_01_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_01_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_01_badDirection_denom]

private def rank_000000896_mask_02_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_02_badDirection_mask : SignMask := ⟨2, by decide⟩
private def rank_000000896_mask_02_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_02_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_02_badDirection_b : Vec3 Rat := { x := (-4/9), y := (-68/9), z := (4/9) }
private def rank_000000896_mask_02_badDirection_denom : Rat := (-116/9)

private theorem rank_000000896_mask_02_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_02_badDirection_word = some rank_000000896_mask_02_badDirection_rank := by
  decide

private theorem rank_000000896_mask_02_badDirection_unrank :
    unrankPairWord rank_000000896_mask_02_badDirection_rank = rank_000000896_mask_02_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_02_badDirection_word rank_000000896_mask_02_badDirection_rank).1
    rank_000000896_mask_02_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_02_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_02_badDirection_word rank_000000896_mask_02_badDirection_mask = rank_000000896_mask_02_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_02_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_02_badDirection_rank rank_000000896_mask_02_badDirection_mask = rank_000000896_mask_02_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_02_badDirection_unrank]
  exact rank_000000896_mask_02_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_02_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_02_badDirection_rank rank_000000896_mask_02_badDirection_mask = rank_000000896_mask_02_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_02_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_02_badDirection_b, rank_000000896_mask_02_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_02_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_02_badDirection_rank rank_000000896_mask_02_badDirection_mask ⟨11, by decide⟩ =
      rank_000000896_mask_02_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_02_badDirection_seqAtRank, rank_000000896_mask_02_badDirection_bAtRank]
  norm_num [rank_000000896_mask_02_badDirection_denom, rank_000000896_mask_02_badDirection_seq, rank_000000896_mask_02_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_02_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_02_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_02_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_02_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_02_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_02_badDirection_denom]

private def rank_000000896_mask_03_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_03_badDirection_mask : SignMask := ⟨3, by decide⟩
private def rank_000000896_mask_03_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_03_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_03_badDirection_b : Vec3 Rat := { x := (-4/9), y := (4/9), z := (4/9) }
private def rank_000000896_mask_03_badDirection_denom : Rat := (-4/9)

private theorem rank_000000896_mask_03_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_03_badDirection_word = some rank_000000896_mask_03_badDirection_rank := by
  decide

private theorem rank_000000896_mask_03_badDirection_unrank :
    unrankPairWord rank_000000896_mask_03_badDirection_rank = rank_000000896_mask_03_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_03_badDirection_word rank_000000896_mask_03_badDirection_rank).1
    rank_000000896_mask_03_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_03_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_03_badDirection_word rank_000000896_mask_03_badDirection_mask = rank_000000896_mask_03_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_03_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_03_badDirection_rank rank_000000896_mask_03_badDirection_mask = rank_000000896_mask_03_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_03_badDirection_unrank]
  exact rank_000000896_mask_03_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_03_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_03_badDirection_rank rank_000000896_mask_03_badDirection_mask = rank_000000896_mask_03_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_03_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_03_badDirection_b, rank_000000896_mask_03_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_03_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_03_badDirection_rank rank_000000896_mask_03_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_03_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_03_badDirection_seqAtRank, rank_000000896_mask_03_badDirection_bAtRank]
  norm_num [rank_000000896_mask_03_badDirection_denom, rank_000000896_mask_03_badDirection_seq, rank_000000896_mask_03_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_03_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_03_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_03_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_03_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_03_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_03_badDirection_denom]

private def rank_000000896_mask_04_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_04_badDirection_mask : SignMask := ⟨4, by decide⟩
private def rank_000000896_mask_04_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_04_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_04_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-20/9) }
private def rank_000000896_mask_04_badDirection_denom : Rat := (-52/9)

private theorem rank_000000896_mask_04_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_04_badDirection_word = some rank_000000896_mask_04_badDirection_rank := by
  decide

private theorem rank_000000896_mask_04_badDirection_unrank :
    unrankPairWord rank_000000896_mask_04_badDirection_rank = rank_000000896_mask_04_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_04_badDirection_word rank_000000896_mask_04_badDirection_rank).1
    rank_000000896_mask_04_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_04_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_04_badDirection_word rank_000000896_mask_04_badDirection_mask = rank_000000896_mask_04_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_04_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_04_badDirection_rank rank_000000896_mask_04_badDirection_mask = rank_000000896_mask_04_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_04_badDirection_unrank]
  exact rank_000000896_mask_04_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_04_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_04_badDirection_rank rank_000000896_mask_04_badDirection_mask = rank_000000896_mask_04_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_04_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_04_badDirection_b, rank_000000896_mask_04_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_04_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_04_badDirection_rank rank_000000896_mask_04_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_04_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_04_badDirection_seqAtRank, rank_000000896_mask_04_badDirection_bAtRank]
  norm_num [rank_000000896_mask_04_badDirection_denom, rank_000000896_mask_04_badDirection_seq, rank_000000896_mask_04_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_04_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_04_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_04_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_04_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_04_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_04_badDirection_denom]

private def rank_000000896_mask_05_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_05_badDirection_mask : SignMask := ⟨5, by decide⟩
private def rank_000000896_mask_05_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_05_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_05_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-20/9) }
private def rank_000000896_mask_05_badDirection_denom : Rat := (-124/9)

private theorem rank_000000896_mask_05_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_05_badDirection_word = some rank_000000896_mask_05_badDirection_rank := by
  decide

private theorem rank_000000896_mask_05_badDirection_unrank :
    unrankPairWord rank_000000896_mask_05_badDirection_rank = rank_000000896_mask_05_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_05_badDirection_word rank_000000896_mask_05_badDirection_rank).1
    rank_000000896_mask_05_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_05_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_05_badDirection_word rank_000000896_mask_05_badDirection_mask = rank_000000896_mask_05_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_05_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_05_badDirection_rank rank_000000896_mask_05_badDirection_mask = rank_000000896_mask_05_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_05_badDirection_unrank]
  exact rank_000000896_mask_05_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_05_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_05_badDirection_rank rank_000000896_mask_05_badDirection_mask = rank_000000896_mask_05_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_05_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_05_badDirection_b, rank_000000896_mask_05_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_05_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_05_badDirection_rank rank_000000896_mask_05_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_05_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_05_badDirection_seqAtRank, rank_000000896_mask_05_badDirection_bAtRank]
  norm_num [rank_000000896_mask_05_badDirection_denom, rank_000000896_mask_05_badDirection_seq, rank_000000896_mask_05_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_05_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_05_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_05_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_05_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_05_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_05_badDirection_denom]

private def rank_000000896_mask_06_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_06_badDirection_mask : SignMask := ⟨6, by decide⟩
private def rank_000000896_mask_06_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_06_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_06_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (52/9) }
private def rank_000000896_mask_06_badDirection_denom : Rat := (-68/9)

private theorem rank_000000896_mask_06_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_06_badDirection_word = some rank_000000896_mask_06_badDirection_rank := by
  decide

private theorem rank_000000896_mask_06_badDirection_unrank :
    unrankPairWord rank_000000896_mask_06_badDirection_rank = rank_000000896_mask_06_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_06_badDirection_word rank_000000896_mask_06_badDirection_rank).1
    rank_000000896_mask_06_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_06_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_06_badDirection_word rank_000000896_mask_06_badDirection_mask = rank_000000896_mask_06_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_06_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_06_badDirection_rank rank_000000896_mask_06_badDirection_mask = rank_000000896_mask_06_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_06_badDirection_unrank]
  exact rank_000000896_mask_06_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_06_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_06_badDirection_rank rank_000000896_mask_06_badDirection_mask = rank_000000896_mask_06_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_06_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_06_badDirection_b, rank_000000896_mask_06_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_06_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_06_badDirection_rank rank_000000896_mask_06_badDirection_mask ⟨11, by decide⟩ =
      rank_000000896_mask_06_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_06_badDirection_seqAtRank, rank_000000896_mask_06_badDirection_bAtRank]
  norm_num [rank_000000896_mask_06_badDirection_denom, rank_000000896_mask_06_badDirection_seq, rank_000000896_mask_06_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_06_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_06_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_06_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_06_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_06_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_06_badDirection_denom]

private def rank_000000896_mask_07_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_07_badDirection_mask : SignMask := ⟨7, by decide⟩
private def rank_000000896_mask_07_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_07_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_07_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (52/9) }
private def rank_000000896_mask_07_badDirection_denom : Rat := (-52/9)

private theorem rank_000000896_mask_07_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_07_badDirection_word = some rank_000000896_mask_07_badDirection_rank := by
  decide

private theorem rank_000000896_mask_07_badDirection_unrank :
    unrankPairWord rank_000000896_mask_07_badDirection_rank = rank_000000896_mask_07_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_07_badDirection_word rank_000000896_mask_07_badDirection_rank).1
    rank_000000896_mask_07_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_07_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_07_badDirection_word rank_000000896_mask_07_badDirection_mask = rank_000000896_mask_07_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_07_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_07_badDirection_rank rank_000000896_mask_07_badDirection_mask = rank_000000896_mask_07_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_07_badDirection_unrank]
  exact rank_000000896_mask_07_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_07_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_07_badDirection_rank rank_000000896_mask_07_badDirection_mask = rank_000000896_mask_07_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_07_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_07_badDirection_b, rank_000000896_mask_07_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_07_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_07_badDirection_rank rank_000000896_mask_07_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_07_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_07_badDirection_seqAtRank, rank_000000896_mask_07_badDirection_bAtRank]
  norm_num [rank_000000896_mask_07_badDirection_denom, rank_000000896_mask_07_badDirection_seq, rank_000000896_mask_07_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_07_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_07_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_07_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_07_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_07_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_07_badDirection_denom]

private def rank_000000896_mask_08_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_08_badDirection_mask : SignMask := ⟨8, by decide⟩
private def rank_000000896_mask_08_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_08_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_08_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-116/9) }
private def rank_000000896_mask_08_badDirection_denom : Rat := (-4/3)

private theorem rank_000000896_mask_08_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_08_badDirection_word = some rank_000000896_mask_08_badDirection_rank := by
  decide

private theorem rank_000000896_mask_08_badDirection_unrank :
    unrankPairWord rank_000000896_mask_08_badDirection_rank = rank_000000896_mask_08_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_08_badDirection_word rank_000000896_mask_08_badDirection_rank).1
    rank_000000896_mask_08_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_08_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_08_badDirection_word rank_000000896_mask_08_badDirection_mask = rank_000000896_mask_08_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_08_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_08_badDirection_rank rank_000000896_mask_08_badDirection_mask = rank_000000896_mask_08_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_08_badDirection_unrank]
  exact rank_000000896_mask_08_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_08_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_08_badDirection_rank rank_000000896_mask_08_badDirection_mask = rank_000000896_mask_08_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_08_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_08_badDirection_b, rank_000000896_mask_08_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_08_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_08_badDirection_rank rank_000000896_mask_08_badDirection_mask ⟨11, by decide⟩ =
      rank_000000896_mask_08_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_08_badDirection_seqAtRank, rank_000000896_mask_08_badDirection_bAtRank]
  norm_num [rank_000000896_mask_08_badDirection_denom, rank_000000896_mask_08_badDirection_seq, rank_000000896_mask_08_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_08_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_08_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_08_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_08_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_08_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_08_badDirection_denom]

private def rank_000000896_mask_10_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_10_badDirection_mask : SignMask := ⟨10, by decide⟩
private def rank_000000896_mask_10_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_10_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_10_badDirection_b : Vec3 Rat := { x := (-52/9), y := (-20/9), z := (-44/9) }
private def rank_000000896_mask_10_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_10_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_10_badDirection_word = some rank_000000896_mask_10_badDirection_rank := by
  decide

private theorem rank_000000896_mask_10_badDirection_unrank :
    unrankPairWord rank_000000896_mask_10_badDirection_rank = rank_000000896_mask_10_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_10_badDirection_word rank_000000896_mask_10_badDirection_rank).1
    rank_000000896_mask_10_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_10_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_10_badDirection_word rank_000000896_mask_10_badDirection_mask = rank_000000896_mask_10_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_10_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_10_badDirection_rank rank_000000896_mask_10_badDirection_mask = rank_000000896_mask_10_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_10_badDirection_unrank]
  exact rank_000000896_mask_10_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_10_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_10_badDirection_rank rank_000000896_mask_10_badDirection_mask = rank_000000896_mask_10_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_10_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_10_badDirection_b, rank_000000896_mask_10_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_10_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_10_badDirection_rank rank_000000896_mask_10_badDirection_mask ⟨4, by decide⟩ =
      rank_000000896_mask_10_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_10_badDirection_seqAtRank, rank_000000896_mask_10_badDirection_bAtRank]
  norm_num [rank_000000896_mask_10_badDirection_denom, rank_000000896_mask_10_badDirection_seq, rank_000000896_mask_10_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_10_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_10_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_10_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_10_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_10_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_10_badDirection_denom]

private def rank_000000896_mask_11_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_11_badDirection_mask : SignMask := ⟨11, by decide⟩
private def rank_000000896_mask_11_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_11_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_11_badDirection_b : Vec3 Rat := { x := (-52/9), y := (52/9), z := (-44/9) }
private def rank_000000896_mask_11_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_11_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_11_badDirection_word = some rank_000000896_mask_11_badDirection_rank := by
  decide

private theorem rank_000000896_mask_11_badDirection_unrank :
    unrankPairWord rank_000000896_mask_11_badDirection_rank = rank_000000896_mask_11_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_11_badDirection_word rank_000000896_mask_11_badDirection_rank).1
    rank_000000896_mask_11_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_11_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_11_badDirection_word rank_000000896_mask_11_badDirection_mask = rank_000000896_mask_11_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_11_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_11_badDirection_rank rank_000000896_mask_11_badDirection_mask = rank_000000896_mask_11_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_11_badDirection_unrank]
  exact rank_000000896_mask_11_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_11_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_11_badDirection_rank rank_000000896_mask_11_badDirection_mask = rank_000000896_mask_11_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_11_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_11_badDirection_b, rank_000000896_mask_11_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_11_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_11_badDirection_rank rank_000000896_mask_11_badDirection_mask ⟨4, by decide⟩ =
      rank_000000896_mask_11_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_11_badDirection_seqAtRank, rank_000000896_mask_11_badDirection_bAtRank]
  norm_num [rank_000000896_mask_11_badDirection_denom, rank_000000896_mask_11_badDirection_seq, rank_000000896_mask_11_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_11_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_11_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_11_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_11_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_11_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_11_badDirection_denom]

private def rank_000000896_mask_12_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_12_badDirection_mask : SignMask := ⟨12, by decide⟩
private def rank_000000896_mask_12_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_12_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_12_badDirection_b : Vec3 Rat := { x := (-100/9), y := (28/9), z := (-68/9) }
private def rank_000000896_mask_12_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_12_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_12_badDirection_word = some rank_000000896_mask_12_badDirection_rank := by
  decide

private theorem rank_000000896_mask_12_badDirection_unrank :
    unrankPairWord rank_000000896_mask_12_badDirection_rank = rank_000000896_mask_12_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_12_badDirection_word rank_000000896_mask_12_badDirection_rank).1
    rank_000000896_mask_12_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_12_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_12_badDirection_word rank_000000896_mask_12_badDirection_mask = rank_000000896_mask_12_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_12_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_12_badDirection_rank rank_000000896_mask_12_badDirection_mask = rank_000000896_mask_12_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_12_badDirection_unrank]
  exact rank_000000896_mask_12_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_12_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_12_badDirection_rank rank_000000896_mask_12_badDirection_mask = rank_000000896_mask_12_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_12_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_12_badDirection_b, rank_000000896_mask_12_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_12_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_12_badDirection_rank rank_000000896_mask_12_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_12_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_12_badDirection_seqAtRank, rank_000000896_mask_12_badDirection_bAtRank]
  norm_num [rank_000000896_mask_12_badDirection_denom, rank_000000896_mask_12_badDirection_seq, rank_000000896_mask_12_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_12_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_12_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_12_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_12_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_12_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_12_badDirection_denom]

private def rank_000000896_mask_14_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_14_badDirection_mask : SignMask := ⟨14, by decide⟩
private def rank_000000896_mask_14_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_14_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_14_badDirection_b : Vec3 Rat := { x := (-100/9), y := (28/9), z := (4/9) }
private def rank_000000896_mask_14_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_14_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_14_badDirection_word = some rank_000000896_mask_14_badDirection_rank := by
  decide

private theorem rank_000000896_mask_14_badDirection_unrank :
    unrankPairWord rank_000000896_mask_14_badDirection_rank = rank_000000896_mask_14_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_14_badDirection_word rank_000000896_mask_14_badDirection_rank).1
    rank_000000896_mask_14_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_14_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_14_badDirection_word rank_000000896_mask_14_badDirection_mask = rank_000000896_mask_14_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_14_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_14_badDirection_rank rank_000000896_mask_14_badDirection_mask = rank_000000896_mask_14_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_14_badDirection_unrank]
  exact rank_000000896_mask_14_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_14_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_14_badDirection_rank rank_000000896_mask_14_badDirection_mask = rank_000000896_mask_14_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_14_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_14_badDirection_b, rank_000000896_mask_14_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_14_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_14_badDirection_rank rank_000000896_mask_14_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_14_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_14_badDirection_seqAtRank, rank_000000896_mask_14_badDirection_bAtRank]
  norm_num [rank_000000896_mask_14_badDirection_denom, rank_000000896_mask_14_badDirection_seq, rank_000000896_mask_14_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_14_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_14_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_14_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_14_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_14_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_14_badDirection_denom]

private def rank_000000896_mask_15_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_15_badDirection_mask : SignMask := ⟨15, by decide⟩
private def rank_000000896_mask_15_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_15_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_15_badDirection_b : Vec3 Rat := { x := (-100/9), y := (100/9), z := (4/9) }
private def rank_000000896_mask_15_badDirection_denom : Rat := (-4/9)

private theorem rank_000000896_mask_15_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_15_badDirection_word = some rank_000000896_mask_15_badDirection_rank := by
  decide

private theorem rank_000000896_mask_15_badDirection_unrank :
    unrankPairWord rank_000000896_mask_15_badDirection_rank = rank_000000896_mask_15_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_15_badDirection_word rank_000000896_mask_15_badDirection_rank).1
    rank_000000896_mask_15_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_15_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_15_badDirection_word rank_000000896_mask_15_badDirection_mask = rank_000000896_mask_15_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_15_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_15_badDirection_rank rank_000000896_mask_15_badDirection_mask = rank_000000896_mask_15_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_15_badDirection_unrank]
  exact rank_000000896_mask_15_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_15_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_15_badDirection_rank rank_000000896_mask_15_badDirection_mask = rank_000000896_mask_15_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_15_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_15_badDirection_b, rank_000000896_mask_15_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_15_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_15_badDirection_rank rank_000000896_mask_15_badDirection_mask ⟨8, by decide⟩ =
      rank_000000896_mask_15_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_15_badDirection_seqAtRank, rank_000000896_mask_15_badDirection_bAtRank]
  norm_num [rank_000000896_mask_15_badDirection_denom, rank_000000896_mask_15_badDirection_seq, rank_000000896_mask_15_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_15_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_15_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_15_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_15_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_15_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_15_badDirection_denom]

private def rank_000000896_mask_17_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_17_badDirection_mask : SignMask := ⟨17, by decide⟩
private def rank_000000896_mask_17_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_17_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_17_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-76/9), z := (-52/9) }
private def rank_000000896_mask_17_badDirection_denom : Rat := (-76/9)

private theorem rank_000000896_mask_17_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_17_badDirection_word = some rank_000000896_mask_17_badDirection_rank := by
  decide

private theorem rank_000000896_mask_17_badDirection_unrank :
    unrankPairWord rank_000000896_mask_17_badDirection_rank = rank_000000896_mask_17_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_17_badDirection_word rank_000000896_mask_17_badDirection_rank).1
    rank_000000896_mask_17_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_17_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_17_badDirection_word rank_000000896_mask_17_badDirection_mask = rank_000000896_mask_17_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_17_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_17_badDirection_rank rank_000000896_mask_17_badDirection_mask = rank_000000896_mask_17_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_17_badDirection_unrank]
  exact rank_000000896_mask_17_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_17_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_17_badDirection_rank rank_000000896_mask_17_badDirection_mask = rank_000000896_mask_17_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_17_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_17_badDirection_b, rank_000000896_mask_17_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_17_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_17_badDirection_rank rank_000000896_mask_17_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_17_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_17_badDirection_seqAtRank, rank_000000896_mask_17_badDirection_bAtRank]
  norm_num [rank_000000896_mask_17_badDirection_denom, rank_000000896_mask_17_badDirection_seq, rank_000000896_mask_17_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_17_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_17_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_17_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_17_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_17_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_17_badDirection_denom]

private def rank_000000896_mask_19_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_19_badDirection_mask : SignMask := ⟨19, by decide⟩
private def rank_000000896_mask_19_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_19_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_19_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-76/9), z := (20/9) }
private def rank_000000896_mask_19_badDirection_denom : Rat := (-76/9)

private theorem rank_000000896_mask_19_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_19_badDirection_word = some rank_000000896_mask_19_badDirection_rank := by
  decide

private theorem rank_000000896_mask_19_badDirection_unrank :
    unrankPairWord rank_000000896_mask_19_badDirection_rank = rank_000000896_mask_19_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_19_badDirection_word rank_000000896_mask_19_badDirection_rank).1
    rank_000000896_mask_19_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_19_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_19_badDirection_word rank_000000896_mask_19_badDirection_mask = rank_000000896_mask_19_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_19_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_19_badDirection_rank rank_000000896_mask_19_badDirection_mask = rank_000000896_mask_19_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_19_badDirection_unrank]
  exact rank_000000896_mask_19_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_19_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_19_badDirection_rank rank_000000896_mask_19_badDirection_mask = rank_000000896_mask_19_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_19_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_19_badDirection_b, rank_000000896_mask_19_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_19_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_19_badDirection_rank rank_000000896_mask_19_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_19_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_19_badDirection_seqAtRank, rank_000000896_mask_19_badDirection_bAtRank]
  norm_num [rank_000000896_mask_19_badDirection_denom, rank_000000896_mask_19_badDirection_seq, rank_000000896_mask_19_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_19_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_19_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_19_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_19_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_19_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_19_badDirection_denom]

private def rank_000000896_mask_20_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_20_badDirection_mask : SignMask := ⟨20, by decide⟩
private def rank_000000896_mask_20_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_20_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_20_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-4/9) }
private def rank_000000896_mask_20_badDirection_denom : Rat := -4

private theorem rank_000000896_mask_20_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_20_badDirection_word = some rank_000000896_mask_20_badDirection_rank := by
  decide

private theorem rank_000000896_mask_20_badDirection_unrank :
    unrankPairWord rank_000000896_mask_20_badDirection_rank = rank_000000896_mask_20_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_20_badDirection_word rank_000000896_mask_20_badDirection_rank).1
    rank_000000896_mask_20_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_20_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_20_badDirection_word rank_000000896_mask_20_badDirection_mask = rank_000000896_mask_20_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_20_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_20_badDirection_rank rank_000000896_mask_20_badDirection_mask = rank_000000896_mask_20_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_20_badDirection_unrank]
  exact rank_000000896_mask_20_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_20_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_20_badDirection_rank rank_000000896_mask_20_badDirection_mask = rank_000000896_mask_20_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_20_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_20_badDirection_b, rank_000000896_mask_20_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_20_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_20_badDirection_rank rank_000000896_mask_20_badDirection_mask ⟨10, by decide⟩ =
      rank_000000896_mask_20_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_20_badDirection_seqAtRank, rank_000000896_mask_20_badDirection_bAtRank]
  norm_num [rank_000000896_mask_20_badDirection_denom, rank_000000896_mask_20_badDirection_seq, rank_000000896_mask_20_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_20_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_20_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_20_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_20_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_20_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_20_badDirection_denom]

private def rank_000000896_mask_21_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_21_badDirection_mask : SignMask := ⟨21, by decide⟩
private def rank_000000896_mask_21_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_21_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_21_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-28/9), z := (-4/9) }
private def rank_000000896_mask_21_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_21_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_21_badDirection_word = some rank_000000896_mask_21_badDirection_rank := by
  decide

private theorem rank_000000896_mask_21_badDirection_unrank :
    unrankPairWord rank_000000896_mask_21_badDirection_rank = rank_000000896_mask_21_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_21_badDirection_word rank_000000896_mask_21_badDirection_rank).1
    rank_000000896_mask_21_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_21_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_21_badDirection_word rank_000000896_mask_21_badDirection_mask = rank_000000896_mask_21_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_21_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_21_badDirection_rank rank_000000896_mask_21_badDirection_mask = rank_000000896_mask_21_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_21_badDirection_unrank]
  exact rank_000000896_mask_21_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_21_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_21_badDirection_rank rank_000000896_mask_21_badDirection_mask = rank_000000896_mask_21_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_21_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_21_badDirection_b, rank_000000896_mask_21_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_21_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_21_badDirection_rank rank_000000896_mask_21_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_21_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_21_badDirection_seqAtRank, rank_000000896_mask_21_badDirection_bAtRank]
  norm_num [rank_000000896_mask_21_badDirection_denom, rank_000000896_mask_21_badDirection_seq, rank_000000896_mask_21_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_21_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_21_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_21_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_21_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_21_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_21_badDirection_denom]

private def rank_000000896_mask_23_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_23_badDirection_mask : SignMask := ⟨23, by decide⟩
private def rank_000000896_mask_23_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_23_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_23_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-28/9), z := (68/9) }
private def rank_000000896_mask_23_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_23_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_23_badDirection_word = some rank_000000896_mask_23_badDirection_rank := by
  decide

private theorem rank_000000896_mask_23_badDirection_unrank :
    unrankPairWord rank_000000896_mask_23_badDirection_rank = rank_000000896_mask_23_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_23_badDirection_word rank_000000896_mask_23_badDirection_rank).1
    rank_000000896_mask_23_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_23_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_23_badDirection_word rank_000000896_mask_23_badDirection_mask = rank_000000896_mask_23_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_23_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_23_badDirection_rank rank_000000896_mask_23_badDirection_mask = rank_000000896_mask_23_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_23_badDirection_unrank]
  exact rank_000000896_mask_23_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_23_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_23_badDirection_rank rank_000000896_mask_23_badDirection_mask = rank_000000896_mask_23_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_23_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_23_badDirection_b, rank_000000896_mask_23_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_23_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_23_badDirection_rank rank_000000896_mask_23_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_23_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_23_badDirection_seqAtRank, rank_000000896_mask_23_badDirection_bAtRank]
  norm_num [rank_000000896_mask_23_badDirection_denom, rank_000000896_mask_23_badDirection_seq, rank_000000896_mask_23_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_23_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_23_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_23_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_23_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_23_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_23_badDirection_denom]

private def rank_000000896_mask_25_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_25_badDirection_mask : SignMask := ⟨25, by decide⟩
private def rank_000000896_mask_25_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_25_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_25_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-28/9), z := (-100/9) }
private def rank_000000896_mask_25_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_25_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_25_badDirection_word = some rank_000000896_mask_25_badDirection_rank := by
  decide

private theorem rank_000000896_mask_25_badDirection_unrank :
    unrankPairWord rank_000000896_mask_25_badDirection_rank = rank_000000896_mask_25_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_25_badDirection_word rank_000000896_mask_25_badDirection_rank).1
    rank_000000896_mask_25_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_25_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_25_badDirection_word rank_000000896_mask_25_badDirection_mask = rank_000000896_mask_25_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_25_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_25_badDirection_rank rank_000000896_mask_25_badDirection_mask = rank_000000896_mask_25_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_25_badDirection_unrank]
  exact rank_000000896_mask_25_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_25_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_25_badDirection_rank rank_000000896_mask_25_badDirection_mask = rank_000000896_mask_25_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_25_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_25_badDirection_b, rank_000000896_mask_25_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_25_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_25_badDirection_rank rank_000000896_mask_25_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_25_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_25_badDirection_seqAtRank, rank_000000896_mask_25_badDirection_bAtRank]
  norm_num [rank_000000896_mask_25_badDirection_denom, rank_000000896_mask_25_badDirection_seq, rank_000000896_mask_25_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_25_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_25_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_25_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_25_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_25_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_25_badDirection_denom]

private def rank_000000896_mask_26_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_26_badDirection_mask : SignMask := ⟨26, by decide⟩
private def rank_000000896_mask_26_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_26_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_26_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-100/9), z := (-28/9) }
private def rank_000000896_mask_26_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_26_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_26_badDirection_word = some rank_000000896_mask_26_badDirection_rank := by
  decide

private theorem rank_000000896_mask_26_badDirection_unrank :
    unrankPairWord rank_000000896_mask_26_badDirection_rank = rank_000000896_mask_26_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_26_badDirection_word rank_000000896_mask_26_badDirection_rank).1
    rank_000000896_mask_26_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_26_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_26_badDirection_word rank_000000896_mask_26_badDirection_mask = rank_000000896_mask_26_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_26_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_26_badDirection_rank rank_000000896_mask_26_badDirection_mask = rank_000000896_mask_26_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_26_badDirection_unrank]
  exact rank_000000896_mask_26_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_26_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_26_badDirection_rank rank_000000896_mask_26_badDirection_mask = rank_000000896_mask_26_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_26_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_26_badDirection_b, rank_000000896_mask_26_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_26_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_26_badDirection_rank rank_000000896_mask_26_badDirection_mask ⟨4, by decide⟩ =
      rank_000000896_mask_26_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_26_badDirection_seqAtRank, rank_000000896_mask_26_badDirection_bAtRank]
  norm_num [rank_000000896_mask_26_badDirection_denom, rank_000000896_mask_26_badDirection_seq, rank_000000896_mask_26_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_26_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_26_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_26_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_26_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_26_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_26_badDirection_denom]

private def rank_000000896_mask_27_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_27_badDirection_mask : SignMask := ⟨27, by decide⟩
private def rank_000000896_mask_27_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_27_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_27_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-28/9), z := (-28/9) }
private def rank_000000896_mask_27_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_27_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_27_badDirection_word = some rank_000000896_mask_27_badDirection_rank := by
  decide

private theorem rank_000000896_mask_27_badDirection_unrank :
    unrankPairWord rank_000000896_mask_27_badDirection_rank = rank_000000896_mask_27_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_27_badDirection_word rank_000000896_mask_27_badDirection_rank).1
    rank_000000896_mask_27_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_27_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_27_badDirection_word rank_000000896_mask_27_badDirection_mask = rank_000000896_mask_27_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_27_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_27_badDirection_rank rank_000000896_mask_27_badDirection_mask = rank_000000896_mask_27_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_27_badDirection_unrank]
  exact rank_000000896_mask_27_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_27_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_27_badDirection_rank rank_000000896_mask_27_badDirection_mask = rank_000000896_mask_27_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_27_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_27_badDirection_b, rank_000000896_mask_27_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_27_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_27_badDirection_rank rank_000000896_mask_27_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_27_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_27_badDirection_seqAtRank, rank_000000896_mask_27_badDirection_bAtRank]
  norm_num [rank_000000896_mask_27_badDirection_denom, rank_000000896_mask_27_badDirection_seq, rank_000000896_mask_27_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_27_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_27_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_27_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_27_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_27_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_27_badDirection_denom]

private def rank_000000896_mask_29_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_29_badDirection_mask : SignMask := ⟨29, by decide⟩
private def rank_000000896_mask_29_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_29_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_29_badDirection_b : Vec3 Rat := { x := (-116/9), y := (20/9), z := (-52/9) }
private def rank_000000896_mask_29_badDirection_denom : Rat := (-4/3)

private theorem rank_000000896_mask_29_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_29_badDirection_word = some rank_000000896_mask_29_badDirection_rank := by
  decide

private theorem rank_000000896_mask_29_badDirection_unrank :
    unrankPairWord rank_000000896_mask_29_badDirection_rank = rank_000000896_mask_29_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_29_badDirection_word rank_000000896_mask_29_badDirection_rank).1
    rank_000000896_mask_29_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_29_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_29_badDirection_word rank_000000896_mask_29_badDirection_mask = rank_000000896_mask_29_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_29_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_29_badDirection_rank rank_000000896_mask_29_badDirection_mask = rank_000000896_mask_29_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_29_badDirection_unrank]
  exact rank_000000896_mask_29_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_29_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_29_badDirection_rank rank_000000896_mask_29_badDirection_mask = rank_000000896_mask_29_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_29_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_29_badDirection_b, rank_000000896_mask_29_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_29_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_29_badDirection_rank rank_000000896_mask_29_badDirection_mask ⟨11, by decide⟩ =
      rank_000000896_mask_29_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_29_badDirection_seqAtRank, rank_000000896_mask_29_badDirection_bAtRank]
  norm_num [rank_000000896_mask_29_badDirection_denom, rank_000000896_mask_29_badDirection_seq, rank_000000896_mask_29_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_29_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_29_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_29_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_29_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_29_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_29_badDirection_denom]

private def rank_000000896_mask_32_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_32_badDirection_mask : SignMask := ⟨32, by decide⟩
private def rank_000000896_mask_32_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_32_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_32_badDirection_b : Vec3 Rat := { x := (44/9), y := (-20/9), z := (-20/9) }
private def rank_000000896_mask_32_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_32_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_32_badDirection_word = some rank_000000896_mask_32_badDirection_rank := by
  decide

private theorem rank_000000896_mask_32_badDirection_unrank :
    unrankPairWord rank_000000896_mask_32_badDirection_rank = rank_000000896_mask_32_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_32_badDirection_word rank_000000896_mask_32_badDirection_rank).1
    rank_000000896_mask_32_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_32_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_32_badDirection_word rank_000000896_mask_32_badDirection_mask = rank_000000896_mask_32_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_32_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_32_badDirection_rank rank_000000896_mask_32_badDirection_mask = rank_000000896_mask_32_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_32_badDirection_unrank]
  exact rank_000000896_mask_32_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_32_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_32_badDirection_rank rank_000000896_mask_32_badDirection_mask = rank_000000896_mask_32_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_32_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_32_badDirection_b, rank_000000896_mask_32_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_32_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_32_badDirection_rank rank_000000896_mask_32_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_32_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_32_badDirection_seqAtRank, rank_000000896_mask_32_badDirection_bAtRank]
  norm_num [rank_000000896_mask_32_badDirection_denom, rank_000000896_mask_32_badDirection_seq, rank_000000896_mask_32_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_32_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_32_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_32_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_32_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_32_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_32_badDirection_denom]

private def rank_000000896_mask_33_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_33_badDirection_mask : SignMask := ⟨33, by decide⟩
private def rank_000000896_mask_33_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_33_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_33_badDirection_b : Vec3 Rat := { x := (44/9), y := (52/9), z := (-20/9) }
private def rank_000000896_mask_33_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_33_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_33_badDirection_word = some rank_000000896_mask_33_badDirection_rank := by
  decide

private theorem rank_000000896_mask_33_badDirection_unrank :
    unrankPairWord rank_000000896_mask_33_badDirection_rank = rank_000000896_mask_33_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_33_badDirection_word rank_000000896_mask_33_badDirection_rank).1
    rank_000000896_mask_33_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_33_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_33_badDirection_word rank_000000896_mask_33_badDirection_mask = rank_000000896_mask_33_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_33_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_33_badDirection_rank rank_000000896_mask_33_badDirection_mask = rank_000000896_mask_33_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_33_badDirection_unrank]
  exact rank_000000896_mask_33_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_33_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_33_badDirection_rank rank_000000896_mask_33_badDirection_mask = rank_000000896_mask_33_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_33_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_33_badDirection_b, rank_000000896_mask_33_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_33_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_33_badDirection_rank rank_000000896_mask_33_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_33_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_33_badDirection_seqAtRank, rank_000000896_mask_33_badDirection_bAtRank]
  norm_num [rank_000000896_mask_33_badDirection_denom, rank_000000896_mask_33_badDirection_seq, rank_000000896_mask_33_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_33_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_33_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_33_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_33_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_33_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_33_badDirection_denom]

private def rank_000000896_mask_34_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_34_badDirection_mask : SignMask := ⟨34, by decide⟩
private def rank_000000896_mask_34_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_34_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_34_badDirection_b : Vec3 Rat := { x := (44/9), y := (-20/9), z := (52/9) }
private def rank_000000896_mask_34_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_34_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_34_badDirection_word = some rank_000000896_mask_34_badDirection_rank := by
  decide

private theorem rank_000000896_mask_34_badDirection_unrank :
    unrankPairWord rank_000000896_mask_34_badDirection_rank = rank_000000896_mask_34_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_34_badDirection_word rank_000000896_mask_34_badDirection_rank).1
    rank_000000896_mask_34_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_34_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_34_badDirection_word rank_000000896_mask_34_badDirection_mask = rank_000000896_mask_34_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_34_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_34_badDirection_rank rank_000000896_mask_34_badDirection_mask = rank_000000896_mask_34_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_34_badDirection_unrank]
  exact rank_000000896_mask_34_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_34_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_34_badDirection_rank rank_000000896_mask_34_badDirection_mask = rank_000000896_mask_34_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_34_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_34_badDirection_b, rank_000000896_mask_34_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_34_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_34_badDirection_rank rank_000000896_mask_34_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_34_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_34_badDirection_seqAtRank, rank_000000896_mask_34_badDirection_bAtRank]
  norm_num [rank_000000896_mask_34_badDirection_denom, rank_000000896_mask_34_badDirection_seq, rank_000000896_mask_34_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_34_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_34_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_34_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_34_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_34_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_34_badDirection_denom]

private def rank_000000896_mask_35_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_35_badDirection_mask : SignMask := ⟨35, by decide⟩
private def rank_000000896_mask_35_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_35_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_35_badDirection_b : Vec3 Rat := { x := (44/9), y := (52/9), z := (52/9) }
private def rank_000000896_mask_35_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_35_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_35_badDirection_word = some rank_000000896_mask_35_badDirection_rank := by
  decide

private theorem rank_000000896_mask_35_badDirection_unrank :
    unrankPairWord rank_000000896_mask_35_badDirection_rank = rank_000000896_mask_35_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_35_badDirection_word rank_000000896_mask_35_badDirection_rank).1
    rank_000000896_mask_35_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_35_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_35_badDirection_word rank_000000896_mask_35_badDirection_mask = rank_000000896_mask_35_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_35_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_35_badDirection_rank rank_000000896_mask_35_badDirection_mask = rank_000000896_mask_35_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_35_badDirection_unrank]
  exact rank_000000896_mask_35_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_35_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_35_badDirection_rank rank_000000896_mask_35_badDirection_mask = rank_000000896_mask_35_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_35_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_35_badDirection_b, rank_000000896_mask_35_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_35_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_35_badDirection_rank rank_000000896_mask_35_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_35_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_35_badDirection_seqAtRank, rank_000000896_mask_35_badDirection_bAtRank]
  norm_num [rank_000000896_mask_35_badDirection_denom, rank_000000896_mask_35_badDirection_seq, rank_000000896_mask_35_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_35_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_35_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_35_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_35_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_35_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_35_badDirection_denom]

private def rank_000000896_mask_36_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_36_badDirection_mask : SignMask := ⟨36, by decide⟩
private def rank_000000896_mask_36_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_36_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_36_badDirection_b : Vec3 Rat := { x := (-4/9), y := (28/9), z := (28/9) }
private def rank_000000896_mask_36_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_36_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_36_badDirection_word = some rank_000000896_mask_36_badDirection_rank := by
  decide

private theorem rank_000000896_mask_36_badDirection_unrank :
    unrankPairWord rank_000000896_mask_36_badDirection_rank = rank_000000896_mask_36_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_36_badDirection_word rank_000000896_mask_36_badDirection_rank).1
    rank_000000896_mask_36_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_36_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_36_badDirection_word rank_000000896_mask_36_badDirection_mask = rank_000000896_mask_36_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_36_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_36_badDirection_rank rank_000000896_mask_36_badDirection_mask = rank_000000896_mask_36_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_36_badDirection_unrank]
  exact rank_000000896_mask_36_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_36_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_36_badDirection_rank rank_000000896_mask_36_badDirection_mask = rank_000000896_mask_36_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_36_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_36_badDirection_b, rank_000000896_mask_36_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_36_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_36_badDirection_rank rank_000000896_mask_36_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_36_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_36_badDirection_seqAtRank, rank_000000896_mask_36_badDirection_bAtRank]
  norm_num [rank_000000896_mask_36_badDirection_denom, rank_000000896_mask_36_badDirection_seq, rank_000000896_mask_36_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_36_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_36_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_36_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_36_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_36_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_36_badDirection_denom]

private def rank_000000896_mask_37_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_37_badDirection_mask : SignMask := ⟨37, by decide⟩
private def rank_000000896_mask_37_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_37_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_37_badDirection_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (28/9) }
private def rank_000000896_mask_37_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_37_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_37_badDirection_word = some rank_000000896_mask_37_badDirection_rank := by
  decide

private theorem rank_000000896_mask_37_badDirection_unrank :
    unrankPairWord rank_000000896_mask_37_badDirection_rank = rank_000000896_mask_37_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_37_badDirection_word rank_000000896_mask_37_badDirection_rank).1
    rank_000000896_mask_37_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_37_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_37_badDirection_word rank_000000896_mask_37_badDirection_mask = rank_000000896_mask_37_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_37_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_37_badDirection_rank rank_000000896_mask_37_badDirection_mask = rank_000000896_mask_37_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_37_badDirection_unrank]
  exact rank_000000896_mask_37_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_37_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_37_badDirection_rank rank_000000896_mask_37_badDirection_mask = rank_000000896_mask_37_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_37_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_37_badDirection_b, rank_000000896_mask_37_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_37_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_37_badDirection_rank rank_000000896_mask_37_badDirection_mask ⟨4, by decide⟩ =
      rank_000000896_mask_37_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_37_badDirection_seqAtRank, rank_000000896_mask_37_badDirection_bAtRank]
  norm_num [rank_000000896_mask_37_badDirection_denom, rank_000000896_mask_37_badDirection_seq, rank_000000896_mask_37_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_37_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_37_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_37_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_37_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_37_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_37_badDirection_denom]

private def rank_000000896_mask_38_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_38_badDirection_mask : SignMask := ⟨38, by decide⟩
private def rank_000000896_mask_38_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_38_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_38_badDirection_b : Vec3 Rat := { x := (-4/9), y := (28/9), z := (100/9) }
private def rank_000000896_mask_38_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_38_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_38_badDirection_word = some rank_000000896_mask_38_badDirection_rank := by
  decide

private theorem rank_000000896_mask_38_badDirection_unrank :
    unrankPairWord rank_000000896_mask_38_badDirection_rank = rank_000000896_mask_38_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_38_badDirection_word rank_000000896_mask_38_badDirection_rank).1
    rank_000000896_mask_38_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_38_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_38_badDirection_word rank_000000896_mask_38_badDirection_mask = rank_000000896_mask_38_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_38_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_38_badDirection_rank rank_000000896_mask_38_badDirection_mask = rank_000000896_mask_38_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_38_badDirection_unrank]
  exact rank_000000896_mask_38_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_38_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_38_badDirection_rank rank_000000896_mask_38_badDirection_mask = rank_000000896_mask_38_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_38_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_38_badDirection_b, rank_000000896_mask_38_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_38_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_38_badDirection_rank rank_000000896_mask_38_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_38_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_38_badDirection_seqAtRank, rank_000000896_mask_38_badDirection_bAtRank]
  norm_num [rank_000000896_mask_38_badDirection_denom, rank_000000896_mask_38_badDirection_seq, rank_000000896_mask_38_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_38_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_38_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_38_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_38_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_38_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_38_badDirection_denom]

private def rank_000000896_mask_39_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_39_badDirection_mask : SignMask := ⟨39, by decide⟩
private def rank_000000896_mask_39_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_39_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_39_badDirection_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (100/9) }
private def rank_000000896_mask_39_badDirection_denom : Rat := (-4/9)

private theorem rank_000000896_mask_39_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_39_badDirection_word = some rank_000000896_mask_39_badDirection_rank := by
  decide

private theorem rank_000000896_mask_39_badDirection_unrank :
    unrankPairWord rank_000000896_mask_39_badDirection_rank = rank_000000896_mask_39_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_39_badDirection_word rank_000000896_mask_39_badDirection_rank).1
    rank_000000896_mask_39_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_39_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_39_badDirection_word rank_000000896_mask_39_badDirection_mask = rank_000000896_mask_39_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_39_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_39_badDirection_rank rank_000000896_mask_39_badDirection_mask = rank_000000896_mask_39_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_39_badDirection_unrank]
  exact rank_000000896_mask_39_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_39_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_39_badDirection_rank rank_000000896_mask_39_badDirection_mask = rank_000000896_mask_39_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_39_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_39_badDirection_b, rank_000000896_mask_39_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_39_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_39_badDirection_rank rank_000000896_mask_39_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_39_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_39_badDirection_seqAtRank, rank_000000896_mask_39_badDirection_bAtRank]
  norm_num [rank_000000896_mask_39_badDirection_denom, rank_000000896_mask_39_badDirection_seq, rank_000000896_mask_39_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_39_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_39_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_39_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_39_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_39_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_39_badDirection_denom]

private def rank_000000896_mask_40_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_40_badDirection_mask : SignMask := ⟨40, by decide⟩
private def rank_000000896_mask_40_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_40_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_40_badDirection_b : Vec3 Rat := { x := (-4/9), y := (28/9), z := (-68/9) }
private def rank_000000896_mask_40_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_40_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_40_badDirection_word = some rank_000000896_mask_40_badDirection_rank := by
  decide

private theorem rank_000000896_mask_40_badDirection_unrank :
    unrankPairWord rank_000000896_mask_40_badDirection_rank = rank_000000896_mask_40_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_40_badDirection_word rank_000000896_mask_40_badDirection_rank).1
    rank_000000896_mask_40_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_40_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_40_badDirection_word rank_000000896_mask_40_badDirection_mask = rank_000000896_mask_40_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_40_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_40_badDirection_rank rank_000000896_mask_40_badDirection_mask = rank_000000896_mask_40_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_40_badDirection_unrank]
  exact rank_000000896_mask_40_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_40_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_40_badDirection_rank rank_000000896_mask_40_badDirection_mask = rank_000000896_mask_40_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_40_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_40_badDirection_b, rank_000000896_mask_40_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_40_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_40_badDirection_rank rank_000000896_mask_40_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_40_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_40_badDirection_seqAtRank, rank_000000896_mask_40_badDirection_bAtRank]
  norm_num [rank_000000896_mask_40_badDirection_denom, rank_000000896_mask_40_badDirection_seq, rank_000000896_mask_40_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_40_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_40_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_40_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_40_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_40_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_40_badDirection_denom]

private def rank_000000896_mask_41_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_41_badDirection_mask : SignMask := ⟨41, by decide⟩
private def rank_000000896_mask_41_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_41_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_41_badDirection_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (-68/9) }
private def rank_000000896_mask_41_badDirection_denom : Rat := -4

private theorem rank_000000896_mask_41_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_41_badDirection_word = some rank_000000896_mask_41_badDirection_rank := by
  decide

private theorem rank_000000896_mask_41_badDirection_unrank :
    unrankPairWord rank_000000896_mask_41_badDirection_rank = rank_000000896_mask_41_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_41_badDirection_word rank_000000896_mask_41_badDirection_rank).1
    rank_000000896_mask_41_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_41_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_41_badDirection_word rank_000000896_mask_41_badDirection_mask = rank_000000896_mask_41_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_41_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_41_badDirection_rank rank_000000896_mask_41_badDirection_mask = rank_000000896_mask_41_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_41_badDirection_unrank]
  exact rank_000000896_mask_41_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_41_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_41_badDirection_rank rank_000000896_mask_41_badDirection_mask = rank_000000896_mask_41_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_41_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_41_badDirection_b, rank_000000896_mask_41_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_41_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_41_badDirection_rank rank_000000896_mask_41_badDirection_mask ⟨10, by decide⟩ =
      rank_000000896_mask_41_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_41_badDirection_seqAtRank, rank_000000896_mask_41_badDirection_bAtRank]
  norm_num [rank_000000896_mask_41_badDirection_denom, rank_000000896_mask_41_badDirection_seq, rank_000000896_mask_41_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_41_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_41_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_41_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_41_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_41_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_41_badDirection_denom]

private def rank_000000896_mask_42_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_42_badDirection_mask : SignMask := ⟨42, by decide⟩
private def rank_000000896_mask_42_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_42_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_42_badDirection_b : Vec3 Rat := { x := (-4/9), y := (28/9), z := (4/9) }
private def rank_000000896_mask_42_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_42_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_42_badDirection_word = some rank_000000896_mask_42_badDirection_rank := by
  decide

private theorem rank_000000896_mask_42_badDirection_unrank :
    unrankPairWord rank_000000896_mask_42_badDirection_rank = rank_000000896_mask_42_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_42_badDirection_word rank_000000896_mask_42_badDirection_rank).1
    rank_000000896_mask_42_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_42_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_42_badDirection_word rank_000000896_mask_42_badDirection_mask = rank_000000896_mask_42_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_42_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_42_badDirection_rank rank_000000896_mask_42_badDirection_mask = rank_000000896_mask_42_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_42_badDirection_unrank]
  exact rank_000000896_mask_42_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_42_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_42_badDirection_rank rank_000000896_mask_42_badDirection_mask = rank_000000896_mask_42_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_42_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_42_badDirection_b, rank_000000896_mask_42_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_42_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_42_badDirection_rank rank_000000896_mask_42_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_42_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_42_badDirection_seqAtRank, rank_000000896_mask_42_badDirection_bAtRank]
  norm_num [rank_000000896_mask_42_badDirection_denom, rank_000000896_mask_42_badDirection_seq, rank_000000896_mask_42_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_42_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_42_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_42_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_42_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_42_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_42_badDirection_denom]

private def rank_000000896_mask_43_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_43_badDirection_mask : SignMask := ⟨43, by decide⟩
private def rank_000000896_mask_43_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_43_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_43_badDirection_b : Vec3 Rat := { x := (-4/9), y := (100/9), z := (4/9) }
private def rank_000000896_mask_43_badDirection_denom : Rat := -12

private theorem rank_000000896_mask_43_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_43_badDirection_word = some rank_000000896_mask_43_badDirection_rank := by
  decide

private theorem rank_000000896_mask_43_badDirection_unrank :
    unrankPairWord rank_000000896_mask_43_badDirection_rank = rank_000000896_mask_43_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_43_badDirection_word rank_000000896_mask_43_badDirection_rank).1
    rank_000000896_mask_43_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_43_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_43_badDirection_word rank_000000896_mask_43_badDirection_mask = rank_000000896_mask_43_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_43_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_43_badDirection_rank rank_000000896_mask_43_badDirection_mask = rank_000000896_mask_43_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_43_badDirection_unrank]
  exact rank_000000896_mask_43_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_43_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_43_badDirection_rank rank_000000896_mask_43_badDirection_mask = rank_000000896_mask_43_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_43_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_43_badDirection_b, rank_000000896_mask_43_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_43_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_43_badDirection_rank rank_000000896_mask_43_badDirection_mask ⟨10, by decide⟩ =
      rank_000000896_mask_43_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_43_badDirection_seqAtRank, rank_000000896_mask_43_badDirection_bAtRank]
  norm_num [rank_000000896_mask_43_badDirection_denom, rank_000000896_mask_43_badDirection_seq, rank_000000896_mask_43_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_43_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_43_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_43_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_43_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_43_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_43_badDirection_denom]

private def rank_000000896_mask_44_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_44_badDirection_mask : SignMask := ⟨44, by decide⟩
private def rank_000000896_mask_44_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_44_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_44_badDirection_b : Vec3 Rat := { x := (-52/9), y := (76/9), z := (-20/9) }
private def rank_000000896_mask_44_badDirection_denom : Rat := (-76/9)

private theorem rank_000000896_mask_44_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_44_badDirection_word = some rank_000000896_mask_44_badDirection_rank := by
  decide

private theorem rank_000000896_mask_44_badDirection_unrank :
    unrankPairWord rank_000000896_mask_44_badDirection_rank = rank_000000896_mask_44_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_44_badDirection_word rank_000000896_mask_44_badDirection_rank).1
    rank_000000896_mask_44_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_44_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_44_badDirection_word rank_000000896_mask_44_badDirection_mask = rank_000000896_mask_44_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_44_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_44_badDirection_rank rank_000000896_mask_44_badDirection_mask = rank_000000896_mask_44_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_44_badDirection_unrank]
  exact rank_000000896_mask_44_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_44_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_44_badDirection_rank rank_000000896_mask_44_badDirection_mask = rank_000000896_mask_44_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_44_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_44_badDirection_b, rank_000000896_mask_44_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_44_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_44_badDirection_rank rank_000000896_mask_44_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_44_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_44_badDirection_seqAtRank, rank_000000896_mask_44_badDirection_bAtRank]
  norm_num [rank_000000896_mask_44_badDirection_denom, rank_000000896_mask_44_badDirection_seq, rank_000000896_mask_44_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_44_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_44_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_44_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_44_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_44_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_44_badDirection_denom]

private def rank_000000896_mask_46_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_46_badDirection_mask : SignMask := ⟨46, by decide⟩
private def rank_000000896_mask_46_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_46_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tpmp
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_46_badDirection_b : Vec3 Rat := { x := (-52/9), y := (76/9), z := (52/9) }
private def rank_000000896_mask_46_badDirection_denom : Rat := (-76/9)

private theorem rank_000000896_mask_46_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_46_badDirection_word = some rank_000000896_mask_46_badDirection_rank := by
  decide

private theorem rank_000000896_mask_46_badDirection_unrank :
    unrankPairWord rank_000000896_mask_46_badDirection_rank = rank_000000896_mask_46_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_46_badDirection_word rank_000000896_mask_46_badDirection_rank).1
    rank_000000896_mask_46_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_46_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_46_badDirection_word rank_000000896_mask_46_badDirection_mask = rank_000000896_mask_46_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_46_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_46_badDirection_rank rank_000000896_mask_46_badDirection_mask = rank_000000896_mask_46_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_46_badDirection_unrank]
  exact rank_000000896_mask_46_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_46_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_46_badDirection_rank rank_000000896_mask_46_badDirection_mask = rank_000000896_mask_46_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_46_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_46_badDirection_b, rank_000000896_mask_46_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_46_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_46_badDirection_rank rank_000000896_mask_46_badDirection_mask ⟨2, by decide⟩ =
      rank_000000896_mask_46_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_46_badDirection_seqAtRank, rank_000000896_mask_46_badDirection_bAtRank]
  norm_num [rank_000000896_mask_46_badDirection_denom, rank_000000896_mask_46_badDirection_seq, rank_000000896_mask_46_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_46_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_46_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_46_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_46_badDirection_mask)
      (i := ⟨2, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_46_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_46_badDirection_denom]

private def rank_000000896_mask_48_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_48_badDirection_mask : SignMask := ⟨48, by decide⟩
private def rank_000000896_mask_48_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_48_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_48_badDirection_b : Vec3 Rat := { x := (28/9), y := (-100/9), z := (-4/9) }
private def rank_000000896_mask_48_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_48_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_48_badDirection_word = some rank_000000896_mask_48_badDirection_rank := by
  decide

private theorem rank_000000896_mask_48_badDirection_unrank :
    unrankPairWord rank_000000896_mask_48_badDirection_rank = rank_000000896_mask_48_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_48_badDirection_word rank_000000896_mask_48_badDirection_rank).1
    rank_000000896_mask_48_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_48_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_48_badDirection_word rank_000000896_mask_48_badDirection_mask = rank_000000896_mask_48_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_48_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_48_badDirection_rank rank_000000896_mask_48_badDirection_mask = rank_000000896_mask_48_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_48_badDirection_unrank]
  exact rank_000000896_mask_48_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_48_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_48_badDirection_rank rank_000000896_mask_48_badDirection_mask = rank_000000896_mask_48_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_48_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_48_badDirection_b, rank_000000896_mask_48_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_48_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_48_badDirection_rank rank_000000896_mask_48_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_48_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_48_badDirection_seqAtRank, rank_000000896_mask_48_badDirection_bAtRank]
  norm_num [rank_000000896_mask_48_badDirection_denom, rank_000000896_mask_48_badDirection_seq, rank_000000896_mask_48_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_48_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_48_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_48_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_48_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_48_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_48_badDirection_denom]

private def rank_000000896_mask_49_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_49_badDirection_mask : SignMask := ⟨49, by decide⟩
private def rank_000000896_mask_49_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_49_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_49_badDirection_b : Vec3 Rat := { x := (28/9), y := (-28/9), z := (-4/9) }
private def rank_000000896_mask_49_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_49_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_49_badDirection_word = some rank_000000896_mask_49_badDirection_rank := by
  decide

private theorem rank_000000896_mask_49_badDirection_unrank :
    unrankPairWord rank_000000896_mask_49_badDirection_rank = rank_000000896_mask_49_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_49_badDirection_word rank_000000896_mask_49_badDirection_rank).1
    rank_000000896_mask_49_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_49_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_49_badDirection_word rank_000000896_mask_49_badDirection_mask = rank_000000896_mask_49_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_49_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_49_badDirection_rank rank_000000896_mask_49_badDirection_mask = rank_000000896_mask_49_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_49_badDirection_unrank]
  exact rank_000000896_mask_49_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_49_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_49_badDirection_rank rank_000000896_mask_49_badDirection_mask = rank_000000896_mask_49_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_49_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_49_badDirection_b, rank_000000896_mask_49_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_49_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_49_badDirection_rank rank_000000896_mask_49_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_49_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_49_badDirection_seqAtRank, rank_000000896_mask_49_badDirection_bAtRank]
  norm_num [rank_000000896_mask_49_badDirection_denom, rank_000000896_mask_49_badDirection_seq, rank_000000896_mask_49_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_49_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_49_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_49_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_49_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_49_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_49_badDirection_denom]

private def rank_000000896_mask_50_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_50_badDirection_mask : SignMask := ⟨50, by decide⟩
private def rank_000000896_mask_50_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_50_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_50_badDirection_b : Vec3 Rat := { x := (28/9), y := (-100/9), z := (68/9) }
private def rank_000000896_mask_50_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_50_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_50_badDirection_word = some rank_000000896_mask_50_badDirection_rank := by
  decide

private theorem rank_000000896_mask_50_badDirection_unrank :
    unrankPairWord rank_000000896_mask_50_badDirection_rank = rank_000000896_mask_50_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_50_badDirection_word rank_000000896_mask_50_badDirection_rank).1
    rank_000000896_mask_50_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_50_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_50_badDirection_word rank_000000896_mask_50_badDirection_mask = rank_000000896_mask_50_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_50_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_50_badDirection_rank rank_000000896_mask_50_badDirection_mask = rank_000000896_mask_50_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_50_badDirection_unrank]
  exact rank_000000896_mask_50_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_50_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_50_badDirection_rank rank_000000896_mask_50_badDirection_mask = rank_000000896_mask_50_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_50_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_50_badDirection_b, rank_000000896_mask_50_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_50_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_50_badDirection_rank rank_000000896_mask_50_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_50_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_50_badDirection_seqAtRank, rank_000000896_mask_50_badDirection_bAtRank]
  norm_num [rank_000000896_mask_50_badDirection_denom, rank_000000896_mask_50_badDirection_seq, rank_000000896_mask_50_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_50_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_50_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_50_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_50_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_50_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_50_badDirection_denom]

private def rank_000000896_mask_51_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_51_badDirection_mask : SignMask := ⟨51, by decide⟩
private def rank_000000896_mask_51_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_51_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_51_badDirection_b : Vec3 Rat := { x := (28/9), y := (-28/9), z := (68/9) }
private def rank_000000896_mask_51_badDirection_denom : Rat := (-28/9)

private theorem rank_000000896_mask_51_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_51_badDirection_word = some rank_000000896_mask_51_badDirection_rank := by
  decide

private theorem rank_000000896_mask_51_badDirection_unrank :
    unrankPairWord rank_000000896_mask_51_badDirection_rank = rank_000000896_mask_51_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_51_badDirection_word rank_000000896_mask_51_badDirection_rank).1
    rank_000000896_mask_51_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_51_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_51_badDirection_word rank_000000896_mask_51_badDirection_mask = rank_000000896_mask_51_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_51_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_51_badDirection_rank rank_000000896_mask_51_badDirection_mask = rank_000000896_mask_51_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_51_badDirection_unrank]
  exact rank_000000896_mask_51_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_51_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_51_badDirection_rank rank_000000896_mask_51_badDirection_mask = rank_000000896_mask_51_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_51_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_51_badDirection_b, rank_000000896_mask_51_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_51_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_51_badDirection_rank rank_000000896_mask_51_badDirection_mask ⟨1, by decide⟩ =
      rank_000000896_mask_51_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_51_badDirection_seqAtRank, rank_000000896_mask_51_badDirection_bAtRank]
  norm_num [rank_000000896_mask_51_badDirection_denom, rank_000000896_mask_51_badDirection_seq, rank_000000896_mask_51_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_51_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_51_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_51_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_51_badDirection_mask)
      (i := ⟨1, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_51_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_51_badDirection_denom]

private def rank_000000896_mask_52_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_52_badDirection_mask : SignMask := ⟨52, by decide⟩
private def rank_000000896_mask_52_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_52_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_52_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (44/9) }
private def rank_000000896_mask_52_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_52_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_52_badDirection_word = some rank_000000896_mask_52_badDirection_rank := by
  decide

private theorem rank_000000896_mask_52_badDirection_unrank :
    unrankPairWord rank_000000896_mask_52_badDirection_rank = rank_000000896_mask_52_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_52_badDirection_word rank_000000896_mask_52_badDirection_rank).1
    rank_000000896_mask_52_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_52_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_52_badDirection_word rank_000000896_mask_52_badDirection_mask = rank_000000896_mask_52_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_52_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_52_badDirection_rank rank_000000896_mask_52_badDirection_mask = rank_000000896_mask_52_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_52_badDirection_unrank]
  exact rank_000000896_mask_52_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_52_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_52_badDirection_rank rank_000000896_mask_52_badDirection_mask = rank_000000896_mask_52_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_52_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_52_badDirection_b, rank_000000896_mask_52_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_52_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_52_badDirection_rank rank_000000896_mask_52_badDirection_mask ⟨4, by decide⟩ =
      rank_000000896_mask_52_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_52_badDirection_seqAtRank, rank_000000896_mask_52_badDirection_bAtRank]
  norm_num [rank_000000896_mask_52_badDirection_denom, rank_000000896_mask_52_badDirection_seq, rank_000000896_mask_52_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_52_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_52_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_52_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_52_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_52_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_52_badDirection_denom]

private def rank_000000896_mask_53_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_53_badDirection_mask : SignMask := ⟨53, by decide⟩
private def rank_000000896_mask_53_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_53_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmp
  | ⟨7, _⟩ => Face.tppm
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_53_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (44/9) }
private def rank_000000896_mask_53_badDirection_denom : Rat := (-44/9)

private theorem rank_000000896_mask_53_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_53_badDirection_word = some rank_000000896_mask_53_badDirection_rank := by
  decide

private theorem rank_000000896_mask_53_badDirection_unrank :
    unrankPairWord rank_000000896_mask_53_badDirection_rank = rank_000000896_mask_53_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_53_badDirection_word rank_000000896_mask_53_badDirection_rank).1
    rank_000000896_mask_53_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_53_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_53_badDirection_word rank_000000896_mask_53_badDirection_mask = rank_000000896_mask_53_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_53_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_53_badDirection_rank rank_000000896_mask_53_badDirection_mask = rank_000000896_mask_53_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_53_badDirection_unrank]
  exact rank_000000896_mask_53_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_53_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_53_badDirection_rank rank_000000896_mask_53_badDirection_mask = rank_000000896_mask_53_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_53_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_53_badDirection_b, rank_000000896_mask_53_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_53_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_53_badDirection_rank rank_000000896_mask_53_badDirection_mask ⟨4, by decide⟩ =
      rank_000000896_mask_53_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_53_badDirection_seqAtRank, rank_000000896_mask_53_badDirection_bAtRank]
  norm_num [rank_000000896_mask_53_badDirection_denom, rank_000000896_mask_53_badDirection_seq, rank_000000896_mask_53_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_53_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_53_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_53_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_53_badDirection_mask)
      (i := ⟨4, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_53_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_53_badDirection_denom]

private def rank_000000896_mask_56_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_56_badDirection_mask : SignMask := ⟨56, by decide⟩
private def rank_000000896_mask_56_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_56_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_56_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (-52/9) }
private def rank_000000896_mask_56_badDirection_denom : Rat := (-124/9)

private theorem rank_000000896_mask_56_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_56_badDirection_word = some rank_000000896_mask_56_badDirection_rank := by
  decide

private theorem rank_000000896_mask_56_badDirection_unrank :
    unrankPairWord rank_000000896_mask_56_badDirection_rank = rank_000000896_mask_56_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_56_badDirection_word rank_000000896_mask_56_badDirection_rank).1
    rank_000000896_mask_56_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_56_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_56_badDirection_word rank_000000896_mask_56_badDirection_mask = rank_000000896_mask_56_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_56_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_56_badDirection_rank rank_000000896_mask_56_badDirection_mask = rank_000000896_mask_56_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_56_badDirection_unrank]
  exact rank_000000896_mask_56_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_56_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_56_badDirection_rank rank_000000896_mask_56_badDirection_mask = rank_000000896_mask_56_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_56_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_56_badDirection_b, rank_000000896_mask_56_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_56_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_56_badDirection_rank rank_000000896_mask_56_badDirection_mask ⟨8, by decide⟩ =
      rank_000000896_mask_56_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_56_badDirection_seqAtRank, rank_000000896_mask_56_badDirection_bAtRank]
  norm_num [rank_000000896_mask_56_badDirection_denom, rank_000000896_mask_56_badDirection_seq, rank_000000896_mask_56_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_56_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_56_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_56_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_56_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_56_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_56_badDirection_denom]

private def rank_000000896_mask_57_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_57_badDirection_mask : SignMask := ⟨57, by decide⟩
private def rank_000000896_mask_57_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_57_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_57_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (-52/9) }
private def rank_000000896_mask_57_badDirection_denom : Rat := (-52/9)

private theorem rank_000000896_mask_57_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_57_badDirection_word = some rank_000000896_mask_57_badDirection_rank := by
  decide

private theorem rank_000000896_mask_57_badDirection_unrank :
    unrankPairWord rank_000000896_mask_57_badDirection_rank = rank_000000896_mask_57_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_57_badDirection_word rank_000000896_mask_57_badDirection_rank).1
    rank_000000896_mask_57_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_57_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_57_badDirection_word rank_000000896_mask_57_badDirection_mask = rank_000000896_mask_57_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_57_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_57_badDirection_rank rank_000000896_mask_57_badDirection_mask = rank_000000896_mask_57_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_57_badDirection_unrank]
  exact rank_000000896_mask_57_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_57_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_57_badDirection_rank rank_000000896_mask_57_badDirection_mask = rank_000000896_mask_57_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_57_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_57_badDirection_b, rank_000000896_mask_57_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_57_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_57_badDirection_rank rank_000000896_mask_57_badDirection_mask ⟨8, by decide⟩ =
      rank_000000896_mask_57_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_57_badDirection_seqAtRank, rank_000000896_mask_57_badDirection_bAtRank]
  norm_num [rank_000000896_mask_57_badDirection_denom, rank_000000896_mask_57_badDirection_seq, rank_000000896_mask_57_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_57_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_57_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_57_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_57_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_57_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_57_badDirection_denom]

private def rank_000000896_mask_58_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_58_badDirection_mask : SignMask := ⟨58, by decide⟩
private def rank_000000896_mask_58_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_58_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_58_badDirection_b : Vec3 Rat := { x := (-20/9), y := (-52/9), z := (20/9) }
private def rank_000000896_mask_58_badDirection_denom : Rat := (-52/9)

private theorem rank_000000896_mask_58_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_58_badDirection_word = some rank_000000896_mask_58_badDirection_rank := by
  decide

private theorem rank_000000896_mask_58_badDirection_unrank :
    unrankPairWord rank_000000896_mask_58_badDirection_rank = rank_000000896_mask_58_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_58_badDirection_word rank_000000896_mask_58_badDirection_rank).1
    rank_000000896_mask_58_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_58_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_58_badDirection_word rank_000000896_mask_58_badDirection_mask = rank_000000896_mask_58_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_58_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_58_badDirection_rank rank_000000896_mask_58_badDirection_mask = rank_000000896_mask_58_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_58_badDirection_unrank]
  exact rank_000000896_mask_58_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_58_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_58_badDirection_rank rank_000000896_mask_58_badDirection_mask = rank_000000896_mask_58_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_58_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_58_badDirection_b, rank_000000896_mask_58_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_58_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_58_badDirection_rank rank_000000896_mask_58_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_58_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_58_badDirection_seqAtRank, rank_000000896_mask_58_badDirection_bAtRank]
  norm_num [rank_000000896_mask_58_badDirection_denom, rank_000000896_mask_58_badDirection_seq, rank_000000896_mask_58_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_58_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_58_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_58_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_58_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_58_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_58_badDirection_denom]

private def rank_000000896_mask_59_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_59_badDirection_mask : SignMask := ⟨59, by decide⟩
private def rank_000000896_mask_59_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_59_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tppp
private def rank_000000896_mask_59_badDirection_b : Vec3 Rat := { x := (-20/9), y := (20/9), z := (20/9) }
private def rank_000000896_mask_59_badDirection_denom : Rat := (-20/3)

private theorem rank_000000896_mask_59_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_59_badDirection_word = some rank_000000896_mask_59_badDirection_rank := by
  decide

private theorem rank_000000896_mask_59_badDirection_unrank :
    unrankPairWord rank_000000896_mask_59_badDirection_rank = rank_000000896_mask_59_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_59_badDirection_word rank_000000896_mask_59_badDirection_rank).1
    rank_000000896_mask_59_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_59_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_59_badDirection_word rank_000000896_mask_59_badDirection_mask = rank_000000896_mask_59_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_59_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_59_badDirection_rank rank_000000896_mask_59_badDirection_mask = rank_000000896_mask_59_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_59_badDirection_unrank]
  exact rank_000000896_mask_59_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_59_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_59_badDirection_rank rank_000000896_mask_59_badDirection_mask = rank_000000896_mask_59_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_59_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_59_badDirection_b, rank_000000896_mask_59_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_59_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_59_badDirection_rank rank_000000896_mask_59_badDirection_mask ⟨10, by decide⟩ =
      rank_000000896_mask_59_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_59_badDirection_seqAtRank, rank_000000896_mask_59_badDirection_bAtRank]
  norm_num [rank_000000896_mask_59_badDirection_denom, rank_000000896_mask_59_badDirection_seq, rank_000000896_mask_59_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_59_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_59_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_59_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_59_badDirection_mask)
      (i := ⟨10, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_59_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_59_badDirection_denom]

private def rank_000000896_mask_60_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_60_badDirection_mask : SignMask := ⟨60, by decide⟩
private def rank_000000896_mask_60_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_60_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_60_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (-4/9) }
private def rank_000000896_mask_60_badDirection_denom : Rat := (-76/9)

private theorem rank_000000896_mask_60_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_60_badDirection_word = some rank_000000896_mask_60_badDirection_rank := by
  decide

private theorem rank_000000896_mask_60_badDirection_unrank :
    unrankPairWord rank_000000896_mask_60_badDirection_rank = rank_000000896_mask_60_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_60_badDirection_word rank_000000896_mask_60_badDirection_rank).1
    rank_000000896_mask_60_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_60_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_60_badDirection_word rank_000000896_mask_60_badDirection_mask = rank_000000896_mask_60_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_60_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_60_badDirection_rank rank_000000896_mask_60_badDirection_mask = rank_000000896_mask_60_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_60_badDirection_unrank]
  exact rank_000000896_mask_60_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_60_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_60_badDirection_rank rank_000000896_mask_60_badDirection_mask = rank_000000896_mask_60_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_60_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_60_badDirection_b, rank_000000896_mask_60_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_60_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_60_badDirection_rank rank_000000896_mask_60_badDirection_mask ⟨8, by decide⟩ =
      rank_000000896_mask_60_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_60_badDirection_seqAtRank, rank_000000896_mask_60_badDirection_bAtRank]
  norm_num [rank_000000896_mask_60_badDirection_denom, rank_000000896_mask_60_badDirection_seq, rank_000000896_mask_60_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_60_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_60_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_60_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_60_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_60_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_60_badDirection_denom]

private def rank_000000896_mask_61_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_61_badDirection_mask : SignMask := ⟨61, by decide⟩
private def rank_000000896_mask_61_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_61_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_61_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (-4/9) }
private def rank_000000896_mask_61_badDirection_denom : Rat := (-4/9)

private theorem rank_000000896_mask_61_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_61_badDirection_word = some rank_000000896_mask_61_badDirection_rank := by
  decide

private theorem rank_000000896_mask_61_badDirection_unrank :
    unrankPairWord rank_000000896_mask_61_badDirection_rank = rank_000000896_mask_61_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_61_badDirection_word rank_000000896_mask_61_badDirection_rank).1
    rank_000000896_mask_61_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_61_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_61_badDirection_word rank_000000896_mask_61_badDirection_mask = rank_000000896_mask_61_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_61_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_61_badDirection_rank rank_000000896_mask_61_badDirection_mask = rank_000000896_mask_61_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_61_badDirection_unrank]
  exact rank_000000896_mask_61_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_61_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_61_badDirection_rank rank_000000896_mask_61_badDirection_mask = rank_000000896_mask_61_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_61_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_61_badDirection_b, rank_000000896_mask_61_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_61_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_61_badDirection_rank rank_000000896_mask_61_badDirection_mask ⟨8, by decide⟩ =
      rank_000000896_mask_61_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_61_badDirection_seqAtRank, rank_000000896_mask_61_badDirection_bAtRank]
  norm_num [rank_000000896_mask_61_badDirection_denom, rank_000000896_mask_61_badDirection_seq, rank_000000896_mask_61_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_61_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_61_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_61_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_61_badDirection_mask)
      (i := ⟨8, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_61_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_61_badDirection_denom]

private def rank_000000896_mask_62_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_62_badDirection_mask : SignMask := ⟨62, by decide⟩
private def rank_000000896_mask_62_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_62_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_62_badDirection_b : Vec3 Rat := { x := (-68/9), y := (-4/9), z := (68/9) }
private def rank_000000896_mask_62_badDirection_denom : Rat := (-4/9)

private theorem rank_000000896_mask_62_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_62_badDirection_word = some rank_000000896_mask_62_badDirection_rank := by
  decide

private theorem rank_000000896_mask_62_badDirection_unrank :
    unrankPairWord rank_000000896_mask_62_badDirection_rank = rank_000000896_mask_62_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_62_badDirection_word rank_000000896_mask_62_badDirection_rank).1
    rank_000000896_mask_62_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_62_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_62_badDirection_word rank_000000896_mask_62_badDirection_mask = rank_000000896_mask_62_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_62_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_62_badDirection_rank rank_000000896_mask_62_badDirection_mask = rank_000000896_mask_62_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_62_badDirection_unrank]
  exact rank_000000896_mask_62_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_62_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_62_badDirection_rank rank_000000896_mask_62_badDirection_mask = rank_000000896_mask_62_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_62_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_62_badDirection_b, rank_000000896_mask_62_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_62_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_62_badDirection_rank rank_000000896_mask_62_badDirection_mask ⟨6, by decide⟩ =
      rank_000000896_mask_62_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_62_badDirection_seqAtRank, rank_000000896_mask_62_badDirection_bAtRank]
  norm_num [rank_000000896_mask_62_badDirection_denom, rank_000000896_mask_62_badDirection_seq, rank_000000896_mask_62_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_62_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_62_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_62_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_62_badDirection_mask)
      (i := ⟨6, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_62_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_62_badDirection_denom]

private def rank_000000896_mask_63_badDirection_rank : Fin numPairWords := ⟨896, by decide⟩
private def rank_000000896_mask_63_badDirection_mask : SignMask := ⟨63, by decide⟩
private def rank_000000896_mask_63_badDirection_word : PairWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.dm11, PairId.dm11, PairId.d111, PairId.d1m1, PairId.d1m1, PairId.d111], by decide⟩
private def rank_000000896_mask_63_badDirection_seq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.yp
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.zp
  | ⟨5, _⟩ => Face.zm
  | ⟨6, _⟩ => Face.tppm
  | ⟨7, _⟩ => Face.tmmp
  | ⟨8, _⟩ => Face.tmpp
  | ⟨9, _⟩ => Face.tpmm
  | ⟨10, _⟩ => Face.tppp
  | ⟨11, _⟩ => Face.tpmp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.tmmm
private def rank_000000896_mask_63_badDirection_b : Vec3 Rat := { x := (-68/9), y := (68/9), z := (68/9) }
private def rank_000000896_mask_63_badDirection_denom : Rat := (-68/9)

private theorem rank_000000896_mask_63_badDirection_rankWord :
    rankPairWord? rank_000000896_mask_63_badDirection_word = some rank_000000896_mask_63_badDirection_rank := by
  decide

private theorem rank_000000896_mask_63_badDirection_unrank :
    unrankPairWord rank_000000896_mask_63_badDirection_rank = rank_000000896_mask_63_badDirection_word := by
  exact (rankPairWord?_eq_some_iff_unrank rank_000000896_mask_63_badDirection_word rank_000000896_mask_63_badDirection_rank).1
    rank_000000896_mask_63_badDirection_rankWord |>.symm

private theorem rank_000000896_mask_63_badDirection_seqChoice :
    translationChoiceSeq rank_000000896_mask_63_badDirection_word rank_000000896_mask_63_badDirection_mask = rank_000000896_mask_63_badDirection_seq := by
  funext i
  fin_cases i <;> rfl

private theorem rank_000000896_mask_63_badDirection_seqAtRank :
    translationSeqAtRankMask rank_000000896_mask_63_badDirection_rank rank_000000896_mask_63_badDirection_mask = rank_000000896_mask_63_badDirection_seq := by
  rw [translationSeqAtRankMask, rank_000000896_mask_63_badDirection_unrank]
  exact rank_000000896_mask_63_badDirection_seqChoice

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_63_badDirection_bAtRank :
    translationBAtRankMask rank_000000896_mask_63_badDirection_rank rank_000000896_mask_63_badDirection_mask = rank_000000896_mask_63_badDirection_b := by
  rw [translationBAtRankMask, rank_000000896_mask_63_badDirection_seqAtRank]
  apply Vec3.ext <;>
    norm_num [rank_000000896_mask_63_badDirection_b, rank_000000896_mask_63_badDirection_seq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

set_option maxHeartbeats 1200000 in
private theorem rank_000000896_mask_63_badDirection_denomAtRank :
    impactDenomAtRank rank_000000896_mask_63_badDirection_rank rank_000000896_mask_63_badDirection_mask ⟨11, by decide⟩ =
      rank_000000896_mask_63_badDirection_denom := by
  rw [impactDenomAtRank, rank_000000896_mask_63_badDirection_seqAtRank, rank_000000896_mask_63_badDirection_bAtRank]
  norm_num [rank_000000896_mask_63_badDirection_denom, rank_000000896_mask_63_badDirection_seq, rank_000000896_mask_63_badDirection_b,
      impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactCopyAff,
      pathPrefixAff, pathPrefixAffNat, impactFace, faceReflectionQ, reflM,
      reflD, normalQ, offsetQ, matSub, matId, affId, affCompose, scalarMat,
      outer, dot, matMul, matVec, vecAdd, scalarMul
    ]

private theorem rank_000000896_mask_63_badDirection_notGood
    (hlt : 896 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords)
      rank_000000896_mask_63_badDirection_mask := by
  have hrank :
      (⟨896, hlt⟩ : Fin numPairWords) = rank_000000896_mask_63_badDirection_rank := by
    ext
    rfl
  apply not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨896, hlt⟩ : Fin numPairWords))
      (mask := rank_000000896_mask_63_badDirection_mask)
      (i := ⟨11, by decide⟩)
    <;> try decide
  rw [hrank, rank_000000896_mask_63_badDirection_denomAtRank]
  norm_num [rank_000000896_mask_63_badDirection_denom]

theorem generatedAllPositiveMaskFacts
    {mask : SignMask}
    (h : generatedGoodMaskMember mask) :
    generatedSignatureFacts mask := by
  rcases h with h | h
  ·
    have hmask : mask = case_000000_mask := by
      ext
      simpa [case_000000_mask] using h
    rw [hmask]
    exact case_000000_signatureFacts
  ·
    rcases h with h | h
    ·
      have hmask : mask = case_000001_mask := by
        ext
        simpa [case_000001_mask] using h
      rw [hmask]
      exact case_000001_signatureFacts
    ·
      rcases h with h | h
      ·
        have hmask : mask = case_000002_mask := by
          ext
          simpa [case_000002_mask] using h
        rw [hmask]
        exact case_000002_signatureFacts
      ·
        rcases h with h | h
        ·
          have hmask : mask = case_000003_mask := by
            ext
            simpa [case_000003_mask] using h
          rw [hmask]
          exact case_000003_signatureFacts
        ·
          rcases h with h | h
          ·
            have hmask : mask = case_000004_mask := by
              ext
              simpa [case_000004_mask] using h
            rw [hmask]
            exact case_000004_signatureFacts
          ·
            rcases h with h | h
            ·
              have hmask : mask = case_000005_mask := by
                ext
                simpa [case_000005_mask] using h
              rw [hmask]
              exact case_000005_signatureFacts
            ·
              rcases h with h | h
              ·
                have hmask : mask = case_000006_mask := by
                  ext
                  simpa [case_000006_mask] using h
                rw [hmask]
                exact case_000006_signatureFacts
              ·
                rcases h with h | h
                ·
                  have hmask : mask = case_000007_mask := by
                    ext
                    simpa [case_000007_mask] using h
                  rw [hmask]
                  exact case_000007_signatureFacts
                ·
                  rcases h with h | h
                  ·
                    have hmask : mask = case_000008_mask := by
                      ext
                      simpa [case_000008_mask] using h
                    rw [hmask]
                    exact case_000008_signatureFacts
                  ·
                    rcases h with h | h
                    ·
                      have hmask : mask = case_000009_mask := by
                        ext
                        simpa [case_000009_mask] using h
                      rw [hmask]
                      exact case_000009_signatureFacts
                    ·
                      rcases h with h | h
                      ·
                        have hmask : mask = case_000010_mask := by
                          ext
                          simpa [case_000010_mask] using h
                        rw [hmask]
                        exact case_000010_signatureFacts
                      ·
                        rcases h with h | h
                        ·
                          have hmask : mask = case_000011_mask := by
                            ext
                            simpa [case_000011_mask] using h
                          rw [hmask]
                          exact case_000011_signatureFacts
                        ·
                          have hmask : mask = case_000012_mask := by
                            ext
                            simpa [case_000012_mask] using h
                          rw [hmask]
                          exact case_000012_signatureFacts

/--
AP.16BA closed singleton membership theorem.

For this singleton survivor signature, every semantic GoodDirection mask
is one of the eight positive masks.  Positive branches reduce by the
`generatedGoodMaskMember` definition; every other mask contradicts
GoodDirection via a generated nonpositive denominator witness.
-/
theorem generatedGoodMaskMember_of_GoodDirection
    {mask : SignMask} (hlt : 896 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask := by
  fin_cases mask
  · exact False.elim ((rank_000000896_mask_00_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_01_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_02_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_03_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_04_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_05_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_06_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_07_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_08_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_10_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_11_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_12_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_14_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_15_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_17_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_19_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_20_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_21_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_23_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_25_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_26_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_27_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_29_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_32_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_33_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_34_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_35_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_36_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_37_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_38_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_39_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_40_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_41_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_42_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_43_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_44_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_46_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_48_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_49_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_50_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_51_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_52_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_53_badDirection_notGood hlt) hgood)
  · simp [generatedGoodMaskMember]
  · simp [generatedGoodMaskMember]
  · exact False.elim ((rank_000000896_mask_56_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_57_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_58_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_59_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_60_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_61_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_62_badDirection_notGood hlt) hgood)
  · exact False.elim ((rank_000000896_mask_63_badDirection_notGood hlt) hgood)

private inductive GeneratedBadCube
  | b000
  | b001
  | b002
  | b003
  | b004
  | b005
  | b006
  | b007
  | b008
deriving DecidableEq, Repr

private def generatedBadCubeMember : GeneratedBadCube -> SignMask -> Prop
  | .b000, mask =>
      mask.val = 32 \/
    mask.val = 33 \/
    mask.val = 34 \/
    mask.val = 35 \/
    mask.val = 40 \/
    mask.val = 41 \/
    mask.val = 42 \/
    mask.val = 43 \/
    mask.val = 48 \/
    mask.val = 49 \/
    mask.val = 50 \/
    mask.val = 51 \/
    mask.val = 56 \/
    mask.val = 57 \/
    mask.val = 58 \/
    mask.val = 59 -- cube 1**0**
  | .b001, mask =>
      mask.val = 0 \/
    mask.val = 1 \/
    mask.val = 2 \/
    mask.val = 3 \/
    mask.val = 4 \/
    mask.val = 5 \/
    mask.val = 6 \/
    mask.val = 7 \/
    mask.val = 32 \/
    mask.val = 33 \/
    mask.val = 34 \/
    mask.val = 35 \/
    mask.val = 36 \/
    mask.val = 37 \/
    mask.val = 38 \/
    mask.val = 39 -- cube *00***
  | .b002, mask =>
      mask.val = 0 \/
    mask.val = 2 \/
    mask.val = 4 \/
    mask.val = 6 \/
    mask.val = 8 \/
    mask.val = 10 \/
    mask.val = 12 \/
    mask.val = 14 \/
    mask.val = 32 \/
    mask.val = 34 \/
    mask.val = 36 \/
    mask.val = 38 \/
    mask.val = 40 \/
    mask.val = 42 \/
    mask.val = 44 \/
    mask.val = 46 -- cube *0***0
  | .b003, mask =>
      mask.val = 17 \/
    mask.val = 21 \/
    mask.val = 25 \/
    mask.val = 29 \/
    mask.val = 49 \/
    mask.val = 53 \/
    mask.val = 57 \/
    mask.val = 61 -- cube *1**01
  | .b004, mask =>
      mask.val = 56 \/
    mask.val = 57 \/
    mask.val = 58 \/
    mask.val = 59 \/
    mask.val = 60 \/
    mask.val = 61 \/
    mask.val = 62 \/
    mask.val = 63 -- cube 111***
  | .b005, mask =>
      mask.val = 10 \/
    mask.val = 11 \/
    mask.val = 26 \/
    mask.val = 27 \/
    mask.val = 42 \/
    mask.val = 43 \/
    mask.val = 58 \/
    mask.val = 59 -- cube **101*
  | .b006, mask =>
      mask.val = 1 \/
    mask.val = 3 \/
    mask.val = 5 \/
    mask.val = 7 \/
    mask.val = 17 \/
    mask.val = 19 \/
    mask.val = 21 \/
    mask.val = 23 -- cube 0*0**1
  | .b007, mask =>
      mask.val = 4 \/
    mask.val = 5 \/
    mask.val = 20 \/
    mask.val = 21 \/
    mask.val = 36 \/
    mask.val = 37 \/
    mask.val = 52 \/
    mask.val = 53 -- cube **010*
  | .b008, mask =>
      mask.val = 2 \/
    mask.val = 3 \/
    mask.val = 6 \/
    mask.val = 7 \/
    mask.val = 10 \/
    mask.val = 11 \/
    mask.val = 14 \/
    mask.val = 15 -- cube 00**1*

private theorem generatedBadCube_notGood
    {cube : GeneratedBadCube} {mask : SignMask}
    (hlt : 896 < numPairWords)
    (hmember : generatedBadCubeMember cube mask) :
    ¬ GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords) mask := by
  cases cube
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_32_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_32_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_32_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_33_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_33_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_33_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_34_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_34_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_34_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_35_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_35_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_35_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_40_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_40_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_40_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_41_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_41_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_41_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_42_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_42_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_42_badDirection_notGood hlt
                ·
                  rcases hmember_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail
                  ·
                    have hmask : mask = rank_000000896_mask_43_badDirection_mask := by
                      ext
                      simpa [rank_000000896_mask_43_badDirection_mask] using h
                    rw [hmask]
                    exact rank_000000896_mask_43_badDirection_notGood hlt
                  ·
                    rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail
                    ·
                      have hmask : mask = rank_000000896_mask_48_badDirection_mask := by
                        ext
                        simpa [rank_000000896_mask_48_badDirection_mask] using h
                      rw [hmask]
                      exact rank_000000896_mask_48_badDirection_notGood hlt
                    ·
                      rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                      ·
                        have hmask : mask = rank_000000896_mask_49_badDirection_mask := by
                          ext
                          simpa [rank_000000896_mask_49_badDirection_mask] using h
                        rw [hmask]
                        exact rank_000000896_mask_49_badDirection_notGood hlt
                      ·
                        rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                        ·
                          have hmask : mask = rank_000000896_mask_50_badDirection_mask := by
                            ext
                            simpa [rank_000000896_mask_50_badDirection_mask] using h
                          rw [hmask]
                          exact rank_000000896_mask_50_badDirection_notGood hlt
                        ·
                          rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                          ·
                            have hmask : mask = rank_000000896_mask_51_badDirection_mask := by
                              ext
                              simpa [rank_000000896_mask_51_badDirection_mask] using h
                            rw [hmask]
                            exact rank_000000896_mask_51_badDirection_notGood hlt
                          ·
                            rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                            ·
                              have hmask : mask = rank_000000896_mask_56_badDirection_mask := by
                                ext
                                simpa [rank_000000896_mask_56_badDirection_mask] using h
                              rw [hmask]
                              exact rank_000000896_mask_56_badDirection_notGood hlt
                            ·
                              rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                              ·
                                have hmask : mask = rank_000000896_mask_57_badDirection_mask := by
                                  ext
                                  simpa [rank_000000896_mask_57_badDirection_mask] using h
                                rw [hmask]
                                exact rank_000000896_mask_57_badDirection_notGood hlt
                              ·
                                rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                                ·
                                  have hmask : mask = rank_000000896_mask_58_badDirection_mask := by
                                    ext
                                    simpa [rank_000000896_mask_58_badDirection_mask] using h
                                  rw [hmask]
                                  exact rank_000000896_mask_58_badDirection_notGood hlt
                                ·
                                  have hmask : mask = rank_000000896_mask_59_badDirection_mask := by
                                    ext
                                    simpa [rank_000000896_mask_59_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                                  rw [hmask]
                                  exact rank_000000896_mask_59_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_00_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_00_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_00_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_01_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_01_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_01_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_02_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_02_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_02_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_03_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_03_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_03_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_04_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_04_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_04_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_05_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_05_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_05_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_06_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_06_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_06_badDirection_notGood hlt
                ·
                  rcases hmember_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail
                  ·
                    have hmask : mask = rank_000000896_mask_07_badDirection_mask := by
                      ext
                      simpa [rank_000000896_mask_07_badDirection_mask] using h
                    rw [hmask]
                    exact rank_000000896_mask_07_badDirection_notGood hlt
                  ·
                    rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail
                    ·
                      have hmask : mask = rank_000000896_mask_32_badDirection_mask := by
                        ext
                        simpa [rank_000000896_mask_32_badDirection_mask] using h
                      rw [hmask]
                      exact rank_000000896_mask_32_badDirection_notGood hlt
                    ·
                      rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                      ·
                        have hmask : mask = rank_000000896_mask_33_badDirection_mask := by
                          ext
                          simpa [rank_000000896_mask_33_badDirection_mask] using h
                        rw [hmask]
                        exact rank_000000896_mask_33_badDirection_notGood hlt
                      ·
                        rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                        ·
                          have hmask : mask = rank_000000896_mask_34_badDirection_mask := by
                            ext
                            simpa [rank_000000896_mask_34_badDirection_mask] using h
                          rw [hmask]
                          exact rank_000000896_mask_34_badDirection_notGood hlt
                        ·
                          rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                          ·
                            have hmask : mask = rank_000000896_mask_35_badDirection_mask := by
                              ext
                              simpa [rank_000000896_mask_35_badDirection_mask] using h
                            rw [hmask]
                            exact rank_000000896_mask_35_badDirection_notGood hlt
                          ·
                            rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                            ·
                              have hmask : mask = rank_000000896_mask_36_badDirection_mask := by
                                ext
                                simpa [rank_000000896_mask_36_badDirection_mask] using h
                              rw [hmask]
                              exact rank_000000896_mask_36_badDirection_notGood hlt
                            ·
                              rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                              ·
                                have hmask : mask = rank_000000896_mask_37_badDirection_mask := by
                                  ext
                                  simpa [rank_000000896_mask_37_badDirection_mask] using h
                                rw [hmask]
                                exact rank_000000896_mask_37_badDirection_notGood hlt
                              ·
                                rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                                ·
                                  have hmask : mask = rank_000000896_mask_38_badDirection_mask := by
                                    ext
                                    simpa [rank_000000896_mask_38_badDirection_mask] using h
                                  rw [hmask]
                                  exact rank_000000896_mask_38_badDirection_notGood hlt
                                ·
                                  have hmask : mask = rank_000000896_mask_39_badDirection_mask := by
                                    ext
                                    simpa [rank_000000896_mask_39_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                                  rw [hmask]
                                  exact rank_000000896_mask_39_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_00_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_00_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_00_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_02_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_02_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_02_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_04_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_04_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_04_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_06_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_06_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_06_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_08_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_08_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_08_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_10_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_10_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_10_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_12_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_12_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_12_badDirection_notGood hlt
                ·
                  rcases hmember_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail
                  ·
                    have hmask : mask = rank_000000896_mask_14_badDirection_mask := by
                      ext
                      simpa [rank_000000896_mask_14_badDirection_mask] using h
                    rw [hmask]
                    exact rank_000000896_mask_14_badDirection_notGood hlt
                  ·
                    rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail
                    ·
                      have hmask : mask = rank_000000896_mask_32_badDirection_mask := by
                        ext
                        simpa [rank_000000896_mask_32_badDirection_mask] using h
                      rw [hmask]
                      exact rank_000000896_mask_32_badDirection_notGood hlt
                    ·
                      rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                      ·
                        have hmask : mask = rank_000000896_mask_34_badDirection_mask := by
                          ext
                          simpa [rank_000000896_mask_34_badDirection_mask] using h
                        rw [hmask]
                        exact rank_000000896_mask_34_badDirection_notGood hlt
                      ·
                        rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                        ·
                          have hmask : mask = rank_000000896_mask_36_badDirection_mask := by
                            ext
                            simpa [rank_000000896_mask_36_badDirection_mask] using h
                          rw [hmask]
                          exact rank_000000896_mask_36_badDirection_notGood hlt
                        ·
                          rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                          ·
                            have hmask : mask = rank_000000896_mask_38_badDirection_mask := by
                              ext
                              simpa [rank_000000896_mask_38_badDirection_mask] using h
                            rw [hmask]
                            exact rank_000000896_mask_38_badDirection_notGood hlt
                          ·
                            rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                            ·
                              have hmask : mask = rank_000000896_mask_40_badDirection_mask := by
                                ext
                                simpa [rank_000000896_mask_40_badDirection_mask] using h
                              rw [hmask]
                              exact rank_000000896_mask_40_badDirection_notGood hlt
                            ·
                              rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                              ·
                                have hmask : mask = rank_000000896_mask_42_badDirection_mask := by
                                  ext
                                  simpa [rank_000000896_mask_42_badDirection_mask] using h
                                rw [hmask]
                                exact rank_000000896_mask_42_badDirection_notGood hlt
                              ·
                                rcases hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                                ·
                                  have hmask : mask = rank_000000896_mask_44_badDirection_mask := by
                                    ext
                                    simpa [rank_000000896_mask_44_badDirection_mask] using h
                                  rw [hmask]
                                  exact rank_000000896_mask_44_badDirection_notGood hlt
                                ·
                                  have hmask : mask = rank_000000896_mask_46_badDirection_mask := by
                                    ext
                                    simpa [rank_000000896_mask_46_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail_tail
                                  rw [hmask]
                                  exact rank_000000896_mask_46_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_17_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_17_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_17_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_21_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_21_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_21_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_25_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_25_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_25_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_29_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_29_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_29_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_49_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_49_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_49_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_53_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_53_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_53_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_57_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_57_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_57_badDirection_notGood hlt
                ·
                  have hmask : mask = rank_000000896_mask_61_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_61_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                  rw [hmask]
                  exact rank_000000896_mask_61_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_56_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_56_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_56_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_57_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_57_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_57_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_58_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_58_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_58_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_59_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_59_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_59_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_60_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_60_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_60_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_61_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_61_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_61_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_62_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_62_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_62_badDirection_notGood hlt
                ·
                  have hmask : mask = rank_000000896_mask_63_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_63_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                  rw [hmask]
                  exact rank_000000896_mask_63_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_10_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_10_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_10_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_11_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_11_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_11_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_26_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_26_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_26_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_27_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_27_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_27_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_42_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_42_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_42_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_43_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_43_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_43_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_58_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_58_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_58_badDirection_notGood hlt
                ·
                  have hmask : mask = rank_000000896_mask_59_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_59_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                  rw [hmask]
                  exact rank_000000896_mask_59_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_01_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_01_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_01_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_03_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_03_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_03_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_05_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_05_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_05_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_07_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_07_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_07_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_17_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_17_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_17_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_19_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_19_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_19_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_21_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_21_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_21_badDirection_notGood hlt
                ·
                  have hmask : mask = rank_000000896_mask_23_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_23_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                  rw [hmask]
                  exact rank_000000896_mask_23_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_04_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_04_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_04_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_05_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_05_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_05_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_20_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_20_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_20_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_21_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_21_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_21_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_36_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_36_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_36_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_37_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_37_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_37_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_52_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_52_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_52_badDirection_notGood hlt
                ·
                  have hmask : mask = rank_000000896_mask_53_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_53_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                  rw [hmask]
                  exact rank_000000896_mask_53_badDirection_notGood hlt
  · simp [generatedBadCubeMember] at hmember
    rcases hmember with h | hmember_tail
    ·
      have hmask : mask = rank_000000896_mask_02_badDirection_mask := by
        ext
        simpa [rank_000000896_mask_02_badDirection_mask] using h
      rw [hmask]
      exact rank_000000896_mask_02_badDirection_notGood hlt
    ·
      rcases hmember_tail with h | hmember_tail_tail
      ·
        have hmask : mask = rank_000000896_mask_03_badDirection_mask := by
          ext
          simpa [rank_000000896_mask_03_badDirection_mask] using h
        rw [hmask]
        exact rank_000000896_mask_03_badDirection_notGood hlt
      ·
        rcases hmember_tail_tail with h | hmember_tail_tail_tail
        ·
          have hmask : mask = rank_000000896_mask_06_badDirection_mask := by
            ext
            simpa [rank_000000896_mask_06_badDirection_mask] using h
          rw [hmask]
          exact rank_000000896_mask_06_badDirection_notGood hlt
        ·
          rcases hmember_tail_tail_tail with h | hmember_tail_tail_tail_tail
          ·
            have hmask : mask = rank_000000896_mask_07_badDirection_mask := by
              ext
              simpa [rank_000000896_mask_07_badDirection_mask] using h
            rw [hmask]
            exact rank_000000896_mask_07_badDirection_notGood hlt
          ·
            rcases hmember_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail
            ·
              have hmask : mask = rank_000000896_mask_10_badDirection_mask := by
                ext
                simpa [rank_000000896_mask_10_badDirection_mask] using h
              rw [hmask]
              exact rank_000000896_mask_10_badDirection_notGood hlt
            ·
              rcases hmember_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail
              ·
                have hmask : mask = rank_000000896_mask_11_badDirection_mask := by
                  ext
                  simpa [rank_000000896_mask_11_badDirection_mask] using h
                rw [hmask]
                exact rank_000000896_mask_11_badDirection_notGood hlt
              ·
                rcases hmember_tail_tail_tail_tail_tail_tail with h | hmember_tail_tail_tail_tail_tail_tail_tail
                ·
                  have hmask : mask = rank_000000896_mask_14_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_14_badDirection_mask] using h
                  rw [hmask]
                  exact rank_000000896_mask_14_badDirection_notGood hlt
                ·
                  have hmask : mask = rank_000000896_mask_15_badDirection_mask := by
                    ext
                    simpa [rank_000000896_mask_15_badDirection_mask] using hmember_tail_tail_tail_tail_tail_tail_tail
                  rw [hmask]
                  exact rank_000000896_mask_15_badDirection_notGood hlt

private theorem generatedBadCube_complete
    {mask : SignMask}
    (hnot : ¬ generatedGoodMaskMember mask) :
    exists cube : GeneratedBadCube, generatedBadCubeMember cube mask := by
  fin_cases mask
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b006, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b008, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b006, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b006, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b006, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b003, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b005, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b005, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b003, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b001, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b001, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b001, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b000, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b005, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b005, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b002, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b000, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b003, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b000, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b000, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b007, by simp [generatedBadCubeMember]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.b004, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b004, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b005, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b005, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b004, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b004, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b004, by simp [generatedBadCubeMember]⟩
  · exact ⟨.b004, by simp [generatedBadCubeMember]⟩

private def generatedBadMaskCover :
    BadMaskCover 896 generatedGoodMaskMember where
  BadFamily := GeneratedBadCube
  Member := generatedBadCubeMember
  notGood := by
    intro family mask hlt hmember
    exact generatedBadCube_notGood hlt hmember
  complete := by
    intro mask hnot
    exact generatedBadCube_complete hnot

/-- AP.16BF membership theorem via the bad-mask cover interface. -/
theorem generatedGoodMaskMember_of_GoodDirection_viaCover
    {mask : SignMask} (hlt : 896 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨896, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask :=
  generatedBadMaskCover.goodMaskMember_of_goodDirection hlt hgood

private def generatedSignatureClassifier
    (hmask :
      forall {mask : SignMask} (hlt : 896 < numPairWords),
        goodDirectionAtRankBool ⟨896, hlt⟩ mask = true ->
          generatedGoodMaskMember mask) :
    PositiveSurvivorBoolSignatureClassifierOnRange 896 897 :=
  PositiveSurvivorBoolSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    896 GeneratedCandidate generatedCandidateOfMask
    generatedGoodMaskMember generatedSignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    hmask (by intro mask h; exact generatedAllPositiveMaskFacts h)
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

private def generatedSemanticSignatureClassifier
    (hmask :
      forall {mask : SignMask} (hlt : 896 < numPairWords),
        GoodDirectionAtRank ⟨896, hlt⟩ mask ->
          generatedGoodMaskMember mask) :
    PositiveSurvivorSignatureClassifierOnRange 896 897 :=
  PositiveSurvivorSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
    896 GeneratedCandidate generatedCandidateOfMask
    generatedGoodMaskMember generatedSignatureFacts
    generatedSpec generatedRowProducer generatedKey
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    (by intro mask; cases generatedCandidateOfMask mask <;> rfl)
    hmask (by intro mask h; exact generatedAllPositiveMaskFacts h)
    (by intro mask h; exact h.1)
    (by intro mask h; exact h.2)

/--
AP.16T singleton-signature coverage theorem.

Positive-survivor signature: `99b0f198d1cfaed7cda5d410776dee771cca12407f72e28f54d57952f704f50c`
Anchor rank: `896`
Positive masks: `9, 13, 16, 18, 22, 24, 28, 30, 31, 45, 47, 54, 55`
Candidate groups: `8`
-/
theorem generatedSingletonSignatureAllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 896 < numPairWords),
        goodDirectionAtRankBool ⟨896, hlt⟩ mask = true ->
          generatedGoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 896 897 :=
  (generatedSignatureClassifier hmask).to_allGoodCoverage

/--
AP.16AZ semantic singleton-signature coverage theorem.

This is the same precomputed positive-mask fact surface as AP.16T, but
it targets the AP.16AY semantic classifier directly.  The remaining
membership premise can be closed with domain-specific nonpositive
denominator witnesses instead of reducing `goodDirectionAtRankBool`.
-/
theorem generatedSingletonSignatureSemanticAllGoodCoverage
    (hmask :
      forall {mask : SignMask} (hlt : 896 < numPairWords),
        GoodDirectionAtRank ⟨896, hlt⟩ mask ->
          generatedGoodMaskMember mask) :
    AllTranslationGoodCoverageOnRange 896 897 :=
  (generatedSemanticSignatureClassifier hmask).to_allGoodCoverage

/--
AP.16BA closed semantic singleton-signature coverage theorem.

This closes AP.16AZ's remaining semantic membership premise for the
singleton signature at rank `896`.
-/
theorem generatedSingletonSignatureClosedSemanticAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 896 897 :=
  generatedSingletonSignatureSemanticAllGoodCoverage
    (by
      intro mask hlt hgood
      exact generatedGoodMaskMember_of_GoodDirection_viaCover hlt hgood)

private theorem generatedGoodMaskMember_of_weightedPositiveMaskMember
    {mask : SignMask}
    (h :
      WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksSmoke.rank896PositiveMaskMember
        mask) :
    generatedGoodMaskMember mask := by
  fin_cases mask <;>
    simp [
      WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksSmoke.rank896PositiveMaskMember,
      generatedGoodMaskMember] at h ⊢

/--
AP.16T weighted-cover closed semantic singleton-signature coverage theorem.

This is the same source-row catalog as
`generatedSingletonSignatureClosedSemanticAllGoodCoverage`, but it closes the
semantic positive-mask premise through the traced weighted-denominator cube
cover rather than the older rank-local bad-mask cover.
-/
theorem generatedSingletonSignatureWeightedClosedSemanticAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 896 897 :=
  generatedSingletonSignatureSemanticAllGoodCoverage
    (by
      intro mask hlt hgood
      exact generatedGoodMaskMember_of_weightedPositiveMaskMember
        (WeightedDenomCubeDU9IQDirectBridgeCoverRank896PositiveMasksSmoke.goodDirection_rank896PositiveMaskMember
          hlt hgood))

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896PositivePrecomputedSignatureSmoke
