import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic

/-!
Generated split compact-Walsh subcube obstruction.

Rank `840`, subcube `12`.  This file contains the heavy
Walsh coefficient arithmetic for one selected bad-mask subcube.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke

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

def generatedSubcubeMember (mask : SignMask) : Prop :=
  generatedCube.Member mask

private def generatedPoly : WalshQuadratic where
  c := 8
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := -4
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 4
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 4
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 40/9
  d11m_d1m1 := 0
  d11m_dm11 := (-8/3)
  d1m1_dm11 := (-8/3)

private theorem generatedPoly_nonpos
    {mask : SignMask} (hmask : generatedSubcubeMember mask) :
    generatedPoly.coeffEval mask <= 0 := by
  have h_y := generatedCube_y hmask
  have h_d111 := generatedCube_d111 hmask
  have h_d1m1 := generatedCube_d1m1 hmask
  have h_dm11 := generatedCube_dm11 hmask
  by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    norm_num [WalshQuadratic.coeffEval, generatedPoly, SignBit.value, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11NormalXSmoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11NormalYSmoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11NormalZSmoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank840SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank840SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank840SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank840SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    840 < numPairWords) :
    (⟨840, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedRank := by
  ext
  rfl

def generatedImpact : Impact15 :=
  wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.firstWordImpactIndex

theorem generatedImpact_not_zero :
    generatedImpact ≠ (0 : Impact15) := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.selectedWordImpactIndex, wordImpact, afterStart] at hv

theorem generatedImpact_not_last :
    generatedImpact ≠ lastImpact := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.selectedWordImpactIndex, wordImpact, afterStart, lastImpact] at hv

theorem generatedNonpos
    {mask : SignMask} (hlt :
      840 < numPairWords)
    (hmember : generatedSubcubeMember mask) :
    impactDenomAtRank
      (⟨840, hlt⟩ : Fin numPairWords) mask generatedImpact <= 0 := by
  rw [generatedRank_eq hlt]
  rw [generatedImpact]
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedDenomDotCompact mask]
  have hdot := WalshAffineVec3.dot_coeffEval Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedNormal
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank840Impact11Smoke.generatedVector mask
  rw [generatedDotCoefficients] at hdot
  rw [← hdot]
  exact generatedPoly_nonpos hmember

theorem splitSubcubeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke
