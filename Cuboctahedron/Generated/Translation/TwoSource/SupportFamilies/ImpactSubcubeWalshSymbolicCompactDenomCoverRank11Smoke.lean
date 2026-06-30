import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11SelectedImpactsSmoke

/-!
Generated AP.16DC compact-denominator Walsh impact-subcube cover smoke.

This module covers all AP16BJ selected bad-mask subcubes for rank 11.
Its denominator bridge uses the AP16DB compact denominator consumers, not
bounded per-mask replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank11Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-- Public positive-survivor mask predicate for this generated rank fixture. -/
def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 9 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 28 \/
    mask.val = 30 \/
    mask.val = 54 \/
    mask.val = 61 \/
    mask.val = 63

namespace Subcube000

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.d11m => some false
    | SignBit.d1m1 => some false
    | _ => none

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

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 8/3
  d11m := 8/3
  d1m1 := 40/9
  dm11 := (-8/9)
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
  z := 0
  d111 := (-8/3)
  d11m := (-8/3)
  d1m1 := (-40/9)
  dm11 := 8/9
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
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_z : maskBitForPair mask PairId.z
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
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
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
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedRank := by
  ext
  rfl

end Subcube000

namespace Subcube001

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.d111 => some true
    | SignBit.d11m => some true
    | SignBit.d1m1 => some false
    | _ => none

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

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 20/3
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := (-4/3)
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 40/9
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 0
  d1m1_dm11 := (-8/3)

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := (-20/3)
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 4/3
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := (-40/9)
  d111_dm11 := 0
  d11m_d1m1 := (-8/3)
  d11m_dm11 := 0
  d1m1_dm11 := 8/3

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
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_z : maskBitForPair mask PairId.z
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
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
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
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedRank := by
  ext
  rfl

end Subcube001

namespace Subcube002

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.d1m1 => some false
    | SignBit.dm11 => some true
    | _ => none

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 8/3
  d11m := 8/3
  d1m1 := 40/9
  dm11 := (-8/9)
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
  z := 0
  d111 := (-8/3)
  d11m := 8/3
  d1m1 := (-40/9)
  dm11 := (-8/9)
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
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
  d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
  d11m_le := by
    intro mask hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
  d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
  yz_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
  y_d11m_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedRank := by
  ext
  rfl

end Subcube002

namespace Subcube003

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.d111 => some true
    | SignBit.d1m1 => some false
    | SignBit.dm11 => some false
    | _ => none

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 20/3
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := (-4/3)
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 40/9
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 0
  d1m1_dm11 := (-8/3)

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := (-20/3)
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 4/3
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 4/3
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := (-40/9)
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 0
  d1m1_dm11 := (-8/3)

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
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
  d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
  d11m_le := by
    intro mask hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
  d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
  yz_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
  y_d11m_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedRank := by
  ext
  rfl

end Subcube003

namespace Subcube004

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.d11m => some false
    | SignBit.d1m1 => some false
    | SignBit.dm11 => some true
    | _ => none

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 8/3
  d11m := 8/3
  d1m1 := 40/9
  dm11 := (-8/9)
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
  z := 0
  d111 := 8/3
  d11m := (-8/3)
  d1m1 := (-40/9)
  dm11 := (-8/9)
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
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
  d111_le := by
    intro mask hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
  yz_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    by_cases h_y : maskBitForPair mask PairId.y <;>
      by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
  y_d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_y : maskBitForPair mask PairId.y
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d111 : maskBitForPair mask PairId.d111
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
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedRank := by
  ext
  rfl

end Subcube004

namespace Subcube005

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d111 => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := (-4/3)
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 20/3
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 8/3
  d1m1_dm11 := (-8/3)

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := (-4/3)
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := (-20/3)
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := (-40/9)
  d11m_d1m1 := 0
  d11m_dm11 := 8/3
  d1m1_dm11 := (-8/3)

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
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
  d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
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
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedRank := by
  ext
  rfl

end Subcube005

namespace Subcube006

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.z => some false
    | SignBit.d11m => some false
    | SignBit.d1m1 => some true
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_z
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 8/3
  d1m1_dm11 := 0

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := -4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := -4
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := (-8/3)
  d11m_dm11 := 8/3
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
    have h_z := generatedCube_z hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
  d111_le := by
    intro mask hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
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
    have h_z := generatedCube_z hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
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
    have h_z := generatedCube_z hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    have h_d11m := generatedCube_d11m hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
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
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedRank := by
  ext
  rfl

end Subcube006

