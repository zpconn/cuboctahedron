import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic

/-!
Generated split compact-Walsh subcube obstruction.

Rank `659`, subcube `0`.  This file contains the heavy
Walsh coefficient arithmetic for one selected bad-mask subcube.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank659Subcube000Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

def generatedCube : MaskSubcube where
  fixed
    | SignBit.d11m => some false
    | SignBit.d1m1 => some false
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

def generatedSubcubeMember (mask : SignMask) : Prop :=
  generatedCube.Member mask

private def generatedPoly : WalshQuadratic where
  c := 4
  y := 0
  z := 0
  d111 := 8/9
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

private theorem generatedPoly_nonpos
    {mask : SignMask} (hmask : generatedSubcubeMember mask) :
    generatedPoly.coeffEval mask <= 0 := by
  have h_d11m := generatedCube_d11m hmask
  have h_d1m1 := generatedCube_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11 <;>
    norm_num [WalshQuadratic.coeffEval, generatedPoly, SignBit.value, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

private theorem generatedDotCoefficients :
    WalshAffineVec3.dot Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedNormal Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedVector = generatedPoly := by
  simp [
    generatedPoly,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedNormal,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedNormal_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedNormal_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedNormal_z,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank659SplitSmoke.generatedVector,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank659SplitSmoke.generatedVector_x,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank659SplitSmoke.generatedVector_y,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank659SplitSmoke.generatedVector_z,
    WalshAffineVec3.dot, WalshQuadratic.add, WalshAffine.mul
  ]
  try norm_num

private theorem generatedRank_eq (hlt :
    659 < numPairWords) :
    (⟨659, hlt⟩ : Fin numPairWords) = Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedRank := by
  ext
  rfl

def generatedImpact : Impact15 :=
  wordImpact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.firstWordImpactIndex

theorem generatedImpact_not_zero :
    generatedImpact ≠ (0 : Impact15) := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.selectedWordImpactIndex, wordImpact, afterStart] at hv

theorem generatedImpact_not_last :
    generatedImpact ≠ lastImpact := by
  intro hv
  simp [generatedImpact, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.firstWordImpactIndex,
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.selectedWordImpactIndex, wordImpact, afterStart, lastImpact] at hv

theorem generatedNonpos
    {mask : SignMask} (hlt :
      659 < numPairWords)
    (hmember : generatedSubcubeMember mask) :
    impactDenomAtRank
      (⟨659, hlt⟩ : Fin numPairWords) mask generatedImpact <= 0 := by
  rw [generatedRank_eq hlt]
  rw [generatedImpact]
  rw [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedDenomDotCompact mask]
  have hdot := WalshAffineVec3.dot_coeffEval Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedNormal
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank659Impact00Smoke.generatedVector mask
  rw [generatedDotCoefficients] at hdot
  rw [← hdot]
  exact generatedPoly_nonpos hmember

theorem splitSubcubeSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank659Subcube000Smoke
