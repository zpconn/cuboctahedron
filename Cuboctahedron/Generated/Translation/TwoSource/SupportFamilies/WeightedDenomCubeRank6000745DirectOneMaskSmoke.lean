import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.DirectWalshDenominator

/-!
DU.9BD direct-Walsh one-mask denominator smoke.

This diagnostic checks the smallest piece needed after DU.9BC: prove one
rank-`6000745` denominator nonpositivity from the trace-free direct Walsh
bridge, without importing any rank-specific split trace module.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace WeightedDenomCubeRank6000745DirectOneMaskSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

def generatedRank : Fin numPairWords := ⟨6000745, by decide⟩

def generatedWord : PairWord :=
  ⟨#[PairId.x, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.d111,
      PairId.d111, PairId.dm11, PairId.d11m, PairId.d11m, PairId.y,
      PairId.z, PairId.y, PairId.z], by decide⟩

theorem generatedRankWord :
    rankPairWord? generatedWord = some generatedRank := by
  decide

theorem generatedUnrank :
    unrankPairWord generatedRank = generatedWord := by
  exact (rankPairWord?_eq_some_iff_unrank generatedWord generatedRank).1
    generatedRankWord |>.symm

@[simp] theorem generatedWord_getFin_00 :
    Vector.get generatedWord (0 : WordIndex) = PairId.x := by
  rfl

@[simp] theorem generatedWord_getFin_01 :
    Vector.get generatedWord (1 : WordIndex) = PairId.d1m1 := by
  rfl

@[simp] theorem generatedWord_getFin_02 :
    Vector.get generatedWord (2 : WordIndex) = PairId.d1m1 := by
  rfl

@[simp] theorem generatedWord_getFin_03 :
    Vector.get generatedWord (3 : WordIndex) = PairId.dm11 := by
  rfl

@[simp] theorem generatedWord_getFin_04 :
    Vector.get generatedWord (4 : WordIndex) = PairId.d111 := by
  rfl

@[simp] theorem generatedWord_getFin_05 :
    Vector.get generatedWord (5 : WordIndex) = PairId.d111 := by
  rfl

@[simp] theorem generatedWord_getFin_06 :
    Vector.get generatedWord (6 : WordIndex) = PairId.dm11 := by
  rfl

@[simp] theorem generatedWord_getFin_07 :
    Vector.get generatedWord (7 : WordIndex) = PairId.d11m := by
  rfl

@[simp] theorem generatedWord_getFin_08 :
    Vector.get generatedWord (8 : WordIndex) = PairId.d11m := by
  rfl

@[simp] theorem generatedWord_getFin_09 :
    Vector.get generatedWord (9 : WordIndex) = PairId.y := by
  rfl

@[simp] theorem generatedWord_getFin_10 :
    Vector.get generatedWord (10 : WordIndex) = PairId.z := by
  rfl

@[simp] theorem generatedWord_getFin_11 :
    Vector.get generatedWord (11 : WordIndex) = PairId.y := by
  rfl

@[simp] theorem generatedWord_getFin_12 :
    Vector.get generatedWord (12 : WordIndex) = PairId.z := by
  rfl

def generatedMask24 : SignMask := ⟨24, by decide⟩

def selectedWordImpactIndex : WordIndex := ⟨4, by decide⟩

theorem generatedDenom5_mask24_nonpos :
    impactDenomAtRank generatedRank generatedMask24
        (wordImpact selectedWordImpactIndex) <= 0 := by
  rw [impactDenomAtRank_wordImpact_eq_directWalshDot]
  rw [generatedUnrank]
  simp [generatedMask24, selectedWordImpactIndex,
    impactNormalWalshAt, translationVectorWalshOfChoice,
    translationPrefixWalshVectorNat, translationPrefixWalshStepAt,
    WalshAffineVec3.eval, WalshAffineVec3.zero, WalshAffineVec3.add, WalshAffineVec3.const,
    WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const,
    WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero,
    WalshAffine.eval, SignBit.value, SignBit.toPairId, maskBitForPair,
    signedCoeffWalshAt, countPairBeforeNat, pairPrefixLinearNat,
    pairReflectionDeltaQ, reflD, canonicalOffsetQ, canonicalNormalQ,
    matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot,
    scalarMul, Cuboctahedron.dot]
  norm_num

theorem directOneMaskSmoke_builds : True := by
  trivial

end WeightedDenomCubeRank6000745DirectOneMaskSmoke
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