namespace Subcube007

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.z => some true
    | SignBit.d111 => some false
    | SignBit.d1m1 => some true
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_z
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.z = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 4
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 4
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := 40/9
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := -4
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := -4
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := -4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := (-40/9)
  d111_dm11 := 40/9
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
    have h_z := generatedCube_z hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z]
  d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
  d11m_le := by
    intro mask hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
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
    have h_z := generatedCube_z hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
  y_d11m_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
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
    have h_z := generatedCube_z hmask
    have h_d111 := generatedCube_d111 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_z := generatedCube_z hmask
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
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
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
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
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedRank := by
  ext
  rfl

end Subcube007

namespace Subcube008

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d111 => some false
    | SignBit.d11m => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem generatedCube_z
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.z = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 8/3
  z_d11m := (-8/3)
  z_d1m1 := 8/9
  z_dm11 := 8/9
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
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := (-8/3)
  z_d11m := (-8/3)
  z_d1m1 := 8/9
  z_dm11 := (-8/9)
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
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
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_y : maskBitForPair mask PairId.y
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedRank := by
  ext
  rfl

end Subcube008

namespace Subcube009

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d111 => some true
    | SignBit.d11m => some true
    | SignBit.dm11 => some true
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

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

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
  y_d11m := 8/3
  y_d1m1 := (-8/9)
  y_dm11 := 40/9
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
  y_d11m := (-8/3)
  y_d1m1 := 8/9
  y_dm11 := (-40/9)
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
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
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
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
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
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedRank := by
  ext
  rfl

end Subcube009

namespace Subcube010

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d111 => some true
    | SignBit.d11m => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = true := by
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

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := (-4/3)
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 20/3
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 8/3
  d1m1_dm11 := (-8/3)

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 4/3
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := (-20/3)
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4/3
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := (-40/9)
  d11m_d1m1 := 0
  d11m_dm11 := (-8/3)
  d1m1_dm11 := 8/3

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
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
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
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
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
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedRank := by
  ext
  rfl

end Subcube010

namespace Subcube011

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some true
    | SignBit.d11m => some false
    | SignBit.d1m1 => some true
    | _ => none

private theorem generatedCube_z
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 8/3
  z_d11m := (-8/3)
  z_d1m1 := 8/9
  z_dm11 := 8/9
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
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := (-8/3)
  z_d11m := (-8/3)
  z_d1m1 := (-8/9)
  z_dm11 := 8/9
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
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
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
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_y : maskBitForPair mask PairId.y
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
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
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
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedRank := by
  ext
  rfl

end Subcube011

namespace Subcube012

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d111 => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

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
  y_d11m := 8/3
  y_d1m1 := (-8/9)
  y_dm11 := 40/9
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
  y_d11m := 8/3
  y_d1m1 := (-8/9)
  y_dm11 := (-40/9)
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
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
  d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
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
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedRank := by
  ext
  rfl

end Subcube012

namespace Subcube013

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d111 => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 4
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 4
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := 40/9
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := -4
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := -4
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 4
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := (-40/9)
  d111_dm11 := (-40/9)
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
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m]
  d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1]
  dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
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
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d11m]
  y_d1m1_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d1m1]
  y_dm11_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d111]
  z_d11m_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d11m]
  z_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_d1m1]
  z_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_d111 := generatedCube_d111 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d11m : maskBitForPair mask PairId.d11m
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedRank := by
  ext
  rfl

end Subcube013

namespace Subcube014

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d11m => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

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
  y_d11m := 8/3
  y_d1m1 := (-8/9)
  y_dm11 := 40/9
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
  y_d111 := 8/3
  y_d11m := (-8/3)
  y_d1m1 := (-8/9)
  y_dm11 := (-40/9)
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
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111]
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
  yz_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_z]
  y_d111_le := by
    intro mask hmask
    have h_y := generatedCube_y hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_d111]
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
  z_d111_le := by
    intro mask hmask
    by_cases h_z : maskBitForPair mask PairId.z <;>
      by_cases h_d111 : maskBitForPair mask PairId.d111
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
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_z, h_dm11]
  d111_d11m_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d11m]
  d111_d1m1_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_d1m1]
  d111_dm11_le := by
    intro mask hmask
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_d111 : maskBitForPair mask PairId.d111
      <;> norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedRank := by
  ext
  rfl

end Subcube014

namespace Subcube015

private def generatedCube : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d111 => some true
    | SignBit.d11m => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

