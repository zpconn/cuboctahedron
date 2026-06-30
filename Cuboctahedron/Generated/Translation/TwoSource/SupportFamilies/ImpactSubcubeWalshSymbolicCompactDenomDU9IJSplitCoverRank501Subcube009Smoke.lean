import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic

/-!
Generated split compact-Walsh subcube obstruction.

Rank `501`, subcube `9`.  This file contains the heavy
Walsh coefficient arithmetic for one selected bad-mask subcube.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank501Subcube009Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d111 => some true
    | SignBit.d11m => some true
    | SignBit.d1m1 => some false
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

def generatedSubcubeMember (mask : SignMask) : Prop :=
  generatedCube.Member mask

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8/3
  y_d11m := 40/27
  y_d1m1 := (-8/3)
  y_dm11 := 8/9
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def generatedBound : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := (-8/3)
  y_d11m := (-40/27)
  y_d1m1 := (-8/3)
  y_dm11 := 8/9
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def generatedUpper :
    WalshQuadraticSubcubeUpperBound generatedCube generatedPoly where
  bound := generatedBound
  c_le := by
    intro mask hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId]
  y_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y]
  z_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
  d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
  d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
  d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
  yz_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
  y_d11m_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank501SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank501SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank501SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank501SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    501 < numPairWords) :
    (⟨501, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedRank := by
  ext
  rfl

def generatedImpact : Impact15 :=
  wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.firstWordImpactIndex

theorem generatedImpact_not_zero :
    generatedImpact ≠ (0 : Impact15) := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.selectedWordImpactIndex, wordImpact, afterStart] at hv

theorem generatedImpact_not_last :
    generatedImpact ≠ lastImpact := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.selectedWordImpactIndex, wordImpact, afterStart, lastImpact] at hv

private def generatedSymbolicObstruction :
    WalshSymbolicQuadraticImpactObstruction 501 generatedSubcubeMember where
  impact := generatedImpact
  not_zero := generatedImpact_not_zero
  not_last := generatedImpact_not_last
  cube := generatedCube
  member_cube := by
    intro mask hmember
    exact hmember
  normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedNormal
  vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedVector
  poly := generatedPoly
  dot_coefficients := generatedDotCoefficients
  upper := generatedUpper
  denom_dot_eq := by
    intro mask hlt hmember
    rw [generatedRank_eq hlt]
    exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank501Impact01Smoke.generatedDenomDotCompact mask

theorem generatedNonpos
    {mask : SignMask} (hlt :
      501 < numPairWords)
    (hmember : generatedSubcubeMember mask) :
    impactDenomAtRank
      (⟨501, hlt⟩ : Fin numPairWords) mask generatedImpact <= 0 := by
  exact
    (generatedSymbolicObstruction.toWalshQuadraticImpactObstruction
      |>.toImpactSubcubeObstruction).nonpos hlt hmember

theorem splitSubcubeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJSplitCoverRank501Subcube009Smoke
