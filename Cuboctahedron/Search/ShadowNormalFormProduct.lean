import Cuboctahedron.Search.ShadowNormalFormCounts
import Cuboctahedron.Search.ShadowNormalFormLinear
import Cuboctahedron.Search.ShadowNormalFormScaled

/-!
Square/triangular product decomposition for the shadow normal form.

The scanner records square reflections as a parity state and triangular
reflections as parity-conjugated triangular letters.  This module proves that
the exact pair-word linear product is the product of the triangular shadow and
the final square-parity matrix.
-/

namespace Cuboctahedron

def sqSignRat (b : Bool) : Rat :=
  if b then -1 else 1

def sqParityLinear (p : SqParity) : Mat3 Rat where
  m00 := sqSignRat p.x
  m01 := 0
  m02 := 0
  m10 := 0
  m11 := sqSignRat p.y
  m12 := 0
  m20 := 0
  m21 := 0
  m22 := sqSignRat p.z

theorem sqParityLinear_id :
    sqParityLinear SqParity.id = (matId : Mat3 Rat) := by
  rfl

theorem sqParityLinear_mul_x (p : SqParity) :
    matMul (sqParityLinear p) (reflM (canonicalNormalQ PairId.x)) =
      sqParityLinear (p.applyPair PairId.x) := by
  cases p with
  | mk px py pz =>
      cases px <;> cases py <;> cases pz <;>
        apply Mat3.ext <;>
        norm_num [sqParityLinear, sqSignRat, SqParity.applyPair,
          SqParity.toggleForPair, SqParity.xor, SqParity.toggleX,
          canonicalNormalQ, reflM, matSub, scalarMat, outer, matId, dot,
          matMul]

theorem sqParityLinear_mul_y (p : SqParity) :
    matMul (sqParityLinear p) (reflM (canonicalNormalQ PairId.y)) =
      sqParityLinear (p.applyPair PairId.y) := by
  cases p with
  | mk px py pz =>
      cases px <;> cases py <;> cases pz <;>
        apply Mat3.ext <;>
        norm_num [sqParityLinear, sqSignRat, SqParity.applyPair,
          SqParity.toggleForPair, SqParity.xor, SqParity.toggleY,
          canonicalNormalQ, reflM, matSub, scalarMat, outer, matId, dot,
          matMul]

theorem sqParityLinear_mul_z (p : SqParity) :
    matMul (sqParityLinear p) (reflM (canonicalNormalQ PairId.z)) =
      sqParityLinear (p.applyPair PairId.z) := by
  cases p with
  | mk px py pz =>
      cases px <;> cases py <;> cases pz <;>
        apply Mat3.ext <;>
        norm_num [sqParityLinear, sqSignRat, SqParity.applyPair,
          SqParity.toggleForPair, SqParity.xor, SqParity.toggleZ,
          canonicalNormalQ, reflM, matSub, scalarMat, outer, matId, dot,
          matMul]

set_option maxHeartbeats 1000000 in
theorem sqParityLinear_mul_triLinear (p : SqParity) (t : TriLetter) :
    matMul (sqParityLinear p) (triLinear t) =
      matMul (triLinear (t.act p)) (sqParityLinear p) := by
  cases p with
  | mk px py pz =>
      cases px <;> cases py <;> cases pz <;> cases t <;>
        apply Mat3.ext <;>
        norm_num [sqParityLinear, sqSignRat, triLinear, TriLetter.act,
          TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
          TriLetter.toPairId, canonicalNormalQ, reflM, matSub, scalarMat,
          outer, matId, dot, matMul]

def shadowStateLinearProduct (state : ShadowState) : Mat3 Rat :=
  matMul (triProduct state.shadow) (sqParityLinear state.parity)

theorem shadowStateLinearProduct_initial :
    shadowStateLinearProduct ShadowState.initial = (matId : Mat3 Rat) := by
  simp [shadowStateLinearProduct, ShadowState.initial, ShadowState.shadow,
    triProduct, sqParityLinear_id, matId_matMul]