private theorem generatedCube_y
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem generatedCube_d111
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d111 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem generatedCube_d11m
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem generatedCube_d1m1
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem generatedCube_dm11
    {mask : SignMask} (hmask : generatedCube.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [generatedCube, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 4
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 8/3
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 8/3
  d11m_dm11 := 8/3
  d1m1_dm11 := 0

private def generatedBound : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := -4
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := -4
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 0
  z_d11m := 4
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := (-8/3)
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := (-8/3)
  d11m_dm11 := (-8/3)
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_dm11]
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_y, h_dm11]
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
    have h_dm11 := generatedCube_dm11 hmask
    by_cases h_z : maskBitForPair mask PairId.z
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
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d111, h_dm11]
  d11m_d1m1_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_d1m1]
  d11m_dm11_le := by
    intro mask hmask
    have h_d11m := generatedCube_d11m hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d11m, h_dm11]
  d1m1_dm11_le := by
    intro mask hmask
    have h_d1m1 := generatedCube_d1m1 hmask
    have h_dm11 := generatedCube_dm11 hmask
    norm_num [generatedPoly, generatedBound, SignBit.value, SignBit.toPairId, h_d1m1, h_dm11]
  total_nonpos := by
    norm_num [WalshQuadratic.boundSum, generatedBound]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank11SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    11 < numPairWords) :
    (⟨11, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedRank := by
  ext
  rfl

end Subcube015

private inductive GeneratedCompactSubcube
  | s000
  | s001
  | s002
  | s003
  | s004
  | s005
  | s006
  | s007
  | s008
  | s009
  | s010
  | s011
  | s012
  | s013
  | s014
  | s015
deriving DecidableEq, Repr

private def generatedSubcubeMember : GeneratedCompactSubcube -> SignMask -> Prop
  | .s000, mask =>
      Subcube000.generatedCube.Member mask -- subcube **000*
  | .s001, mask =>
      Subcube001.generatedCube.Member mask -- subcube **110*
  | .s002, mask =>
      Subcube002.generatedCube.Member mask -- subcube **0*01
  | .s003, mask =>
      Subcube003.generatedCube.Member mask -- subcube **1*00
  | .s004, mask =>
      Subcube004.generatedCube.Member mask -- subcube ***001
  | .s005, mask =>
      Subcube005.generatedCube.Member mask -- subcube 0*0*11
  | .s006, mask =>
      Subcube006.generatedCube.Member mask -- subcube 10*01*
  | .s007, mask =>
      Subcube007.generatedCube.Member mask -- subcube 110*1*
  | .s008, mask =>
      Subcube008.generatedCube.Member mask -- subcube *101*0
  | .s009, mask =>
      Subcube009.generatedCube.Member mask -- subcube 0*11*1
  | .s010, mask =>
      Subcube010.generatedCube.Member mask -- subcube 1*11*0
  | .s011, mask =>
      Subcube011.generatedCube.Member mask -- subcube *0101*
  | .s012, mask =>
      Subcube012.generatedCube.Member mask -- subcube 1*0*10
  | .s013, mask =>
      Subcube013.generatedCube.Member mask -- subcube 1*0*11
  | .s014, mask =>
      Subcube014.generatedCube.Member mask -- subcube 1**010
  | .s015, mask =>
      Subcube015.generatedCube.Member mask -- subcube 1*1011

private def generatedSymbolicObstruction :
    (cube : GeneratedCompactSubcube) ->
      WalshSymbolicQuadraticImpactObstruction 11
        (generatedSubcubeMember cube)
  | .s000 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube000.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector
      poly := Subcube000.generatedPoly
      dot_coefficients := Subcube000.generatedDotCoefficients
      upper := Subcube000.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube000.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedDenomDotCompact mask
    }
  | .s001 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube001.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedVector
      poly := Subcube001.generatedPoly
      dot_coefficients := Subcube001.generatedDotCoefficients
      upper := Subcube001.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube001.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedDenomDotCompact mask
    }
  | .s002 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube002.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector
      poly := Subcube002.generatedPoly
      dot_coefficients := Subcube002.generatedDotCoefficients
      upper := Subcube002.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube002.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedDenomDotCompact mask
    }
  | .s003 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube003.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedVector
      poly := Subcube003.generatedPoly
      dot_coefficients := Subcube003.generatedDotCoefficients
      upper := Subcube003.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube003.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact08Smoke.generatedDenomDotCompact mask
    }
  | .s004 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube004.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedVector
      poly := Subcube004.generatedPoly
      dot_coefficients := Subcube004.generatedDotCoefficients
      upper := Subcube004.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube004.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact00Smoke.generatedDenomDotCompact mask
    }
  | .s005 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube005.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedVector
      poly := Subcube005.generatedPoly
      dot_coefficients := Subcube005.generatedDotCoefficients
      upper := Subcube005.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube005.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedDenomDotCompact mask
    }
  | .s006 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube006.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedVector
      poly := Subcube006.generatedPoly
      dot_coefficients := Subcube006.generatedDotCoefficients
      upper := Subcube006.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube006.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedDenomDotCompact mask
    }
  | .s007 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube007.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedVector
      poly := Subcube007.generatedPoly
      dot_coefficients := Subcube007.generatedDotCoefficients
      upper := Subcube007.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube007.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedDenomDotCompact mask
    }
  | .s008 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube008.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedVector
      poly := Subcube008.generatedPoly
      dot_coefficients := Subcube008.generatedDotCoefficients
      upper := Subcube008.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube008.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedDenomDotCompact mask
    }
  | .s009 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube009.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector
      poly := Subcube009.generatedPoly
      dot_coefficients := Subcube009.generatedDotCoefficients
      upper := Subcube009.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube009.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedDenomDotCompact mask
    }
  | .s010 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube010.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedVector
      poly := Subcube010.generatedPoly
      dot_coefficients := Subcube010.generatedDotCoefficients
      upper := Subcube010.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube010.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact10Smoke.generatedDenomDotCompact mask
    }
  | .s011 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube011.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedVector
      poly := Subcube011.generatedPoly
      dot_coefficients := Subcube011.generatedDotCoefficients
      upper := Subcube011.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube011.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact03Smoke.generatedDenomDotCompact mask
    }
  | .s012 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube012.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector
      poly := Subcube012.generatedPoly
      dot_coefficients := Subcube012.generatedDotCoefficients
      upper := Subcube012.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube012.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedDenomDotCompact mask
    }
  | .s013 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube013.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedVector
      poly := Subcube013.generatedPoly
      dot_coefficients := Subcube013.generatedDotCoefficients
      upper := Subcube013.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube013.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact05Smoke.generatedDenomDotCompact mask
    }
  | .s014 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube014.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedVector
      poly := Subcube014.generatedPoly
      dot_coefficients := Subcube014.generatedDotCoefficients
      upper := Subcube014.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube014.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact01Smoke.generatedDenomDotCompact mask
    }
  | .s015 => {
      impact := wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.firstWordImpactIndex
      not_zero := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.selectedWordImpactIndex,
          wordImpact, afterStart] at hv
      not_last := by
        intro hv
        simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.firstWordImpactIndex, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.selectedWordImpactIndex,
          wordImpact, afterStart, lastImpact] at hv
      cube := Subcube015.generatedCube
      member_cube := by
        intro mask hmember
        exact hmember
      normal := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedNormal
      vector := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedVector
      poly := Subcube015.generatedPoly
      dot_coefficients := Subcube015.generatedDotCoefficients
      upper := Subcube015.generatedUpper
      denom_dot_eq := by
        intro mask hlt hmember
        rw [Subcube015.generatedRank_eq hlt]
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank11Impact07Smoke.generatedDenomDotCompact mask
    }

