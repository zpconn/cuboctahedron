import Cuboctahedron.Generated.Translation.TwoSource.Core

/-!
Small proof-carrying two-source translation sample.

This module is intentionally tiny: it checks that the Phase 6Y generated-leaf
shape can prove a concrete GoodDirection survivor without the native compiler
decision tactic or the legacy large Boolean certificate path.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.Sample

private def sampleSupport : TwoSourceFarkasSupport where
  first :=
    TranslationConstraintSource.interior
      ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private def sampleSeq : Step14 -> Face
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

private def sampleB : Vec3 Rat :=
  { x := -4, y := -4, z := -44 / 3 }

private theorem sampleCheckedExplicit :
    sampleSupport.Checked sampleSeq sampleB := by
  refine
    { first_source_ok := ?_
      second_source_ok := ?_
      first_multiplier_nonneg := ?_
      second_multiplier_nonneg := ?_
      multiplier_positive := ?_
      weighted_a_zero := ?_
      weighted_b_zero := ?_
      weighted_c_nonpos := ?_ }
  · rfl
  · rfl
  · norm_num [sampleSupport, sampleSeq, sampleB,
      TwoSourceFarkasSupport.multipliers,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative,
      TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact,
      impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly,
      Lin2.y, Lin2.z, StrictLin2.zero, StrictLin2.add,
      StrictLin2.scale, impactDenom, impactPlaneNormalQ,
      impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul,
      matVec, vecAdd, scalarMul, lastImpact]
  · norm_num [sampleSupport, sampleSeq, sampleB,
      TwoSourceFarkasSupport.multipliers,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative,
      TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact,
      impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly,
      Lin2.y, Lin2.z, StrictLin2.zero, StrictLin2.add,
      StrictLin2.scale, impactDenom, impactPlaneNormalQ,
      impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul,
      matVec, vecAdd, scalarMul, lastImpact]
  · left
    norm_num [sampleSupport, sampleSeq, sampleB,
      TwoSourceFarkasSupport.multipliers,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative,
      TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact,
      impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly,
      Lin2.y, Lin2.z, StrictLin2.zero, StrictLin2.add,
      StrictLin2.scale, impactDenom, impactPlaneNormalQ,
      impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul,
      matVec, vecAdd, scalarMul, lastImpact]
  · norm_num [sampleSupport, sampleSeq, sampleB,
      TwoSourceFarkasSupport.multipliers,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative,
      TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact,
      impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly,
      Lin2.y, Lin2.z, StrictLin2.zero, StrictLin2.add,
      StrictLin2.scale, impactDenom, impactPlaneNormalQ,
      impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul,
      matVec, vecAdd, scalarMul, lastImpact]
  · norm_num [sampleSupport, sampleSeq, sampleB,
      TwoSourceFarkasSupport.multipliers,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative,
      TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact,
      impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly,
      Lin2.y, Lin2.z, StrictLin2.zero, StrictLin2.add,
      StrictLin2.scale, impactDenom, impactPlaneNormalQ,
      impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul,
      matVec, vecAdd, scalarMul, lastImpact]
  · norm_num [sampleSupport, sampleSeq, sampleB,
      TwoSourceFarkasSupport.multipliers,
      TwoSourceFarkasSupport.multipliersForLines,
      TwoSourceFarkasSupport.orientNonnegative,
      TwoSourceFarkasSupport.firstLine,
      TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt,
      orderingConstraint, impactInteriorConstraint, nextImpact,
      impactTimeLin, translationLinePointLin, linDotVec3,
      Lin2.ltConstraint, Lin2.add, Lin2.scale, Lin2.constOnly,
      Lin2.y, Lin2.z, StrictLin2.zero, StrictLin2.add,
      StrictLin2.scale, impactDenom, impactPlaneNormalQ,
      impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub,
      matId, affId, affCompose, scalarMat, outer, dot, matMul,
      matVec, vecAdd, scalarMul, lastImpact]

theorem sampleNoTranslationConstraints :
    ¬ exists y z : Real,
      forall L, L ∈ translationConstraints sampleSeq sampleB -> L.Holds y z :=
  sampleCheckedExplicit.sound

end Cuboctahedron.Generated.Translation.TwoSource.Sample
