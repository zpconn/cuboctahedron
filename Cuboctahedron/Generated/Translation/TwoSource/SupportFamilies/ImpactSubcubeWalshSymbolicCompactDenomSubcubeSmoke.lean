import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomSmoke

/-!
AP16CZ compact-denominator subcube obstruction smoke.

This module instantiates one nonpoint Boolean subcube obstruction using the
rank-wide compact denominator equality from AP16CY.  Unlike the older bounded
Walsh-cover smoke, the denominator-to-dot equality is not replayed by
`fin_cases mask`; the imported compact consumer supplies it for an arbitrary
mask.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomSubcubeSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

private abbrev compactRank : Fin numPairWords :=
  ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedRank

private abbrev compactNormal : WalshAffineVec3 :=
  ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedNormal

private abbrev compactVector : WalshAffineVec3 :=
  ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedVector

private abbrev compactWordImpactIndex : WordIndex :=
  ImpactSubcubeWalshSymbolicCompactDenomSmoke.firstWordImpactIndex

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some false
    | SignBit.d11m => some false
    | _ => none

private theorem generatedCube_z
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 32/9
  d111 := 104/27
  d11m := 8/9
  d1m1 := 40/27
  dm11 := (-8/3)
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
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
  z := (-32/9)
  d111 := (-104/27)
  d11m := (-8/9)
  d1m1 := 40/27
  dm11 := 8/3
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
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

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot compactNormal compactVector = generatedPoly := by
  simp [
    compactNormal, compactVector, generatedPoly,
    ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedNormal,
    ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedNormal_x,
    ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedNormal_y,
    ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedNormal_z,
    ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  norm_num

private def generatedUpper :
    WalshQuadraticSubcubeUpperBound generatedCube generatedPoly where
  bound := generatedBound
  c_le := by
    intro mask hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId]
  y_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y]
  z_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
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
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
  yz_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
  y_d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
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
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>
      by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [generatedBound, WalshQuadratic.boundSum]

private theorem compactRank_eq (hlt : 100805 < numPairWords) :
    (⟨100805, hlt⟩ : Fin numPairWords) = compactRank := by
  ext
  rfl

private def generatedObstruction :
    WalshSymbolicQuadraticImpactObstruction 100805 generatedCube.Member where
  impact := wordImpact compactWordImpactIndex
  not_zero := by
    simp [compactWordImpactIndex, ImpactSubcubeWalshSymbolicCompactDenomSmoke.firstWordImpactIndex,
      ImpactSubcubeWalshSymbolicCompactDenomSmoke.selectedWordImpactIndex,
      wordImpact, afterStart]
  not_last := by
    intro h
    have hv := congrArg Fin.val h
    simp [compactWordImpactIndex, ImpactSubcubeWalshSymbolicCompactDenomSmoke.firstWordImpactIndex,
      ImpactSubcubeWalshSymbolicCompactDenomSmoke.selectedWordImpactIndex,
      wordImpact, afterStart, lastImpact] at hv
  cube := generatedCube
  member_cube := by
    intro mask hmember
    exact hmember
  normal := compactNormal
  vector := compactVector
  poly := generatedPoly
  dot_coefficients := generatedDotCoefficients
  upper := generatedUpper
  denom_dot_eq := by
    intro mask hlt hmember
    rw [compactRank_eq hlt]
    exact ImpactSubcubeWalshSymbolicCompactDenomSmoke.generatedDenomDotCompact mask

theorem generatedCube_notGood
    {mask : SignMask} (hlt : 100805 < numPairWords)
    (hmember : generatedCube.Member mask) :
    ¬ GoodDirectionAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask :=
  generatedObstruction.toWalshQuadraticImpactObstruction
    |>.toImpactSubcubeObstruction
    |>.notGood hlt hmember

theorem compactDenomSubcubeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomSubcubeSmoke
