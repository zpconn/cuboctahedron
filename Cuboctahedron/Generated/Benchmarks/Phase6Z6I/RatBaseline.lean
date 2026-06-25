import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Phase 6Z.6I rational baseline benchmark.

This file mirrors one representative generated semantic row-family proof.  It
uses the current rational definitions and `norm_num`-style generated checks.
-/

namespace Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option maxHeartbeats 1200000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

def benchSupport : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

def benchRank : Fin numPairWords := ⟨1270032, by decide⟩
def benchMask : SignMask := ⟨24, by decide⟩
def benchWord : PairWord := ⟨#[PairId.x, PairId.z, PairId.y, PairId.y, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.z], by decide⟩

def benchSeq : Step14 -> Face
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

def benchB : Vec3 Rat := { x := (-116/9), y := (-116/9), z := (-20/9) }
def benchFirstLine : StrictLin2 := { a := -1, b := -1, c := (-39/29) }
def benchSecondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

theorem benchRankWord :
    rankPairWord? benchWord = some benchRank := by
  decide

theorem benchUnrank :
    unrankPairWord benchRank = benchWord := by
  exact (rankPairWord?_eq_some_iff_unrank benchWord benchRank).1
    benchRankWord |>.symm

theorem benchSeqChoice :
    translationChoiceSeq benchWord benchMask = benchSeq := by
  funext i
  fin_cases i <;> rfl

theorem benchSeqAtRank :
    translationSeqAtRankMask benchRank benchMask = benchSeq := by
  rw [translationSeqAtRankMask, benchUnrank]
  exact benchSeqChoice

theorem benchBAtRank :
    translationBAtRankMask benchRank benchMask = benchB := by
  rw [translationBAtRankMask, benchSeqAtRank]
  apply Vec3.ext <;>
    norm_num [benchB, benchSeq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

theorem benchFirstLine_eq :
    benchSupport.firstLine benchSeq benchB = benchFirstLine := by
  norm_num [benchFirstLine, benchSupport, benchSeq, benchB,
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

theorem benchSecondLine_eq :
    benchSupport.secondLine benchSeq benchB = benchSecondLine := by
  norm_num [benchSecondLine, benchSupport, benchSeq, benchB,
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

theorem benchShape :
    EqEqPosVarFirst benchSupport benchRank.val benchMask := by
  intro hlt
  have hrank : (⟨benchRank.val, hlt⟩ : Fin numPairWords) = benchRank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨benchRank.val, hlt⟩ benchMask = benchSeq := by
    simpa [hrank] using benchSeqAtRank
  have hb :
      translationBAtRankMask ⟨benchRank.val, hlt⟩ benchMask = benchB := by
    simpa [hrank] using benchBAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt benchSupport benchRank.val hlt
          benchMask = benchFirstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, benchFirstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt benchSupport benchRank.val hlt
          benchMask = benchSecondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, benchSecondLine_eq]
  have hsource :
      SourceChecks benchSupport benchRank.val hlt benchMask := by
    simp [SourceChecks, hseq, benchSupport, checkTranslationConstraintSource,
      benchSeq, impactFace]
  have hfirstRow :
      EqEqPosRow (FirstLineAt benchSupport benchRank.val hlt benchMask) := by
    rw [FirstLineAt, hfirst]
    norm_num [benchFirstLine, EqEqPosRow]
  have hsecondRow :
      FixedRow (SecondLineAt benchSupport benchRank.val hlt benchMask) 1 1 := by
    rw [SecondLineAt, hsecond]
    norm_num [benchSecondLine, FixedRow]
  exact ⟨hsource, hfirstRow, hsecondRow⟩

theorem benchKilled :
    TranslationGoodCaseKilled benchRank benchMask :=
  (SupportFamilyCheckedOn.kills
      (eqEqPosVarFirst_checkedOn benchSupport))
    benchRank.val benchRank.isLt benchMask benchShape

end Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline
