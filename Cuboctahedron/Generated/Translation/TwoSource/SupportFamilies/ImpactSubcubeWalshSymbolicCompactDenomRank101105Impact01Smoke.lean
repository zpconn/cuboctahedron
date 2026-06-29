import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshCompactDenomBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke

/-!
Generated AP16CQ compact-denominator consumer for rank `101105`.

The module consumes an existing Walsh-vector trace fixture and closes one
compact denominator equality via `impactDenomAtRank_wordImpact_eq_walshDot`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank101105Impact01Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

private abbrev generatedRank : Fin numPairWords :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedRank

private abbrev generatedWord : PairWord :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedWord

private abbrev generatedVector : WalshAffineVec3 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedVector

private def generatedMask6 : SignMask := ⟨6, by decide⟩

private def generatedNormal_x : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

private def generatedNormal_y : WalshAffine where
  c := 0
  y := 1
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

private def selectedWordImpactIndex : WordIndex := ⟨1, by decide⟩

private abbrev firstWordImpactIndex : WordIndex := selectedWordImpactIndex

private theorem generatedWord_get_selected :
    generatedWord.get firstWordImpactIndex = PairId.y := by
  rfl

private theorem generatedFirstSignedCoeff (mask : SignMask) :
    signedCoeffAt generatedWord mask firstWordImpactIndex =
      (if signedPositiveAt generatedWord mask firstWordImpactIndex then 1 else -1 : Rat) := by
  rfl

private theorem generatedNormal_eval_eq_compact (mask : SignMask) :
    generatedNormal.eval mask =
      matVec (pairPrefixLinearNat generatedWord firstWordImpactIndex.val)
        (scalarMul (signedCoeffAt generatedWord mask firstWordImpactIndex)
          (canonicalNormalQ (generatedWord.get firstWordImpactIndex))) := by
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> apply Vec3.ext
    <;> simp [generatedNormal, generatedNormal_x, generatedNormal_y, generatedNormal_z, WalshAffineVec3.eval, WalshAffine.eval, SignBit.value, SignBit.toPairId, signedCoeffAt, signedPositiveAt, generatedWord, firstWordImpactIndex, selectedWordImpactIndex, generatedWord_get_selected, pairPrefixLinearNat, countPairBeforeNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]
    <;> norm_num [generatedNormal, generatedNormal_x, generatedNormal_y, generatedNormal_z, WalshAffineVec3.eval, WalshAffine.eval, SignBit.value, SignBit.toPairId, signedCoeffAt, signedPositiveAt, generatedWord, firstWordImpactIndex, selectedWordImpactIndex, generatedWord_get_selected, pairPrefixLinearNat, countPairBeforeNat, canonicalNormalQ, scalarMul, matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

private theorem generatedVector_eq_translationVector (mask : SignMask) :
    generatedVector.eval mask =
      translationVectorOfChoice generatedWord mask :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedVector_eval_eq_translationVector
    mask

theorem generatedDenomDotCompact (mask : SignMask) :
    impactDenomAtRank generatedRank mask
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval mask)
        (generatedVector.eval mask) := by
  exact impactDenomAtRank_wordImpact_eq_walshDot
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank101105Smoke.generatedUnrank_builds
    (generatedNormal_eval_eq_compact mask)
    (generatedVector_eq_translationVector mask)

theorem generatedDenomDotCompact_mask6 :
    impactDenomAtRank generatedRank generatedMask6
        (wordImpact firstWordImpactIndex) =
      Cuboctahedron.dot (generatedNormal.eval generatedMask6)
        (generatedVector.eval generatedMask6) :=
  generatedDenomDotCompact generatedMask6

theorem generatedDotPositive_of_goodDirection
    {mask : SignMask} (hgood : GoodDirectionAtRank generatedRank mask) :
    0 < Cuboctahedron.dot (generatedNormal.eval mask)
      (generatedVector.eval mask) :=
  walshDot_pos_of_goodDirection
    (generatedDenomDotCompact mask)
    hgood

theorem generatedDotPositive_mask6_of_goodDirection
    (hgood : GoodDirectionAtRank generatedRank generatedMask6) :
    0 < Cuboctahedron.dot (generatedNormal.eval generatedMask6)
      (generatedVector.eval generatedMask6) :=
  generatedDotPositive_of_goodDirection hgood

theorem compactDenomGeneratedSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank101105Impact01Smoke
