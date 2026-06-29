import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke
import Cuboctahedron.Search.TranslationRecurrence

/-!
AP16CQ compact-denominator symbolic smoke for the second Walsh trace fixture.

This repeats the AP16CN consumer pattern for rank `101105`, but it consumes the
public Walsh vector trace theorem from the reusable emitter instead of replaying
the generated vector proof locally.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank101105Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

private abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedRank

private abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedWord

private abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedVector

private def generatedMask6 : SignMask := ⟨6, by decide⟩

private def generatedNormal_x : WalshAffine where
  c := -1
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal_y : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal : WalshAffineVec3 where
  x := generatedNormal_x
  y := generatedNormal_y
  z := generatedNormal_z

private def firstWordImpactIndex : WordIndex := ⟨0, by decide⟩

private theorem generatedWord_get_first :
    generatedWord.get firstWordImpactIndex = PairId.x := by
  rfl

private theorem generatedFirstSignedCoeff (mask : SignMask) :
    signedCoeffAt generatedWord mask firstWordImpactIndex = (-1 : Rat) := by
  simp [signedCoeffAt, signedPositiveAt, generatedWord_get_first]

private theorem generatedNormal_eval_eq_compact (mask : SignMask) :
    generatedNormal.eval mask =
      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)
        (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)
          (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) := by
  have hCompact :
      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)
          (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)
            (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) =
        { x := (-1 : Rat), y := 0, z := 0 } := by
    rw [generatedFirstSignedCoeff mask, generatedWord_get_first]
    apply Vec3.ext <;>
      norm_num [firstWordImpactIndex, pairPrefixLinearNat, canonicalNormalQ,
        scalarMul, matVec, matId]
  rw [hCompact]
  apply Vec3.ext <;>
    norm_num [generatedNormal, generatedNormal_x, generatedNormal_y,
      generatedNormal_z, WalshAffineVec3.eval, WalshAffine.eval,
      firstWordImpactIndex]

private theorem generatedVector_mask6_eq_translationVector :
    generatedVector.eval generatedMask6 =
      translationVectorOfChoice generatedWord generatedMask6 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedVector_eval_eq_translationVector
    generatedMask6

theorem generatedDenomDotCompact_mask6 :
    impactDenomAtRank generatedRank generatedMask6
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval generatedMask6)
        (generatedVector.eval generatedMask6) := by
  rw [impactDenomAtRank_wordImpact_eq_compact,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedUnrank_builds,
    ← generatedNormal_eval_eq_compact]
  rw [generatedVector_mask6_eq_translationVector]

theorem compactDenomRank101105Smoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank101105Smoke
