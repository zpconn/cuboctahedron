import Cuboctahedron.Search.Enumeration
import Cuboctahedron.Search.NonIdentityCase

/-!
Started-face symmetries for pair-word enumeration.

`StartedSym` is the concrete order-eight symmetry group stabilizing the start
face `Face.xp`.  It acts by swapping and sign-changing the `y,z` coordinates,
and therefore transports pair-words and translation sign masks without changing
the started-at-`xp` normalization.
-/

namespace Cuboctahedron

theorem vector_ext_from_get {α : Type} {n : Nat} (a b : Vector α n)
    (h : forall i : Fin n, a.get i = b.get i) : a = b := by
  apply Vector.ext
  intro i hi
  exact h ⟨i, hi⟩

def maskBitForPair (mask : SignMask) : PairId -> Bool
  | PairId.x => false
  | PairId.y => decide (mask.val % 2 = 1)
  | PairId.z => decide ((mask.val / 2) % 2 = 1)
  | PairId.d111 => decide ((mask.val / 4) % 2 = 1)
  | PairId.d11m => decide ((mask.val / 8) % 2 = 1)
  | PairId.d1m1 => decide ((mask.val / 16) % 2 = 1)
  | PairId.dm11 => decide ((mask.val / 32) % 2 = 1)

def boolBitNat (b : Bool) : Nat :=
  if b then 1 else 0

def signMaskOfBits
    (y z d111 d11m d1m1 dm11 : Bool) : SignMask :=
  ⟨boolBitNat y + 2 * boolBitNat z + 4 * boolBitNat d111 +
      8 * boolBitNat d11m + 16 * boolBitNat d1m1 +
        32 * boolBitNat dm11,
    by
      cases y <;> cases z <;> cases d111 <;> cases d11m <;>
        cases d1m1 <;> cases dm11 <;> norm_num [boolBitNat, numSignMasks]⟩

@[simp] theorem maskBitForPair_signMaskOfBits_y
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.y = y := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_z
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.z = z := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_d111
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.d111 = d111 := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_d11m
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.d11m = d11m := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_d1m1
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.d1m1 = d1m1 := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

@[simp] theorem maskBitForPair_signMaskOfBits_dm11
    (y z d111 d11m d1m1 dm11 : Bool) :
    maskBitForPair (signMaskOfBits y z d111 d11m d1m1 dm11)
      PairId.dm11 = dm11 := by
  cases y <;> cases z <;> cases d111 <;> cases d11m <;>
    cases d1m1 <;> cases dm11 <;> decide

structure StartedSym where
  swapYZ : Bool
  negY : Bool
  negZ : Bool
deriving DecidableEq, Repr

abbrev D4 := StartedSym

def startedSymIdentity : StartedSym where
  swapYZ := false
  negY := false
  negZ := false

abbrev d4Identity : D4 := startedSymIdentity

def allStartedSyms : List StartedSym :=
  [{ swapYZ := false, negY := false, negZ := false },
   { swapYZ := false, negY := false, negZ := true },
   { swapYZ := false, negY := true, negZ := false },
   { swapYZ := false, negY := true, negZ := true },
   { swapYZ := true, negY := false, negZ := false },
   { swapYZ := true, negY := false, negZ := true },
   { swapYZ := true, negY := true, negZ := false },
   { swapYZ := true, negY := true, negZ := true }]

abbrev allD4 : List D4 := allStartedSyms

def allPairIds : List PairId :=
  [PairId.x, PairId.y, PairId.z, PairId.d111, PairId.d11m,
    PairId.d1m1, PairId.dm11]

def negIf (b : Bool) (q : Rat) : Rat :=
  if b then -q else q

def symVecQ (σ : StartedSym) (v : Vec3 Rat) : Vec3 Rat :=
  if σ.swapYZ then
    { x := v.x, y := negIf σ.negY v.z, z := negIf σ.negZ v.y }
  else
    { x := v.x, y := negIf σ.negY v.y, z := negIf σ.negZ v.z }

def faceOfNormalQ (n : Vec3 Rat) : Face :=
  if n = normalQ Face.xp then Face.xp
  else if n = normalQ Face.xm then Face.xm
  else if n = normalQ Face.yp then Face.yp
  else if n = normalQ Face.ym then Face.ym
  else if n = normalQ Face.zp then Face.zp
  else if n = normalQ Face.zm then Face.zm
  else if n = normalQ Face.tmmm then Face.tmmm
  else if n = normalQ Face.tmmp then Face.tmmp
  else if n = normalQ Face.tmpm then Face.tmpm
  else if n = normalQ Face.tmpp then Face.tmpp
  else if n = normalQ Face.tpmm then Face.tpmm
  else if n = normalQ Face.tpmp then Face.tpmp
  else if n = normalQ Face.tppm then Face.tppm
  else Face.tppp

def symFace (σ : StartedSym) (f : Face) : Face :=
  faceOfNormalQ (symVecQ σ (normalQ f))

def symPair (σ : StartedSym) (p : PairId) : PairId :=
  pairOfFace (symFace σ (faceOfPairSign p true))

def transformedMaskBit
    (σ : StartedSym) (mask : SignMask) (target : PairId) : Bool :=
  if symPair σ PairId.y = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.y
        (maskBitForPair mask PairId.y)))
  else if symPair σ PairId.z = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.z
        (maskBitForPair mask PairId.z)))
  else if symPair σ PairId.d111 = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.d111
        (maskBitForPair mask PairId.d111)))
  else if symPair σ PairId.d11m = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.d11m
        (maskBitForPair mask PairId.d11m)))
  else if symPair σ PairId.d1m1 = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.d1m1
        (maskBitForPair mask PairId.d1m1)))
  else if symPair σ PairId.dm11 = target then
    positiveSignOfFace
      (symFace σ (faceOfPairSign PairId.dm11
        (maskBitForPair mask PairId.dm11)))
  else
    false

def symPairWord (σ : StartedSym) (w : PairWord) : PairWord :=
  Vector.ofFn fun i : WordIndex => symPair σ (w.get i)

def symFaceVector (σ : StartedSym) (faces : Vector Face 14) : Vector Face 14 :=
  Vector.ofFn fun i : Step14 => symFace σ (faces.get i)

def symSeq (σ : StartedSym) (seq : Step14 -> Face) : Step14 -> Face :=
  fun i => symFace σ (seq i)

def firstSignForPairFromNat
    (w : PairWord) (seq : Step14 -> Face) (p : PairId) : Nat -> Nat -> Bool
  | _k, 0 => false
  | k, fuel + 1 =>
      if h : k < 13 then
        let i : WordIndex := ⟨k, h⟩
        if w.get i = p then
          positiveSignOfFace (seq (afterStart i))
        else
          firstSignForPairFromNat w seq p (k + 1) fuel
      else
        false

def firstSignForPairComputable
    (w : PairWord) (seq : Step14 -> Face) (p : PairId) : Bool :=
  firstSignForPairFromNat w seq p 0 13

def translationMaskOfSeqComputable
    (w : PairWord) (seq : Step14 -> Face) : SignMask :=
  signMaskOfBits
    (firstSignForPairComputable w seq PairId.y)
    (firstSignForPairComputable w seq PairId.z)
    (firstSignForPairComputable w seq PairId.d111)
    (firstSignForPairComputable w seq PairId.d11m)
    (firstSignForPairComputable w seq PairId.d1m1)
    (firstSignForPairComputable w seq PairId.dm11)

def symTranslationMask
    (σ : StartedSym) (_w : PairWord) (mask : SignMask) : SignMask :=
  signMaskOfBits
    (transformedMaskBit σ mask PairId.y)
    (transformedMaskBit σ mask PairId.z)
    (transformedMaskBit σ mask PairId.d111)
    (transformedMaskBit σ mask PairId.d11m)
    (transformedMaskBit σ mask PairId.d1m1)
    (transformedMaskBit σ mask PairId.dm11)

noncomputable def checkSymPairWordValid
    (σ : StartedSym) (w : PairWord) : Bool := by
  classical
  exact decide (ValidPairWord w -> ValidPairWord (symPairWord σ w))

theorem symPairWord_valid
    (σ : StartedSym) (w : PairWord)
    (hcheck : checkSymPairWordValid σ w = true)
    (hvalid : ValidPairWord w) :
    ValidPairWord (symPairWord σ w) := by
  classical
  have hdec :
      decide (ValidPairWord w -> ValidPairWord (symPairWord σ w)) = true := by
    simpa [checkSymPairWordValid] using hcheck
  have h : ValidPairWord w -> ValidPairWord (symPairWord σ w) :=
    of_decide_eq_true hdec
  exact h hvalid

theorem symFace_xp (σ : StartedSym) :
    symFace σ Face.xp = Face.xp := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;>
    simp [symFace, symVecQ, faceOfNormalQ, negIf, normalQ]

theorem d4_preserves_xp (σ : D4) :
    symFace σ Face.xp = Face.xp :=
  symFace_xp σ

theorem symPair_x (σ : StartedSym) :
    symPair σ PairId.x = PairId.x := by
  change pairOfFace (symFace σ Face.xp) = PairId.x
  rw [symFace_xp]
  rfl

def startedSymActionKey (σ : StartedSym) : List PairId :=
  allPairIds.map (symPair σ)

def startedSymComposeKey (σ τ : StartedSym) : List PairId :=
  allPairIds.map fun p => symPair σ (symPair τ p)

def startedSymWithActionKey? (key : List PairId) : Option StartedSym :=
  allStartedSyms.find? fun σ => startedSymActionKey σ = key

def startedSymCompose? (σ τ : StartedSym) : Option StartedSym :=
  startedSymWithActionKey? (startedSymComposeKey σ τ)

def startedSymHasInverse (σ : StartedSym) : Bool :=
  allStartedSyms.any fun τ =>
    startedSymCompose? σ τ = some startedSymIdentity &&
      startedSymCompose? τ σ = some startedSymIdentity

def checkStartedSymGroup : Bool :=
  decide (allStartedSyms.length = 8) &&
    decide (allStartedSyms.Nodup) &&
      allStartedSyms.all (fun σ =>
        decide (symFace σ Face.xp = Face.xp) &&
          decide (symPair σ PairId.x = PairId.x) &&
            startedSymHasInverse σ) &&
        allStartedSyms.all (fun σ =>
          allStartedSyms.all fun τ =>
            (startedSymCompose? σ τ).isSome)

structure StartedSymGroupChecked : Prop where
  checked : checkStartedSymGroup = true

theorem checkStartedSymGroup_sound
    (hcheck : checkStartedSymGroup = true) :
    StartedSymGroupChecked where
  checked := hcheck

theorem checkStartedSymGroup_true :
    checkStartedSymGroup = true := by
  decide

theorem allStartedSyms_complete (σ : StartedSym) :
    σ ∈ allStartedSyms := by
  rcases σ with ⟨swapYZ, negY, negZ⟩
  cases swapYZ <;> cases negY <;> cases negZ <;>
    simp [allStartedSyms]

def pairIdCode : PairId -> Nat
  | PairId.x => 0
  | PairId.y => 1
  | PairId.z => 2
  | PairId.d111 => 3
  | PairId.d11m => 4
  | PairId.d1m1 => 5
  | PairId.dm11 => 6

def pairWordCodeAt (w : PairWord) (n : Nat) : Nat :=
  if h : n < 13 then pairIdCode (w.get ⟨n, h⟩) else 0

def lexNatListLe : List Nat -> List Nat -> Bool
  | [], [] => true
  | [], _ :: _ => true
  | _ :: _, [] => false
  | x :: xs, y :: ys =>
      if x < y then true else if y < x then false else lexNatListLe xs ys

