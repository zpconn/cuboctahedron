import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ScaledRows

/-!
Phase 6Z.6I.1 scaled semantic row-family pilot.

This is a one-case generated-style pilot for the semantic row-family surface.  It
keeps the existing rank/sequence agreement checks, but proves the row-template
shape through scaled integer row normal forms.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ScaledFamilySmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ScaledRows

set_option maxRecDepth 10000
set_option maxHeartbeats 1200000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

def pilotSupport : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

def pilotRank : Fin numPairWords := ⟨1270032, by decide⟩
def pilotMask : SignMask := ⟨24, by decide⟩
def pilotWord : PairWord :=
  ⟨#[PairId.x, PairId.z, PairId.y, PairId.y, PairId.dm11, PairId.dm11,
      PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111,
      PairId.d1m1, PairId.z], by decide⟩

def pilotSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.zm
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.yp
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tmpp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.zp

def pilotB : Vec3 Rat := { x := (-116/9), y := (-116/9), z := (-20/9) }
def pilotFirstLine : StrictLin2 := sampleEqEqPosLine.toStrictLin2
def pilotSecondLine : StrictLin2 := sampleFixedOneOneLine.toStrictLin2

theorem pilotRankWord :
    rankPairWord? pilotWord = some pilotRank := by
  decide

theorem pilotUnrank :
    unrankPairWord pilotRank = pilotWord := by
  exact (rankPairWord?_eq_some_iff_unrank pilotWord pilotRank).1
    pilotRankWord |>.symm

theorem pilotSeqChoice :
    translationChoiceSeq pilotWord pilotMask = pilotSeq := by
  funext i
  fin_cases i <;> rfl

theorem pilotSeqAtRank :
    translationSeqAtRankMask pilotRank pilotMask = pilotSeq := by
  rw [translationSeqAtRankMask, pilotUnrank]
  exact pilotSeqChoice

theorem pilotBAtRank :
    translationBAtRankMask pilotRank pilotMask = pilotB := by
  rw [translationBAtRankMask, pilotSeqAtRank]
  apply Vec3.ext <;>
    norm_num [pilotB, pilotSeq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

theorem pilotFirstLine_eq :
    pilotSupport.firstLine pilotSeq pilotB = pilotFirstLine := by
  norm_num [pilotFirstLine, SLine.toStrictLin2, sampleEqEqPosLine, pilotSupport,
      pilotSeq, pilotB, TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine, translationConstraintSourceLine,
      xpStartConstraintAt, orderingConstraint, impactInteriorConstraint,
      nextImpact, impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,
      impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ,
      copiedOffsetQ, preImpactCopyAff, pathPrefixAff, pathPrefixAffNat,
      impactFace, faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd,
      scalarMul, lastImpact
    ]

theorem pilotSecondLine_eq :
    pilotSupport.secondLine pilotSeq pilotB = pilotSecondLine := by
  norm_num [pilotSecondLine, SLine.toStrictLin2, sampleFixedOneOneLine,
      pilotSupport, pilotSeq, pilotB, TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine, translationConstraintSourceLine,
      xpStartConstraintAt, orderingConstraint, impactInteriorConstraint,
      nextImpact, impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z,
      impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ,
      copiedOffsetQ, preImpactCopyAff, pathPrefixAff, pathPrefixAffNat,
      impactFace, faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd,
      scalarMul, lastImpact
    ]

theorem pilotShape :
    EqEqPosVarFirst pilotSupport pilotRank.val pilotMask := by
  intro hlt
  have hrank : (⟨pilotRank.val, hlt⟩ : Fin numPairWords) = pilotRank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨pilotRank.val, hlt⟩ pilotMask = pilotSeq := by
    simpa [hrank] using pilotSeqAtRank
  have hb :
      translationBAtRankMask ⟨pilotRank.val, hlt⟩ pilotMask = pilotB := by
    simpa [hrank] using pilotBAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt
          pilotSupport pilotRank.val hlt pilotMask = pilotFirstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt,
      hseq, hb, pilotFirstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt
          pilotSupport pilotRank.val hlt pilotMask = pilotSecondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt,
      hseq, hb, pilotSecondLine_eq]
  have hsource :
      SourceChecks pilotSupport pilotRank.val hlt pilotMask := by
    simp [SourceChecks, hseq, pilotSupport, checkTranslationConstraintSource,
      pilotSeq, impactFace]
  have hfirstRow :
      EqEqPosRow (FirstLineAt pilotSupport pilotRank.val hlt pilotMask) := by
    rw [FirstLineAt, hfirst, pilotFirstLine]
    exact sampleEqEqPosRow
  have hsecondRow :
      FixedRow (SecondLineAt pilotSupport pilotRank.val hlt pilotMask) 1 1 := by
    rw [SecondLineAt, hsecond, pilotSecondLine]
    exact sampleFixedOneOneRow
  exact ⟨hsource, hfirstRow, hsecondRow⟩

theorem pilotGoodKilled :
    TranslationGoodCaseKilled pilotRank pilotMask :=
  (SupportFamilyCheckedOn.kills
      (eqEqPosVarFirst_checkedOn pilotSupport))
    pilotRank.val pilotRank.isLt pilotMask pilotShape

theorem pilotTranslationKilled :
    TranslationCaseKilled pilotRank pilotMask :=
  TranslationGoodCaseKilled.killed pilotGoodKilled

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ScaledFamilySmoke
