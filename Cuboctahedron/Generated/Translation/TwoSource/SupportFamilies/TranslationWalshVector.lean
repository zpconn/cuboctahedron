import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Search.TranslationRecurrence

/-!
Walsh-affine translation vector recurrence.

This module mirrors `translationVectorOfChoice` with affine Walsh records in
the six translation sign bits.  The goal is to let generated leaves prove a
small coefficient equality against this recurrence instead of unfolding the
geometric affine product or branching over all masks.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

set_option linter.unusedSimpArgs false

def WalshAffine.zero : WalshAffine where
  c := 0
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def WalshAffine.const (q : Rat) : WalshAffine where
  c := q
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0

def WalshAffine.add (a b : WalshAffine) : WalshAffine where
  c := a.c + b.c
  y := a.y + b.y
  z := a.z + b.z
  d111 := a.d111 + b.d111
  d11m := a.d11m + b.d11m
  d1m1 := a.d1m1 + b.d1m1
  dm11 := a.dm11 + b.dm11

def WalshAffine.neg (a : WalshAffine) : WalshAffine where
  c := -a.c
  y := -a.y
  z := -a.z
  d111 := -a.d111
  d11m := -a.d11m
  d1m1 := -a.d1m1
  dm11 := -a.dm11

def WalshAffine.scale (q : Rat) (a : WalshAffine) : WalshAffine where
  c := q * a.c
  y := q * a.y
  z := q * a.z
  d111 := q * a.d111
  d11m := q * a.d11m
  d1m1 := q * a.d1m1
  dm11 := q * a.dm11

def WalshAffine.bit : PairId -> WalshAffine
  | PairId.y => { WalshAffine.zero with y := 1 }
  | PairId.z => { WalshAffine.zero with z := 1 }
  | PairId.d111 => { WalshAffine.zero with d111 := 1 }
  | PairId.d11m => { WalshAffine.zero with d11m := 1 }
  | PairId.d1m1 => { WalshAffine.zero with d1m1 := 1 }
  | PairId.dm11 => { WalshAffine.zero with dm11 := 1 }
  | PairId.x => WalshAffine.zero

theorem WalshAffine.zero_eval (mask : SignMask) :
    WalshAffine.zero.eval mask = 0 := by
  simp [WalshAffine.zero, WalshAffine.eval]

theorem WalshAffine.const_eval (q : Rat) (mask : SignMask) :
    (WalshAffine.const q).eval mask = q := by
  simp [WalshAffine.const, WalshAffine.eval]

theorem WalshAffine.add_eval (a b : WalshAffine) (mask : SignMask) :
    (WalshAffine.add a b).eval mask = a.eval mask + b.eval mask := by
  simp [WalshAffine.add, WalshAffine.eval]
  ring

theorem WalshAffine.neg_eval (a : WalshAffine) (mask : SignMask) :
    (WalshAffine.neg a).eval mask = -a.eval mask := by
  simp [WalshAffine.neg, WalshAffine.eval]
  ring

theorem WalshAffine.scale_eval (q : Rat) (a : WalshAffine) (mask : SignMask) :
    (WalshAffine.scale q a).eval mask = q * a.eval mask := by
  simp [WalshAffine.scale, WalshAffine.eval]
  ring

theorem WalshAffine.bit_eval
    (p : PairId) (hp : p ≠ PairId.x) (mask : SignMask) :
    (WalshAffine.bit p).eval mask =
      (if maskBitForPair mask p then (1 : Rat) else -1) := by
  cases p <;> simp [WalshAffine.bit, WalshAffine.zero, WalshAffine.eval,
    SignBit.value, SignBit.toPairId, maskBitForPair] at hp ⊢

private theorem negIfBitOne_eq_ifBitZero (n : Nat) :
    (if n % 2 = 1 then (-1 : Rat) else 1) =
      if n % 2 = 0 then 1 else -1 := by
  have hlt : n % 2 < 2 := Nat.mod_lt n (by norm_num)
  by_cases h1 : n % 2 = 1
  · have h0 : ¬ n % 2 = 0 := by omega
    simp [h1, h0]
  · have h0 : n % 2 = 0 := by omega
    simp [h1, h0]

