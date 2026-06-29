import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Search.TranslationRecurrence

/-!
Generated AP.16CI compact-denominator symbolic smoke.

This keeps the AP16CD rank/impact/vector data, but replaces the bounded
mask-by-mask `impactDenomAtRank` replay with the compact recurrence theorem
`impactDenomAtRank_wordImpact_eq_compact`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

-- rank 100805, selected subcube 0, label *000**, impact 1
private def generatedRank : Fin numPairWords := ⟨100805, by decide⟩

private def generatedWord : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.dm11, PairId.d11m, PairId.z,
      PairId.z, PairId.d111, PairId.d111, PairId.d1m1, PairId.d1m1,
      PairId.d11m, PairId.dm11], by decide⟩

private theorem generatedRankWord :
    rankPairWord? generatedWord = some generatedRank := by
  decide

private theorem generatedUnrank :
    unrankPairWord generatedRank = generatedWord := by
  exact (rankPairWord?_eq_some_iff_unrank generatedWord generatedRank).1
    generatedRankWord |>.symm

private def generatedMask0 : SignMask := ⟨0, by decide⟩

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

private def generatedVector_x : WalshAffine where
  c := -4
  y := 0
  z := -32/9
  d111 := -104/27
  d11m := -8/9
  d1m1 := -40/27
  dm11 := 8/3

private def generatedVector_y : WalshAffine where
  c := 0
  y := 4
  z := 16/9
  d111 := -56/27
  d11m := 40/9
  d1m1 := 56/27
  dm11 := 8/3

private def generatedVector_z : WalshAffine where
  c := 0
  y := 0
  z := 4/9
  d111 := 40/27
  d11m := -8/9
  d1m1 := 104/27
  dm11 := 8/3

private def generatedVector : WalshAffineVec3 where
  x := generatedVector_x
  y := generatedVector_y
  z := generatedVector_z

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
      norm_num [firstWordImpactIndex, generatedWord, pairPrefixLinearNat,
        canonicalNormalQ, scalarMul, matVec, matId]
  rw [hCompact]
  apply Vec3.ext <;>
    norm_num [generatedNormal, generatedNormal_x, generatedNormal_y,
      generatedNormal_z, WalshAffineVec3.eval, WalshAffine.eval,
      firstWordImpactIndex]

private theorem generatedDenomDotCompact_mask0_of_vector_x
    (hVectorX :
      (generatedVector.eval generatedMask0).x =
        (translationVectorOfChoice generatedWord generatedMask0).x)
    (hlt : 100805 < numPairWords) :
    impactDenomAtRank (⟨100805, hlt⟩ : Fin numPairWords) generatedMask0
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval generatedMask0)
        (generatedVector.eval generatedMask0) := by
  have hrank : (⟨100805, hlt⟩ : Fin numPairWords) = generatedRank := by
    ext
    rfl
  rw [hrank, impactDenomAtRank_wordImpact_eq_compact, generatedUnrank,
    ← generatedNormal_eval_eq_compact]
  simp [generatedNormal, generatedNormal_x, generatedNormal_y,
    generatedNormal_z, WalshAffineVec3.eval, WalshAffine.eval,
    Cuboctahedron.dot]
  simpa [generatedVector, generatedVector_x, WalshAffineVec3.eval,
    WalshAffine.eval] using (congrArg Neg.neg hVectorX).symm

theorem compactDenomSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomSmoke
