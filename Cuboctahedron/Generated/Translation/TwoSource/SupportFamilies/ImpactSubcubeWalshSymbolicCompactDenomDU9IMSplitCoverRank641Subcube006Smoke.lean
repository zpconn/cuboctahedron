import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic

/-!
Generated split compact-Walsh subcube obstruction.

Rank `641`, subcube `6`.  This file contains the heavy
Walsh coefficient arithmetic for one selected bad-mask subcube.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank641Subcube006Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

def generatedCube : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some true
    | SignBit.d11m => some false
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
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 40/9
  z_d11m := (-8/3)
  z_d1m1 := 8/9
  z_dm11 := 8/9
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem generatedPoly_nonpos
    {mask : SignMask} (hmask : generatedSubcubeMember mask) :
    generatedPoly.coeffEval mask <= 0 := by
  have h_z := generatedCube_z hmask
  have h_d111 := generatedCube_d111 hmask
  have h_d11m := generatedCube_d11m hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11 <;>
    norm_num [WalshQuadratic.coeffEval, generatedPoly, SignBit.value, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank641SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank641SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank641SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank641SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    641 < numPairWords) :
    (⟨641, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedRank := by
  ext
  rfl

def generatedImpact : Impact15 :=
  wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.firstWordImpactIndex

theorem generatedImpact_not_zero :
    generatedImpact ≠ (0 : Impact15) := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.selectedWordImpactIndex, wordImpact, afterStart] at hv

theorem generatedImpact_not_last :
    generatedImpact ≠ lastImpact := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.selectedWordImpactIndex, wordImpact, afterStart, lastImpact] at hv

theorem generatedNonpos
    {mask : SignMask} (hlt :
      641 < numPairWords)
    (hmember : generatedSubcubeMember mask) :
    impactDenomAtRank
      (⟨641, hlt⟩ : Fin numPairWords) mask generatedImpact <= 0 := by
  rw [generatedRank_eq hlt]
  rw [generatedImpact]
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedDenomDotCompact mask]
  have hdot := WalshAffineVec3.dot_coeffEval Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedNormal
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank641Impact03Smoke.generatedVector mask
  rw [generatedDotCoefficients] at hdot
  rw [← hdot]
  exact generatedPoly_nonpos hmember

theorem splitSubcubeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank641Subcube006Smoke