theorem shadowStateLinearProduct_scanPair
    (state : ShadowState) (pair : PairId) :
    matMul (shadowStateLinearProduct state) (reflM (canonicalNormalQ pair)) =
      shadowStateLinearProduct (state.scanPair pair) := by
  cases state with
  | mk parity shadowRev reducedRev =>
      cases pair
      · simp [shadowStateLinearProduct, ShadowState.scanPair,
          TriLetter.ofPairId?, ShadowState.shadow]
        rw [matMul_assoc_rat, sqParityLinear_mul_x]
      · simp [shadowStateLinearProduct, ShadowState.scanPair,
          TriLetter.ofPairId?, ShadowState.shadow]
        rw [matMul_assoc_rat, sqParityLinear_mul_y]
      · simp [shadowStateLinearProduct, ShadowState.scanPair,
          TriLetter.ofPairId?, ShadowState.shadow]
        rw [matMul_assoc_rat, sqParityLinear_mul_z]
      · simp [shadowStateLinearProduct, ShadowState.scanPair,
          TriLetter.ofPairId?, ShadowState.shadow, List.reverse_cons,
          triProduct_append, triProduct_singleton]
        rw [matMul_assoc_rat]
        change
          matMul (triProduct shadowRev.reverse)
              (matMul (sqParityLinear parity) (triLinear TriLetter.d111)) =
            matMul (matMul (triProduct shadowRev.reverse)
              (triLinear (TriLetter.act parity TriLetter.d111)))
              (sqParityLinear parity)
        rw [sqParityLinear_mul_triLinear]
        rw [← matMul_assoc_rat]
      · simp [shadowStateLinearProduct, ShadowState.scanPair,
          TriLetter.ofPairId?, ShadowState.shadow, List.reverse_cons,
          triProduct_append, triProduct_singleton]
        rw [matMul_assoc_rat]
        change
          matMul (triProduct shadowRev.reverse)
              (matMul (sqParityLinear parity) (triLinear TriLetter.d11m)) =
            matMul (matMul (triProduct shadowRev.reverse)
              (triLinear (TriLetter.act parity TriLetter.d11m)))
              (sqParityLinear parity)
        rw [sqParityLinear_mul_triLinear]
        rw [← matMul_assoc_rat]
      · simp [shadowStateLinearProduct, ShadowState.scanPair,
          TriLetter.ofPairId?, ShadowState.shadow, List.reverse_cons,
          triProduct_append, triProduct_singleton]
        rw [matMul_assoc_rat]
        change
          matMul (triProduct shadowRev.reverse)
              (matMul (sqParityLinear parity) (triLinear TriLetter.d1m1)) =
            matMul (matMul (triProduct shadowRev.reverse)
              (triLinear (TriLetter.act parity TriLetter.d1m1)))
              (sqParityLinear parity)
        rw [sqParityLinear_mul_triLinear]
        rw [← matMul_assoc_rat]
      · simp [shadowStateLinearProduct, ShadowState.scanPair,
          TriLetter.ofPairId?, ShadowState.shadow, List.reverse_cons,
          triProduct_append, triProduct_singleton]
        rw [matMul_assoc_rat]
        change
          matMul (triProduct shadowRev.reverse)
              (matMul (sqParityLinear parity) (triLinear TriLetter.dm11)) =
            matMul (matMul (triProduct shadowRev.reverse)
              (triLinear (TriLetter.act parity TriLetter.dm11)))
              (sqParityLinear parity)
        rw [sqParityLinear_mul_triLinear]
        rw [← matMul_assoc_rat]

def pairLinearPrefixProduct (pairs : List PairId) : Mat3 Rat :=
  pairs.foldl
    (fun A pair => matMul A (reflM (canonicalNormalQ pair)))
    (matId : Mat3 Rat)

theorem foldl_pairLinearPrefixProduct_from_state
    (pairs : List PairId) (state : ShadowState) (A : Mat3 Rat)
    (h : A = shadowStateLinearProduct state) :
    pairs.foldl
        (fun A pair => matMul A (reflM (canonicalNormalQ pair))) A =
      shadowStateLinearProduct (pairs.foldl ShadowState.scanPair state) := by
  induction pairs generalizing state A with
  | nil =>
      exact h
  | cons pair rest ih =>
      rw [List.foldl_cons]
      apply ih
      rw [h]
      exact shadowStateLinearProduct_scanPair state pair

theorem pairLinearPrefixProduct_eq_shadowStateLinearProduct
    (pairs : List PairId) :
    pairLinearPrefixProduct pairs =
      shadowStateLinearProduct (shadowStateOfPairList pairs) := by
  unfold pairLinearPrefixProduct shadowStateOfPairList
  exact foldl_pairLinearPrefixProduct_from_state pairs ShadowState.initial
    (matId : Mat3 Rat) shadowStateLinearProduct_initial.symm

theorem foldl_pairLinearPrefixProduct_eq_matMul_productFactors
    (pairs : List PairId) (A : Mat3 Rat) :
    pairs.foldl
        (fun A pair => matMul A (reflM (canonicalNormalQ pair))) A =
      matMul A (pairLinearProductFactors pairs) := by
  induction pairs generalizing A with
  | nil =>
      simp [pairLinearProductFactors, matMul_matId]
  | cons pair rest ih =>
      rw [List.foldl_cons, ih]
      simp [pairLinearProductFactors, matMul_assoc_rat]

theorem pairLinearPrefixProduct_eq_pairLinearProductFactors
    (pairs : List PairId) :
    pairLinearPrefixProduct pairs = pairLinearProductFactors pairs := by
  unfold pairLinearPrefixProduct
  rw [foldl_pairLinearPrefixProduct_eq_matMul_productFactors]
  simp [matId_matMul]

theorem pairLinearProductFactors_eq_shadowStateLinearProduct
    (pairs : List PairId) :
    pairLinearProductFactors pairs =
      shadowStateLinearProduct (shadowStateOfPairList pairs) := by
  rw [← pairLinearPrefixProduct_eq_pairLinearProductFactors,
    pairLinearPrefixProduct_eq_shadowStateLinearProduct]

theorem totalLinearOfPairWord_eq_shadowStateLinearProduct
    (w : PairWord) :
    totalLinearOfPairWord w =
      shadowStateLinearProduct (shadowStateOfPairList (startedPairFactors w)) := by
  rw [totalLinearOfPairWord_eq_pairLinearProductFactors,
    pairLinearProductFactors_eq_shadowStateLinearProduct]

end Cuboctahedron