def pairWordCodeList (w : PairWord) : List Nat :=
  (List.range 13).map (pairWordCodeAt w)

def pairWordLexLe (w v : PairWord) : Bool :=
  lexNatListLe (pairWordCodeList w) (pairWordCodeList v)

def minPairWordLex (w v : PairWord) : PairWord :=
  if pairWordLexLe w v then w else v

def translationChoiceLexLe
    (a b : PairWord × SignMask) : Bool :=
  if pairWordLexLe a.1 b.1 then
    if pairWordLexLe b.1 a.1 then
      decide (a.2.val <= b.2.val)
    else
      true
  else
    false

def betterPairTransform (w : PairWord)
    (best candidate : StartedSym) : StartedSym :=
  if pairWordLexLe (symPairWord candidate w) (symPairWord best w) then
    candidate
  else
    best

def canonicalPairTransform (w : PairWord) : StartedSym :=
  allStartedSyms.foldl (betterPairTransform w) startedSymIdentity

def canonicalPairWord (w : PairWord) : PairWord :=
  symPairWord (canonicalPairTransform w) w

structure CanonicalPairWordResult where
  sym : StartedSym
  word : PairWord
deriving DecidableEq, Repr

def betterPairWordResult
    (best candidate : CanonicalPairWordResult) :
    CanonicalPairWordResult :=
  if pairWordLexLe candidate.word best.word then candidate else best

def canonicalPairWordWithTransform (w : PairWord) :
    CanonicalPairWordResult :=
  let σ := canonicalPairTransform w
  { sym := σ, word := symPairWord σ w }

def betterTranslationTransform
    (w : PairWord) (mask : SignMask)
    (best candidate : StartedSym) : StartedSym :=
  let bestChoice := (symPairWord best w, symTranslationMask best w mask)
  let candidateChoice :=
    (symPairWord candidate w, symTranslationMask candidate w mask)
  if translationChoiceLexLe candidateChoice bestChoice then
    candidate
  else
    best

def canonicalTranslationTransform
    (w : PairWord) (mask : SignMask) : StartedSym :=
  allStartedSyms.foldl (betterTranslationTransform w mask) startedSymIdentity

def canonicalTranslationChoice (w : PairWord) (mask : SignMask) :
    PairWord × SignMask :=
  let σ := canonicalTranslationTransform w mask
  (symPairWord σ w, symTranslationMask σ w mask)

structure CanonicalTranslationChoiceResult where
  sym : StartedSym
  word : PairWord
  mask : SignMask
deriving DecidableEq, Repr

def translationChoiceOfResult
    (result : CanonicalTranslationChoiceResult) : PairWord × SignMask :=
  (result.word, result.mask)

def betterTranslationChoiceResult
    (best candidate : CanonicalTranslationChoiceResult) :
    CanonicalTranslationChoiceResult :=
  if translationChoiceLexLe
      (translationChoiceOfResult candidate)
      (translationChoiceOfResult best) then
    candidate
  else
    best

def canonicalTranslationChoiceWithTransform
    (w : PairWord) (mask : SignMask) :
    CanonicalTranslationChoiceResult :=
  let σ := canonicalTranslationTransform w mask
  { sym := σ, word := symPairWord σ w,
    mask := symTranslationMask σ w mask }

noncomputable def checkSymLinearIdentityPreservation
    (σ : StartedSym) (w : PairWord) : Bool := by
  classical
  exact decide
    ((totalLinearOfPairWord (symPairWord σ w) = (matId : Mat3 Rat)) ↔
      totalLinearOfPairWord w = (matId : Mat3 Rat))

theorem sym_totalLinear_identity_iff
    (σ : StartedSym) (w : PairWord)
    (hcheck : checkSymLinearIdentityPreservation σ w = true) :
    totalLinearOfPairWord (symPairWord σ w) = (matId : Mat3 Rat) ↔
      totalLinearOfPairWord w = (matId : Mat3 Rat) := by
  classical
  simpa [checkSymLinearIdentityPreservation] using hcheck

end Cuboctahedron