private theorem generatedSubcube_complete
    {mask : SignMask}
    (hnot : ¬ generatedGoodMaskMember mask) :
    exists cube : GeneratedCompactSubcube, generatedSubcubeMember cube mask := by
  fin_cases mask
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube003.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube003.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube003.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube003.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube008.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube008.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube006.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube007.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s011, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube011.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube006.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s014, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube014.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s012, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube012.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube008.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube007.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube010.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube010.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube000.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube004.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube004.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube004.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube004.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube002.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube002.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube002.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube002.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube001.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube005.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube006.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube005.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube007.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s011, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube011.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube006.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s015, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube015.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube005.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s013, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube013.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube005.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube007.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube009.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Subcube009.generatedCube,
        MaskSubcube.Member, SignBit.toPairId, maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))

private def generatedImpactSubcubeCover :
    ImpactSubcubeCover 11 generatedGoodMaskMember where
  Family := GeneratedCompactSubcube
  Member := generatedSubcubeMember
  obstruction := fun cube =>
    ((generatedSymbolicObstruction cube).toWalshQuadraticImpactObstruction).toImpactSubcubeObstruction
  complete := by
    intro mask hnot
    exact generatedSubcube_complete hnot

theorem generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    {mask : SignMask} (hlt : 11 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨11, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask :=
  generatedImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood

theorem compactWalshCoverSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank11Smoke