def WalshAffineVec3.zero : WalshAffineVec3 where
  x := WalshAffine.zero
  y := WalshAffine.zero
  z := WalshAffine.zero

def WalshAffineVec3.const (v : Vec3 Rat) : WalshAffineVec3 where
  x := WalshAffine.const v.x
  y := WalshAffine.const v.y
  z := WalshAffine.const v.z

def WalshAffineVec3.add (a b : WalshAffineVec3) : WalshAffineVec3 where
  x := WalshAffine.add a.x b.x
  y := WalshAffine.add a.y b.y
  z := WalshAffine.add a.z b.z

def WalshAffineVec3.smulConst (a : WalshAffine) (v : Vec3 Rat) :
    WalshAffineVec3 where
  x := WalshAffine.scale v.x a
  y := WalshAffine.scale v.y a
  z := WalshAffine.scale v.z a

theorem WalshAffineVec3.zero_eval (mask : SignMask) :
    WalshAffineVec3.zero.eval mask = zeroVec3Q := by
  apply Vec3.ext <;>
    simp [WalshAffineVec3.zero, WalshAffineVec3.eval,
      WalshAffine.zero_eval, zeroVec3Q]

theorem WalshAffineVec3.const_eval (v : Vec3 Rat) (mask : SignMask) :
    (WalshAffineVec3.const v).eval mask = v := by
  apply Vec3.ext <;>
    simp [WalshAffineVec3.const, WalshAffineVec3.eval,
      WalshAffine.const_eval]

theorem WalshAffineVec3.add_eval
    (a b : WalshAffineVec3) (mask : SignMask) :
    (WalshAffineVec3.add a b).eval mask =
      vecAdd (a.eval mask) (b.eval mask) := by
  apply Vec3.ext <;>
    simp [WalshAffineVec3.add, WalshAffineVec3.eval,
      WalshAffine.add_eval, vecAdd]

theorem WalshAffineVec3.smulConst_eval
    (a : WalshAffine) (v : Vec3 Rat) (mask : SignMask) :
    (WalshAffineVec3.smulConst a v).eval mask =
      scalarMul (a.eval mask) v := by
  apply Vec3.ext <;>
    simp [WalshAffineVec3.smulConst, WalshAffineVec3.eval,
      WalshAffine.scale_eval, scalarMul] <;> ring

def signedCoeffWalshAt (w : PairWord) (i : WordIndex) : WalshAffine :=
  let p := w.get i
  match p with
  | PairId.x => WalshAffine.const (-1)
  | PairId.y =>
      if countPairBeforeNat w p i.val = 0 then
        WalshAffine.bit p
      else
        WalshAffine.neg (WalshAffine.bit p)
  | PairId.z =>
      if countPairBeforeNat w p i.val = 0 then
        WalshAffine.bit p
      else
        WalshAffine.neg (WalshAffine.bit p)
  | PairId.d111 =>
      if countPairBeforeNat w p i.val = 0 then
        WalshAffine.bit p
      else
        WalshAffine.neg (WalshAffine.bit p)
  | PairId.d11m =>
      if countPairBeforeNat w p i.val = 0 then
        WalshAffine.bit p
      else
        WalshAffine.neg (WalshAffine.bit p)
  | PairId.d1m1 =>
      if countPairBeforeNat w p i.val = 0 then
        WalshAffine.bit p
      else
        WalshAffine.neg (WalshAffine.bit p)
  | PairId.dm11 =>
      if countPairBeforeNat w p i.val = 0 then
        WalshAffine.bit p
      else
        WalshAffine.neg (WalshAffine.bit p)

