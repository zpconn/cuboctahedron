import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCompactDenomBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank808SplitSmoke

/-!
Generated AP16CQ compact-denominator consumer for rank `808`.

The module consumes an existing Walsh-vector trace fixture and closes one
compact denominator equality via `impactDenomAtRank_wordImpact_eq_walshDot`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank808Impact01Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank808SplitSmoke.generatedRank

abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank808SplitSmoke.generatedWord

abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank808SplitSmoke.generatedVector

def generatedMask15 : SignMask := ⟨15, by decide⟩

def generatedNormal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal_y : WalshAffine where
  c := 0
  y := 1
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal_z : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def generatedNormal : WalshAffineVec3 where
  x := generatedNormal_x
  y := generatedNormal_y
  z := generatedNormal_z

def selectedWordImpactIndex : WordIndex := ⟨1, by decide⟩

abbrev firstWordImpactIndex : WordIndex := selectedWordImpactIndex

private theorem generatedWord_get_selected :
    generatedWord.get firstWordImpactIndex = PairId.y := by
  rfl

private theorem generatedFirstSignedCoeff (mask : SignMask) :
    signedCoeffAt generatedWord mask firstWordImpactIndex =
      (if signedPositiveAt generatedWord mask firstWordImpactIndex then 1 else -1 : Rat) := by
  rfl

private theorem generatedNormal_eq_impactNormalWalsh :
    generatedNormal =
      impactNormalWalshAt generatedWord firstWordImpactIndex := by
  apply WalshAffineVec3.ext <;>
    apply WalshAffine.ext <;>
    simp [generatedNormal, generatedNormal_x, generatedNormal_y, generatedNormal_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, firstWordImpactIndex, selectedWordImpactIndex, generatedWord_get_selected, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot] <;>
    norm_num [generatedNormal, generatedNormal_x, generatedNormal_y, generatedNormal_z, impactNormalWalshAt, WalshAffineVec3.smulConst, WalshAffine.const, WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero, signedCoeffWalshAt, countPairBeforeNat, generatedWord, firstWordImpactIndex, selectedWordImpactIndex, generatedWord_get_selected, pairPrefixLinearNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot]

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
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank808SplitSmoke.generatedVector_eval_eq_translationVector
    mask

theorem generatedDenomDotCompact (mask : SignMask) :
    impactDenomAtRank generatedRank mask
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval mask)
        (generatedVector.eval mask) := by
  exact impactDenomAtRank_wordImpact_eq_walshDot
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank808SplitSmoke.generatedUnrank_builds
    (generatedNormal_eval_eq_compact mask)
    (generatedVector_eq_translationVector mask)

theorem generatedDenomDotCompact_mask15 :
    impactDenomAtRank generatedRank generatedMask15
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval generatedMask15)
        (generatedVector.eval generatedMask15) :=
  generatedDenomDotCompact generatedMask15

theorem generatedDotPositive_of_goodDirection
    {mask : SignMask} (hgood : GoodDirectionAtRank generatedRank mask) :
    0 < Cuboctahedron.dot (generatedNormal.eval mask)
      (generatedVector.eval mask) :=
  walshDot_pos_of_goodDirection
    (generatedDenomDotCompact mask)
    hgood

theorem generatedDotPositive_mask15_of_goodDirection
    (hgood : GoodDirectionAtRank generatedRank generatedMask15) :
    0 < Cuboctahedron.dot (generatedNormal.eval generatedMask15)
      (generatedVector.eval generatedMask15) :=
  generatedDotPositive_of_goodDirection hgood

theorem compactDenomGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank808Impact01Smoke
