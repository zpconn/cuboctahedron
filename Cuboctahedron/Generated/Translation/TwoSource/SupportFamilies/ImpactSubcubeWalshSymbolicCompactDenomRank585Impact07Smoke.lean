import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCompactDenomBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank585SplitSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalXSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalYSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalZSmoke

/-!
Generated AP16CQ compact-denominator consumer for rank `585`.

The module consumes an existing Walsh-vector trace fixture and closes one
compact denominator equality via `impactDenomAtRank_wordImpact_eq_walshDot`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank585SplitSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank585SplitSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank585SplitSmoke.generatedVector

def generatedMask8 : SignMask := ⟨8, by decide⟩

abbrev generatedNormal_x : WalshAffine :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalXSmoke.generatedNormal_x

abbrev generatedNormal_y : WalshAffine :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalYSmoke.generatedNormal_y

abbrev generatedNormal_z : WalshAffine :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalZSmoke.generatedNormal_z

def generatedNormal : WalshAffineVec3 where
  x := generatedNormal_x
  y := generatedNormal_y
  z := generatedNormal_z

def selectedWordImpactIndex : WordIndex := ⟨7, by decide⟩

abbrev firstWordImpactIndex : WordIndex := selectedWordImpactIndex

private theorem generatedWord_get_selected :
    generatedWord.get firstWordImpactIndex = PairId.d1m1 := by
  rfl

private theorem generatedFirstSignedCoeff (mask : SignMask) :
    signedCoeffAt generatedWord mask firstWordImpactIndex =
      (if signedPositiveAt generatedWord mask firstWordImpactIndex then 1 else -1 : Rat) := by
  rfl

private theorem generatedNormal_eq_impactNormalWalsh :
    generatedNormal =
      impactNormalWalshAt generatedWord firstWordImpactIndex := by
  apply WalshAffineVec3.ext
  · simpa [generatedNormal, generatedNormal_x, generatedWord, firstWordImpactIndex, selectedWordImpactIndex,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalXSmoke.generatedWord,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalXSmoke.firstWordImpactIndex,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalXSmoke.selectedWordImpactIndex] using
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalXSmoke.generatedNormal_x_eq_impactNormalWalsh_x
  · simpa [generatedNormal, generatedNormal_y, generatedWord, firstWordImpactIndex, selectedWordImpactIndex,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalYSmoke.generatedWord,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalYSmoke.firstWordImpactIndex,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalYSmoke.selectedWordImpactIndex] using
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalYSmoke.generatedNormal_y_eq_impactNormalWalsh_y
  · simpa [generatedNormal, generatedNormal_z, generatedWord, firstWordImpactIndex, selectedWordImpactIndex,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalZSmoke.generatedWord,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalZSmoke.firstWordImpactIndex,
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalZSmoke.selectedWordImpactIndex] using
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07NormalZSmoke.generatedNormal_z_eq_impactNormalWalsh_z

private theorem generatedNormal_eval_eq_compact (mask : SignMask) :
    generatedNormal.eval mask =
      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)
        (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)
          (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) := by
  rw [generatedNormal_eq_impactNormalWalsh]
  exact impactNormalWalshAt_eval generatedWord mask firstWordImpactIndex

private theorem generatedVector_eq_translationVector (mask : SignMask) :
    generatedVector.eval mask =
      translationVectorOfChoice generatedWord mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank585SplitSmoke.generatedVector_eval_eq_translationVector
    mask

theorem generatedDenomDotCompact (mask : SignMask) :
    impactDenomAtRank generatedRank mask
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval mask)
        (generatedVector.eval mask) := by
  exact impactDenomAtRank_wordImpact_eq_walshDot
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank585SplitSmoke.generatedUnrank_builds
    (generatedNormal_eval_eq_compact mask)
    (generatedVector_eq_translationVector mask)

theorem generatedDenomDotCompact_mask8 :
    impactDenomAtRank generatedRank generatedMask8
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval generatedMask8)
        (generatedVector.eval generatedMask8) :=
  generatedDenomDotCompact generatedMask8

theorem generatedDotPositive_of_goodDirection
    {mask : SignMask} (hgood : GoodDirectionAtRank generatedRank mask) :
    0 < Cuboctahedron.dot (generatedNormal.eval mask)
      (generatedVector.eval mask) :=
  walshDot_pos_of_goodDirection
    (generatedDenomDotCompact mask)
    hgood

theorem generatedDotPositive_mask8_of_goodDirection
    (hgood : GoodDirectionAtRank generatedRank generatedMask8) :
    0 < Cuboctahedron.dot (generatedNormal.eval generatedMask8)
      (generatedVector.eval generatedMask8) :=
  generatedDotPositive_of_goodDirection hgood

theorem compactDenomGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank585Impact07Smoke