theorem signedCoeffWalshAt_eval
    (w : PairWord) (mask : SignMask) (i : WordIndex) :
    (signedCoeffWalshAt w i).eval mask = signedCoeffAt w mask i := by
  unfold signedCoeffWalshAt signedCoeffAt signedPositiveAt
  cases hp : w.get i with
  | x =>
      simp [hp, WalshAffine.const_eval]
  | y =>
      by_cases hcount : countPairBeforeNat w PairId.y i.val = 0
      · simp [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, SignBit.value, SignBit.toPairId,
          maskBitForPair]
      · simpa [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, WalshAffine.neg, WalshAffine.neg_eval, SignBit.value,
          SignBit.toPairId, maskBitForPair] using
          negIfBitOne_eq_ifBitZero mask.val
  | z =>
      by_cases hcount : countPairBeforeNat w PairId.z i.val = 0
      · simp [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, SignBit.value, SignBit.toPairId,
          maskBitForPair]
      · simpa [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, WalshAffine.neg, WalshAffine.neg_eval, SignBit.value,
          SignBit.toPairId, maskBitForPair] using
          negIfBitOne_eq_ifBitZero (mask.val / 2)
  | d111 =>
      by_cases hcount : countPairBeforeNat w PairId.d111 i.val = 0
      · simp [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, SignBit.value, SignBit.toPairId,
          maskBitForPair]
      · simpa [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, WalshAffine.neg, WalshAffine.neg_eval, SignBit.value,
          SignBit.toPairId, maskBitForPair] using
          negIfBitOne_eq_ifBitZero (mask.val / 4)
  | d11m =>
      by_cases hcount : countPairBeforeNat w PairId.d11m i.val = 0
      · simp [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, SignBit.value, SignBit.toPairId,
          maskBitForPair]
      · simpa [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, WalshAffine.neg, WalshAffine.neg_eval, SignBit.value,
          SignBit.toPairId, maskBitForPair] using
          negIfBitOne_eq_ifBitZero (mask.val / 8)
  | d1m1 =>
      by_cases hcount : countPairBeforeNat w PairId.d1m1 i.val = 0
      · simp [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, SignBit.value, SignBit.toPairId,
          maskBitForPair]
      · simpa [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, WalshAffine.neg, WalshAffine.neg_eval, SignBit.value,
          SignBit.toPairId, maskBitForPair] using
          negIfBitOne_eq_ifBitZero (mask.val / 16)
  | dm11 =>
      by_cases hcount : countPairBeforeNat w PairId.dm11 i.val = 0
      · simp [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, SignBit.value, SignBit.toPairId,
          maskBitForPair]
      · simpa [hp, hcount, WalshAffine.bit, WalshAffine.zero,
          WalshAffine.eval, WalshAffine.neg, WalshAffine.neg_eval, SignBit.value,
          SignBit.toPairId, maskBitForPair] using
          negIfBitOne_eq_ifBitZero (mask.val / 32)

def translationPrefixWalshVectorNat
    (w : PairWord) : Nat -> WalshAffineVec3
  | 0 => WalshAffineVec3.zero
  | n + 1 =>
      if h : n < 13 then
        let i : WordIndex := ⟨n, h⟩
        let prefixM := pairPrefixLinearNat w n
        let pair := w.get i
        WalshAffineVec3.add (translationPrefixWalshVectorNat w n)
          (WalshAffineVec3.smulConst (signedCoeffWalshAt w i)
            (matVec prefixM (pairReflectionDeltaQ pair)))
      else
        translationPrefixWalshVectorNat w n

theorem translationPrefixWalshVectorNat_eval
    (w : PairWord) (mask : SignMask) :
    forall n : Nat, n <= 13 ->
      (translationPrefixWalshVectorNat w n).eval mask =
        translationPrefixVectorNat w mask n := by
  intro n
  induction n with
  | zero =>
      intro _hn
      simp [translationPrefixWalshVectorNat, translationPrefixVectorNat,
        WalshAffineVec3.zero_eval]
  | succ n ih =>
      intro hnSucc
      by_cases hn : n < 13
      · simp [translationPrefixWalshVectorNat, translationPrefixVectorNat, hn,
          WalshAffineVec3.add_eval, WalshAffineVec3.smulConst_eval,
          ih (by omega), signedCoeffWalshAt_eval]
      · have hfalse : False := by omega
        exact False.elim hfalse

def translationVectorWalshOfChoice (w : PairWord) : WalshAffineVec3 :=
  WalshAffineVec3.add (translationPrefixWalshVectorNat w 13)
    (WalshAffineVec3.const
      (matVec (pairPrefixLinearNat w 13) (pairReflectionDeltaQ PairId.x)))

theorem translationVectorWalshOfChoice_eval
    (w : PairWord) (mask : SignMask) :
    (translationVectorWalshOfChoice w).eval mask =
      translationVectorOfChoice w mask := by
  simp [translationVectorWalshOfChoice, translationVectorOfChoice,
    WalshAffineVec3.add_eval, WalshAffineVec3.const_eval,
    translationPrefixWalshVectorNat_eval]

def translationPrefixWalshStep
    (w : PairWord) (n : Nat) (hn : n < 13)
    (pref : WalshAffineVec3) : WalshAffineVec3 :=
  let i : WordIndex := ⟨n, hn⟩
  let prefixM := pairPrefixLinearNat w n
  let pair := w.get i
  WalshAffineVec3.add pref
    (WalshAffineVec3.smulConst (signedCoeffWalshAt w i)
      (matVec prefixM (pairReflectionDeltaQ pair)))

def translationPrefixWalshStepAt
    (w : PairWord) (i : WordIndex)
    (pref : WalshAffineVec3) : WalshAffineVec3 :=
  let prefixM := pairPrefixLinearNat w i.val
  let pair := w.get i
  WalshAffineVec3.add pref
    (WalshAffineVec3.smulConst (signedCoeffWalshAt w i)
      (matVec prefixM (pairReflectionDeltaQ pair)))

theorem translationPrefixWalshStep_eq_stepAt
    (w : PairWord) (n : Nat) (hn : n < 13)
    (pref : WalshAffineVec3) :
    translationPrefixWalshStep w n hn pref =
      translationPrefixWalshStepAt w ⟨n, hn⟩ pref := by
  rfl

theorem translationPrefixWalshVectorNat_succ
    (w : PairWord) (n : Nat) (hn : n < 13) :
    translationPrefixWalshVectorNat w (n + 1) =
      translationPrefixWalshStep w n hn
        (translationPrefixWalshVectorNat w n) := by
  simp [translationPrefixWalshVectorNat, translationPrefixWalshStep, hn]

/--
A proof-carrying trace for a generated Walsh translation vector.

Generated leaves should be able to provide normalized prefix vectors and prove
small local step equalities.  This structure packages those local facts; the
generic theorems below then connect the final generated vector to
`translationVectorWalshOfChoice` without unfolding the whole 13-step recurrence
at once.
-/
structure TranslationWalshVectorTrace
    (w : PairWord) (final : WalshAffineVec3) where
  pref : Nat -> WalshAffineVec3
  zero_eq : pref 0 = WalshAffineVec3.zero
  step_eq :
    forall i : WordIndex,
      pref (i.val + 1) = translationPrefixWalshStepAt w i (pref i.val)
  final_eq :
    final =
      WalshAffineVec3.add (pref 13)
        (WalshAffineVec3.const
          (matVec (pairPrefixLinearNat w 13) (pairReflectionDeltaQ PairId.x)))

theorem TranslationWalshVectorTrace.prefix_eq
    {w : PairWord} {final : WalshAffineVec3}
    (trace : TranslationWalshVectorTrace w final) :
    forall n : Nat, n <= 13 ->
      trace.pref n = translationPrefixWalshVectorNat w n := by
  intro n hn
  induction n with
  | zero =>
      simpa [translationPrefixWalshVectorNat] using trace.zero_eq
  | succ n ih =>
      have hnlt : n < 13 := by omega
      calc
        trace.pref (n + 1)
            = translationPrefixWalshStep w n hnlt (trace.pref n) :=
              by
                rw [translationPrefixWalshStep_eq_stepAt]
                exact trace.step_eq ⟨n, hnlt⟩
        _ = translationPrefixWalshStep w n hnlt
              (translationPrefixWalshVectorNat w n) := by
              rw [ih (by omega)]
        _ = translationPrefixWalshVectorNat w (n + 1) :=
              (translationPrefixWalshVectorNat_succ w n hnlt).symm

theorem TranslationWalshVectorTrace.final_eq_translationVectorWalsh
    {w : PairWord} {final : WalshAffineVec3}
    (trace : TranslationWalshVectorTrace w final) :
    final = translationVectorWalshOfChoice w := by
  rw [trace.final_eq, trace.prefix_eq 13 (by norm_num)]
  simp [translationVectorWalshOfChoice]

theorem translationWalshVector_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
